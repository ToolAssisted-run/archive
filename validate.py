#!/usr/bin/env python3
"""Archive validation — run in CI on every push/PR.

Structural rules plus anti-abuse limits:
- every JSON file matches its schema
- a run folder may contain ONLY: run.json, the declared movie file, notes.md,
  and declared attachments under attachments/ (no stray files)
- movie <= 100 MB (what a git host will hold; intake stops at 32 MB) ·
  notes <= 1 MB (the archivist intake enforces a stricter 256 KB on native
  submissions; the wider CI bound leaves room for large imported-run notes)
- attachments: <= 8 files, each <= 128 KB, <= 512 KB total, allowlisted
  text extensions only, valid UTF-8, and never matching the declared ROM hash
- community rosters: reproduction screenshots are real images (magic bytes
  checked) under reproductions/, console-verification ones under console/,
  <= 512 KB each / <= 8 MB per run; no author may reproduce, verify or
  console-verify their own run; one act per user per roster; console
  verification carries a public proof link; the stored status field must match
  what the rosters derive (status cannot lie)
- dispute cases: verifier snapshot is fixed at open time and every listed
  verifier must exist in the verifications roster; votes only from the
  snapshot, one per verifier; the stored case status must match what the
  votes derive (majority reaffirm -> closed; majority impossible or all
  voted without one -> upheld); an upheld case implies every snapshot
  verification is invalidated
"""
import hashlib
import json
import os
import pathlib
import sys

try:
    import jsonschema
except ImportError:
    jsonschema = None   # fatal below unless explicitly waived

ROOT = pathlib.Path(__file__).parent
ALLOWED_ATTACH_EXT = {'.txt', '.md', '.ini', '.cfg', '.conf', '.toml', '.json',
                      '.yaml', '.yml', '.xml', '.lua', '.sync', '.properties'}
MOVIE_ATTACH_EXT = {'.3ct', '.bk2', '.ctas', '.ctm', '.dft', '.dsm', '.dtm', '.fbm', '.fm2', '.fm3', '.gbmv', '.gmv', '.gzm', '.jrsr', '.lmp', '.lsmv', '.ltm', '.m64', '.mar', '.omr', '.p2m2', '.tas', '.tasproj', '.vbm', '.wtf'}
# What a git host will actually hold, not what we invite: intake stops at
# 32 MB (archivist and selfimport), so anything larger is here because a person
# decided it should be. GitHub refuses a file over 100 MB outright.
MOVIE_MAX = 100 * 1024 * 1024
NOTES_MAX = 1024 * 1024
ATTACH_MAX_EACH = 128 * 1024
ATTACH_MAX_TOTAL = 512 * 1024
SHOT_MAX_EACH = 512 * 1024
SHOT_MAX_TOTAL = 8 * 1024 * 1024
THUMB_MAX = 256 * 1024
IMAGE_MAGIC = {'.png': [b'\x89PNG\r\n\x1a\n'], '.jpg': [b'\xff\xd8\xff'],
               '.jpeg': [b'\xff\xd8\xff'], '.webp': [b'RIFF']}

errors = []
def err(msg): errors.append(msg)
report_ids = {}   # global registry: report id -> first run dir seen

def case_derived_status(case):
    """Deterministic case resolution from the verifier snapshot and votes."""
    n = len(case.get('verifiers', []))
    votes = {v['user'].lower(): v['reaffirm'] for v in case.get('reaffirmations', [])}
    yes = sum(1 for x in votes.values() if x)
    no = len(votes) - yes
    if yes * 2 > n:
        return 'closed'
    if len(votes) == n or no * 2 >= n:
        return 'upheld'
    return 'open'

schemas = {f.stem.split('.')[0]: json.loads(f.read_text())
           for f in (ROOT / 'schema').glob('*.schema.json')}

# A missing dependency must never turn every schema check into a silent pass:
# that would let malformed records through a green build.
if jsonschema is None and not os.environ.get('VALIDATE_WITHOUT_JSONSCHEMA'):
    sys.exit('validate.py: jsonschema is not installed, so schema checks would '
             'be skipped silently. Install it (pip install jsonschema), or set '
             'VALIDATE_WITHOUT_JSONSCHEMA=1 to accept structural checks only.')
if not schemas:
    sys.exit(f'validate.py: no schemas found in {ROOT / "schema"}')

def check_schema(kind, data, where):
    if jsonschema and kind in schemas:
        try:
            jsonschema.validate(data, schemas[kind])
        except jsonschema.ValidationError as e:
            err(f'{where}: schema violation: {e.message}')

# authors/ is the member list, not a directory of everyone the community has
# credited: a record means this person has an account here. People credited on
# a run without one stay text in that run's author list until they claim it.
members = set()
for f in (ROOT / 'authors').glob('*.json'):
    rec = json.loads(f.read_text())
    check_schema('author', rec, f)
    if not rec.get('claimed'):
        err(f'{f}: author records exist only for members (claimed identities); '
            f'a credited name with no account here is text in the run, not a record')
    # an attested identity is a judgement, so it must say whose and on what
    if rec.get('claimMethod') == 'attested':
        if not rec.get('attestedBy'):
            err(f'{f}: attested identity without the expert who attested it')
        if len((rec.get('attestation') or '').strip()) < 12:
            err(f'{f}: attested identity without a public method; the reason is what '
                f'makes an attestation accountable')
    # Two routes end with somebody vouching by name: a site-wide expert
    # attesting directly, and the Steering Committee answering a filed claim.
    if rec.get('attestedBy') and rec.get('claimMethod') not in ('attested', 'committee'):
        err(f'{f}: attestedBy is set but claimMethod is neither "attested" nor '
            f'"committee"')
    if rec.get('claimMethod') == 'committee' and not rec.get('attestedBy'):
        err(f'{f}: a committee-approved claim names nobody who approved it')
    members.add(rec.get('username', '').lower())

# A claim supersedes the name the person registered under: the record that
# name wrote at first login is deleted when the claim is approved. Whatever
# was recorded under the old name (credits, acts) still belongs to the member
# it became, so every check resolves names through this map.
alias = {}
for f in (ROOT / 'authors').glob('*.json'):
    rec = json.loads(f.read_text())
    by = (rec.get('claimedBy') or '').lower()
    if by and by != rec.get('username', '').lower():
        alias[by] = rec.get('username', '').lower()
for _old, _new in sorted(alias.items()):
    if _old in members:
        err(f'authors/: {_old!r} is both a member record and a name superseded by '
            f'{_new!r} — approving a claim deletes the record it replaces')

def canon(name):
    n = name.lower()
    return alias.get(n, n)

# claims.json: who asked for a held name and how it was answered. No email
# address may ever appear here; the archive is public and a request to be given
# your own name back is not a reason to publish where you can be reached.
if (ROOT / 'claims.json').exists():
    _c = json.loads((ROOT / 'claims.json').read_text())
    check_schema('claims', _c, ROOT / 'claims.json')
    _seen_open = set()
    for _r in _c.get('requests', []):
        if _r['status'] == 'open':
            if _r['identity'].lower() in _seen_open:
                err(f'claims.json: two open claims for {_r["identity"]!r}')
            _seen_open.add(_r['identity'].lower())
        elif not (_r.get('decidedBy') and _r.get('decidedAt')):
            err(f'claims.json: the {_r["status"]} claim for {_r["identity"]!r} names '
                f'nobody who answered it')
        if _r['status'] == 'denied' and not _r.get('note'):
            err(f'claims.json: the denied claim for {_r["identity"]!r} gives no reason')
        if '@' in json.dumps(_r):
            err(f'claims.json: the claim for {_r["identity"]!r} looks like it carries '
                f'an email address; addresses never go in the archive')

# edits.json: every expert modification of the record, field by field, with
# who and why. Git history carries the diffs; this log carries the account.
if (ROOT / 'edits.json').exists():
    check_schema('edits', json.loads((ROOT / 'edits.json').read_text()),
                 ROOT / 'edits.json')

# deletions.json: what was deleted outright, by whom, and why. The thing is
# gone, so this log is the only place the act remains readable; every entry
# says who and why, or the deletion happened to nobody's name.
if (ROOT / 'deletions.json').exists():
    _dl = json.loads((ROOT / 'deletions.json').read_text())
    check_schema('deletions', _dl, ROOT / 'deletions.json')
    # a game deletion deletes its runs with it (each run logged beside the
    # game); older entries carry movedTo from the retired holding-game era

# roles.json holds the events; who holds what is the fold, and nothing stores
# that separately, so the two can never disagree.
role_events = []
if (ROOT / 'roles.json').exists():
    _r = json.loads((ROOT / 'roles.json').read_text())
    check_schema('roles', _r, ROOT / 'roles.json')
    role_events = _r.get('events', [])

def check_removals(holder, where):
    """An expert asks for a removal and somebody wider answers. Only one
    question can be open at a time, and a removal exists only if a request was
    granted: otherwise something took a thing out of the index without anybody
    on the record having asked for it."""
    reqs = holder.get('removalRequests', [])
    if sum(1 for r in reqs if r['status'] == 'open') > 1:
        err(f'{where}: more than one removal request is open')
    for r in reqs:
        if r['status'] != 'open' and not (r.get('decidedBy') and r.get('decidedAt')):
            err(f'{where}: a {r["status"]} removal request names nobody who decided it')
        if r['status'] == 'declined' and not r.get('note'):
            err(f'{where}: a declined removal request gives no reason')
    if holder.get('removed') and not any(r['status'] == 'granted' for r in reqs):
        err(f'{where}: removed, but no removal request was ever granted')


def current_roles(events):
    held = {}
    for ev in events:
        key = (ev['user'].lower(), ev['role'], ev.get('scope', ''))
        if ev['action'] == 'granted':
            held[key] = ev
        else:
            held.pop(key, None)
    return held

held_roles = current_roles(role_events)
experts_reg = [{'user': ev['user'], 'scope': ev.get('scope', ''),
                'appointedBy': ev['by'], 'appointedAt': ev['date'],
                'reason': ev['reason']}
               for (u, role, scope), ev in held_roles.items() if role == 'expert']

systems = json.loads((ROOT / 'systems.json').read_text())
known_games = set()
act_actors = []        # (run dir, name, roster) for everyone who acted on a run

for gjson in ROOT.glob('games/*/*/game.json'):
    gdir = gjson.parent
    known_games.add(f'{gdir.parent.name}/{gdir.name}')
    gdoc = json.loads(gjson.read_text())
    check_schema('game', gdoc, gjson)
    # A ratification is an act by a person: it carries a name and a date or it
    # is not one. Games that arrived established from the seeding import were
    # never ratified here and carry neither, which is the honest record.
    if bool(gdoc.get('ratifiedBy')) != bool(gdoc.get('ratifiedAt')):
        err(f'{gjson}: ratifiedBy and ratifiedAt go together, or neither')
    # ratification is retired as a mechanism (2026-08-20): creations are
    # real on arrival, and ratified*/established survive only as history.
    check_removals(gdoc, str(gjson))
    if gdoc.get('thumbnail'):
        tp = gdir / gdoc['thumbnail']
        if not tp.is_file():
            err(f'{gjson}: declared thumbnail {gdoc["thumbnail"]!r} missing')
        else:
            if tp.stat().st_size > THUMB_MAX:
                err(f'{gjson}: thumbnail exceeds {THUMB_MAX>>10} KB')
            magics = IMAGE_MAGIC.get(tp.suffix.lower(), [])
            if not any(tp.read_bytes()[:12].startswith(m) for m in magics):
                err(f'{gjson}: thumbnail {gdoc["thumbnail"]!r} is not a real '
                    f'image of its declared kind')
    cjson = gdir / 'categories.json'
    if not cjson.exists():
        err(f'{gdir}: missing categories.json')
        continue
    try:
        cats = json.loads(cjson.read_text())
    except json.JSONDecodeError as e:
        err(f'{cjson}: not valid JSON ({e})')
        continue
    check_schema('categories', cats, cjson)
    valid_opts = {d['key']: {o['key'] for o in d['options']} for d in cats.get('dimensions', [])}

    for rdir in sorted((gdir / 'runs').glob('*')):
        if not rdir.is_dir():
            err(f'{rdir}: stray file in runs/ (runs must be folders)')
            continue
        rj = rdir / 'run.json'
        if not rj.exists():
            err(f'{rdir}: missing run.json'); continue
        try:
            r = json.loads(rj.read_text())
        except json.JSONDecodeError as e:
            err(f'{rj}: not valid JSON ({e})'); continue
        check_schema('run', r, rj)
        if not r.get('videoOnly') and (
                not isinstance(r.get('movie'), dict) or not r['movie'].get('file')):
            err(f'{rdir}: run.json has no movie.file'); continue
        if r.get('videoOnly') and r.get('movie'):
            err(f'{rdir}: video-only and carrying a movie is a contradiction; '
                f'pick one')
        if r.get('id') != rdir.name:
            err(f'{rdir}: id {r.get("id")!r} != folder name')
        # 'unclassified' is a special category available on every game: no
        # defined goal (the run carries its own goalDescription), never
        # verifiable, ranked by likes alone
        is_uncl = (r.get('category') or {}).get('goal') == 'unclassified'
        for dk, ok_ in (r.get('category') or {}).items():
            if is_uncl and dk == 'goal':
                continue
            if ok_ not in valid_opts.get(dk, set()):
                err(f'{rdir}: unknown category {dk}={ok_!r}')
        if is_uncl:
            if not (r.get('goalDescription') or '').strip():
                err(f'{rdir}: Unclassified runs must describe their goal '
                    f'(goalDescription)')
            # a goal-less run cannot carry a LIVE verification: there is
            # nothing to verify. Invalidated ones are history (a game deletion
            # voids the goal its verifications were bound to) and stay.
            if any(not v.get('invalidated') for v in r.get('verifications', [])):
                err(f'{rdir}: Unclassified runs cannot hold a live verification '
                    f'— no goal is defined')
        # A withdrawal whose reason IS the publication takes the files down
        # with it: the record stays so the id is never reused and the history
        # stays legible, but the movie, the notes and the thumbnail are gone.
        gone = bool((r.get('withdrawn') or {}).get('contentRemoved'))
        movie = rdir / r['movie']['file'] if r.get('movie') else None
        if gone:
            if movie and movie.exists():
                err(f'{rdir}: withdrawn with contentRemoved, but the movie '
                    f'{r["movie"]["file"]!r} is still here')
            if (rdir / 'notes.md').exists():
                err(f'{rdir}: withdrawn with contentRemoved, but notes.md is still here')
        elif movie and not movie.exists():
            err(f'{rdir}: declared movie {r["movie"]["file"]!r} missing')
        elif movie and movie.stat().st_size > MOVIE_MAX:
            err(f'{rdir}: movie exceeds {MOVIE_MAX>>20} MB')
        notes = rdir / 'notes.md'
        if notes.exists() and notes.stat().st_size > NOTES_MAX:
            err(f'{rdir}: notes.md exceeds {NOTES_MAX>>10} KB')

        # mandatory thumbnail: author-provided, a real image, modest size
        thumb = r.get('thumbnail')
        if thumb and gone:
            if (rdir / thumb).exists():
                err(f'{rdir}: withdrawn with contentRemoved, but the thumbnail '
                    f'{thumb!r} is still here')
        elif thumb:
            tp = rdir / thumb
            if not tp.exists():
                err(f'{rdir}: declared thumbnail {thumb!r} missing')
            else:
                if tp.stat().st_size > THUMB_MAX:
                    err(f'{rdir}: thumbnail exceeds {THUMB_MAX>>10} KB')
                head = tp.read_bytes()[:12]
                magics = IMAGE_MAGIC.get(tp.suffix.lower(), [])
                if not any(head.startswith(m) for m in magics):
                    err(f'{rdir}: thumbnail {thumb!r} is not a real '
                        f'{tp.suffix.lower()} image')

        declared = {a['file'] for a in r.get('attachments', [])}
        rom_sha1 = ((r.get('contract') or {}).get('rom') or {}).get('sha1', '').lower()
        total = 0
        for a in sorted(declared):
            ap = rdir / a
            if not ap.exists():
                err(f'{rdir}: declared attachment {a!r} missing'); continue
            suffix = ap.suffix.lower()
            size = ap.stat().st_size
            data = ap.read_bytes()
            if suffix in MOVIE_ATTACH_EXT:
                # additional movie files are welcome attachments (binary OK)
                if size > MOVIE_MAX:
                    err(f'{rdir}: movie attachment {a!r} exceeds {MOVIE_MAX>>20} MB')
            elif suffix in ALLOWED_ATTACH_EXT:
                total += size
                if size > ATTACH_MAX_EACH:
                    err(f'{rdir}: attachment {a!r} exceeds {ATTACH_MAX_EACH>>10} KB')
                try:
                    data.decode('utf-8')
                except UnicodeDecodeError:
                    err(f'{rdir}: attachment {a!r} is not valid UTF-8 text')
            else:
                err(f'{rdir}: attachment {a!r} extension not allowed')
            if rom_sha1 and hashlib.sha1(data).hexdigest() == rom_sha1:
                err(f'{rdir}: attachment {a!r} matches the declared ROM hash')
        if total > ATTACH_MAX_TOTAL:
            err(f'{rdir}: text attachments exceed {ATTACH_MAX_TOTAL>>10} KB total')

        # community rosters: self-acts, duplicates, screenshots, status honesty
        author_names = {canon(a['user']) for a in r.get('authors', [])}
        shots = set()
        shot_total = 0
        for kind in ('reproductions', 'verifications', 'consoleVerifications'):
            seen_users = set()
            for act in r.get(kind, []):
                u = canon(act['user'])
                act_actors.append((rdir, act['user'], kind))
                if u in author_names and not act.get('invalidated'):
                    err(f'{rdir}: {kind[:-1]} by {act["user"]!r} — authors cannot '
                        f'act on their own run')
                if u in seen_users:
                    err(f'{rdir}: duplicate {kind[:-1]} by {act["user"]!r} — one per user')
                seen_users.add(u)
                shot = act.get('screenshot')
                if shot:
                    want_dir = ('console/' if kind == 'consoleVerifications'
                                else 'reproductions/')
                    if not shot.startswith(want_dir):
                        err(f'{rdir}: {kind} screenshot {shot!r} must live under '
                            f'{want_dir}')
                    shots.add(shot)
                    sp = rdir / shot
                    if not sp.exists():
                        err(f'{rdir}: declared screenshot {shot!r} missing'); continue
                    size = sp.stat().st_size
                    shot_total += size
                    if size > SHOT_MAX_EACH:
                        err(f'{rdir}: screenshot {shot!r} exceeds {SHOT_MAX_EACH>>10} KB')
                    head = sp.read_bytes()[:12]
                    magics = IMAGE_MAGIC.get(sp.suffix.lower())
                    if not magics:
                        err(f'{rdir}: screenshot {shot!r} extension not allowed')
                    elif not any(head.startswith(m) for m in magics):
                        err(f'{rdir}: screenshot {shot!r} is not a real '
                            f'{sp.suffix.lower()} image')
                    if rom_sha1 and hashlib.sha1(sp.read_bytes()).hexdigest() == rom_sha1:
                        err(f'{rdir}: screenshot {shot!r} matches the declared ROM hash')
        if shot_total > SHOT_MAX_TOTAL:
            err(f'{rdir}: screenshots exceed {SHOT_MAX_TOTAL>>20} MB total')

        # console verification: an optional third signal, but when claimed it
        # must point at a public recording of the hardware playing the run
        for act in r.get('consoleVerifications', []):
            proof = act.get('proof', '')
            if not proof.startswith(('http://', 'https://')):
                err(f'{rdir}: console verification by {act["user"]!r} has no '
                    f'public proof link')

        # withdrawal: the run leaves the listings, the record stays. Nothing
        # is erased (Community Principles 1.2, 2.7.2), so the movie file and
        # the reason must both remain readable.
        w = r.get('withdrawn')
        if w is not None:
            if not (w.get('reason') or '').strip():
                err(f'{rdir}: withdrawn without a public reason')
            if not (w.get('by') or '').strip():
                err(f'{rdir}: withdrawn without naming who did it')

        # likes: one per member, never the run's own authors
        author_names_l = {canon(a['user']) for a in r.get('authors', [])}
        seen_likes = set()
        for like in r.get('likes', []):
            lu = like['user']
            ll = canon(lu)
            act_actors.append((rdir, lu, 'likes'))
            if ll in author_names_l:
                err(f'{rdir}: like by {lu!r} — authors cannot like their own run')
            if ll in seen_likes:
                err(f'{rdir}: duplicate like by {lu!r}')
            seen_likes.add(ll)

        # reports: globally unique ids; resolution fields only when resolved
        for rep in r.get('reports', []):
            if rep['id'] in report_ids:
                err(f'{rdir}: report R{rep["id"]} id collides with one in '
                    f'{report_ids[rep["id"]]}')
            report_ids[rep['id']] = rdir
            if rep['status'] != 'open' and not rep.get('resolvedBy'):
                err(f'{rdir}: report R{rep["id"]} is {rep["status"]} but has no '
                    f'resolvedBy')

        # dispute cases
        ver_users = {a['user'].lower() for a in r.get('verifications', [])}
        inv_ver_users = {a['user'].lower() for a in r.get('verifications', [])
                         if a.get('invalidated')}
        case_ids = set()
        for case in r.get('cases', []):
            if case['id'] in case_ids:
                err(f'{rdir}: duplicate case id {case["id"]}')
            case_ids.add(case['id'])
            snapshot = {u.lower() for u in case.get('verifiers', [])}
            for u in snapshot:
                if u not in ver_users:
                    err(f'{rdir}: case {case["id"]} verifier {u!r} not in the '
                        f'verifications roster')
            seen_votes = set()
            for v in case.get('reaffirmations', []):
                vu = v['user'].lower()
                if vu not in snapshot:
                    err(f'{rdir}: case {case["id"]} vote by {v["user"]!r} — only '
                        f'the verifier snapshot may vote')
                if vu in seen_votes:
                    err(f'{rdir}: case {case["id"]} duplicate vote by {v["user"]!r}')
                seen_votes.add(vu)
            want = case_derived_status(case)
            if case.get('status') != want:
                err(f'{rdir}: case {case["id"]} status is {case.get("status")!r} '
                    f'but the votes derive {want!r}')
            if case.get('status') == 'upheld':
                for u in snapshot:
                    if u not in inv_ver_users:
                        err(f'{rdir}: case {case["id"]} is upheld but verification '
                            f'by {u!r} is not invalidated')

        st = r.get('status', {})
        # the third signal: community when somebody here played it back on
        # hardware, imported when TASVideos had already console-verified it
        if r.get('videoOnly'):
            pass                       # console is 'not-applicable', checked above
        elif st.get('console') == 'not-applicable':
            err(f'{rdir}: only a video-only run marks console not-applicable')
        elif st.get('console') != 'imported':
            live_c = [a for a in r.get('consoleVerifications', []) if not a.get('invalidated')]
            want_console = 'community' if live_c else 'none'
            if st.get('console') != want_console:
                err(f'{rdir}: status.console is {st.get("console")!r} but the '
                    f'roster derives {want_console!r}')
        elif not r.get('imported'):
            err(f'{rdir}: status.console is "imported" but the run was not imported')
        if r.get('videoOnly'):
            # the encode is the run: nothing exists to reproduce or replay
            if r.get('reproductions') or r.get('consoleVerifications'):
                err(f'{rdir}: a video-only run cannot carry reproductions or '
                    f'console verifications; there is no input movie to replay')
            if st.get('reproduced') != 'not-applicable' or \
                    st.get('console') != 'not-applicable':
                err(f'{rdir}: a video-only run marks reproduced and console '
                    f'as not-applicable')
            if not r.get('encodes'):
                err(f'{rdir}: a video-only run IS its encode; it must link one')
            # whether a stated duration exists depends on the category: it is
            # required iff the category's metrics include the derived time
            # (absent metrics = the classic time metric)
            goal_key = (r.get('category') or {}).get('goal')
            mdefs = None
            for d in cats.get('dimensions', []):
                for o in d['options']:
                    if o['key'] == goal_key:
                        mdefs = o.get('metrics')
            wants_time = (mdefs is None
                          or any(m['key'] == 'time' for m in mdefs))
            if wants_time and goal_key != 'unclassified' and not r.get('duration'):
                err(f'{rdir}: video-only in a time-ranked category must state '
                    f'its duration')
            if not wants_time and r.get('duration'):
                err(f'{rdir}: this category defines no time metric; a stated '
                    f'duration would rank nothing and is not stored')
        # stated metric values must be numbers for keys the category defines
        # or once defined (values persist after a metric is removed)
        if r.get('metrics') is not None and not isinstance(r.get('metrics'), dict):
            err(f'{rdir}: metrics must be an object of numeric values')
        if not r.get('videoOnly') and st.get('reproduced') == 'not-applicable':
            err(f'{rdir}: only a video-only run marks reproduced not-applicable')
        if st.get('reproduced') not in ('imported', 'not-applicable'):
            live_r = [a for a in r.get('reproductions', []) if not a.get('invalidated')]
            want_repro = 'community' if live_r else 'none'
            if st.get('reproduced') != want_repro:
                err(f'{rdir}: status.reproduced is {st.get("reproduced")!r} but the '
                    f'roster derives {want_repro!r}')
        if st.get('verified') != 'imported':
            live_v = [a for a in r.get('verifications', []) if not a.get('invalidated')]
            # verification gates ranking (2026-08-19): community = provisional
            # (ranked), a covering expert's = confirmed (permanent)
            want_ver = ('confirmed' if any(a.get('expert') for a in live_v) else
                        'provisional' if live_v else 'none')
            if st.get('verified') != want_ver:
                err(f'{rdir}: status.verified is {st.get("verified")!r} but the '
                    f'roster derives {want_ver!r}')

        # no stray files: everything must be accounted for
        allowed = {'run.json', 'notes.md'} | declared | shots
        if r.get('movie'):
            allowed.add(r['movie']['file'])
        if r.get('thumbnail'):
            allowed.add(r['thumbnail'])
        for f in rdir.rglob('*'):
            if f.is_file():
                relp = str(f.relative_to(rdir))
                if relp not in allowed:
                    err(f'{rdir}: undeclared file {relp!r} — every file must be the '
                        f'movie, notes.md, run.json, or a declared attachment')

# ---- acts are performed by members ----
# Anyone who reproduces, verifies, console-verifies or stars a run did it
# through the archivist, which means they have an account here. A missing
# record would silently cost them their profile, their stats and their points.
for rdir, actor, roster in act_actors:
    if canon(actor) not in members:
        err(f'{rdir}: {roster} by {actor!r}, who has no member record in authors/ '
            f'(every act here is performed by a member)')

# ---- game groups (series) ----
# A group is pure taxonomy: it points at games, and an expert scope may point
# at it. Both directions have to resolve, or a scope silently covers nothing
# and a group page lists a game that is not there.
group_keys = set()
if (ROOT / 'groups.json').exists():
    doc = json.loads((ROOT / 'groups.json').read_text())
    check_schema('groups', doc, ROOT / 'groups.json')
    for grp in doc.get('groups', []):
        key = grp.get('key')
        if key in ('uncategorized', 'unclassified'):
            err(f"groups.json: {key!r} is reserved for the derived group "
                'that holds every game no group has claimed')
        if key in group_keys:
            err(f'groups.json: duplicate group key {key!r}')
        group_keys.add(key)
        for gk in grp.get('games', []):
            if gk not in known_games:
                err(f'groups.json: group {key!r} lists {gk!r}, which is not a game '
                    f'in this archive')
        # same rule as a game: a ratification is an act by a person, so it
        # carries a name and a date, and it cannot sit on a provisional series
        if bool(grp.get('ratifiedBy')) != bool(grp.get('ratifiedAt')):
            err(f'groups.json: group {key!r} has ratifiedBy and ratifiedAt out of step; '
                f'both or neither')
        check_removals(grp, f'groups.json: group {key!r}')
        if grp.get('removed') and grp.get('games'):
            err(f'groups.json: group {key!r} was removed but still holds games; a '
                f'removed series is dissolved and its games are ungrouped')
        if grp.get('rejected') and grp.get('games'):
            err(f'groups.json: group {key!r} was refused but still holds games; a '
                f'refused series is dissolved and its games are ungrouped')
        if bool(grp.get('createdBy')) != bool(grp.get('createdAt')):
            err(f'groups.json: group {key!r} has createdBy and createdAt out of step; '
                f'both or neither')
    # A game belongs to one series. The site is built on that: a game in two
    # would be drawn twice, and the Unclassified group means "in none of them".
    placed = {}
    for grp in doc.get('groups', []):
        for gk in grp.get('games', []):
            if gk in placed:
                err(f'groups.json: {gk!r} is in both {placed[gk]!r} and '
                    f'{grp.get("key")!r}; a game belongs to one series')
            placed[gk] = grp.get('key')

# an expert event carries a scope; a committee, moderator or editor event
# must not, since none of those are scoped. These shape rules hold for every event, past ones
# included.
for ev in role_events:
    if ev['role'] == 'founder' and ev['action'] == 'revoked':
        err(f"roles.json: a founder role cannot be revoked; the Founder's role is "
            f"permanent (Principles 2.2.2). Succession is 2.3.12 and it is a new "
            f"grant, never a revocation of the record.")
    scope = ev.get('scope', '')
    if ev['role'] != 'expert':
        if scope:
            err(f'roles.json: {ev["user"]!r} has a {ev["role"]} event with a scope; '
                f'only expert roles are scoped')
    elif not scope:
        err(f'roles.json: expert event for {ev["user"]!r} has no scope')

# a scope has to point at something real only while it is HELD: history may
# name a game or group that was later deleted, because history records what
# was true then, but nobody may currently hold authority over a ghost
for (u, role, scope), ev in current_roles(role_events).items():
    if role != 'expert' or not scope:
        continue
    if scope.startswith('group:') and scope[6:] not in group_keys:
        err(f'roles.json: {ev["user"]!r} holds scope {scope!r}, but no such '
            f'group exists in groups.json')
    elif scope not in ('site',) and not scope.startswith('group:'):
        if '/' in scope and scope not in known_games:
            err(f'roles.json: {ev["user"]!r} holds scope {scope!r}, which is '
                f'not a game in this archive')
        elif '/' not in scope and scope not in systems:
            err(f'roles.json: {ev["user"]!r} has scope {scope!r}, which is '
                f'not a system in systems.json')

if errors:
    print(f'INVALID — {len(errors)} problem(s):')
    for e in errors: print('  ✗', e)
    sys.exit(1)
print('archive valid ✓')
