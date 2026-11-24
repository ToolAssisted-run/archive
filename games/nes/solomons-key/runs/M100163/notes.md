This movie is 34 frames faster than [NES Solomon's Key by ninespaces in 11:31.678](https://tasvideos.org/4007M).

There is no major breakthrough. Every attempt to find a better route failed. The whole movie is just minor optimizations. With warps, there are 24 rooms, and so the average improvement per room is 1.4 frames.

The technical explanation may be more interesting than watching the movie.

**AI-written explanation:**

**Technical Analysis of This TAS of Solomon's Key**

This document presents a chronological, technical breakdown of this TAS of the NES release of *Solomon's Key* (North American revision, Mapper 3 / CNROM), verified from power-on in FCEUX 2.7.0 under OldPPU timing. Across the 24 playable rooms of the any-percent warp route plus boot and title, this TAS finishes in **41,535 frames** (final non-zero input on frame 41,534, autonomous ending verified across 600 trailing zero-input frames), beating the previous TAS's **41,569 frames** by **34 frames**. Both movies incur exactly 138 total lag frames—all during room-load transitions, with zero gameplay lag. Every room achieves a non-positive delta: 13 playable rooms are strictly faster, 11 playable rooms plus boot and title tie their demonstrated topological or mathematical floors, and zero rooms lose time. The route bypasses 26 of the game's 50 rooms by collecting five Warp Scrolls (in Rooms 7, 15, 23, 31, and 39) and triggering the automatic skip from Room 48 straight to Room 50.

**Emulator Calibration, Methodology, and Engine Foundations**

This TAS was built from first principles via exhaustive state-space search. For every room, the tile topology, enemy AI phases, item-drop tables, and bonus-tally economics were modeled before finalizing inputs. Only after an exhaustive search proved that no superior macro-route existed was the winning topology refined to subpixel and frame-parity precision.

Several engine mechanisms govern optimization throughout the run. *Solomon's Key* executes a cooperative eight-thread scheduler ($0010–$0017). Thread 3 ($A015) runs both tile-pickup detection (check_dana_tile_pickup at $C432) and the room's LIFE timer decrement (update_life_timer). Because Thread 3 yields cooperatively under CPU load, active sprite count directly alters how many times LIFE ticks before door entry—affecting post-room bonus tallies by a frame or more. Dana's walk and mid-air drift speed is fixed at 0.75 pixels per frame ($00.C0 subpixels per frame). Grounded jumps pay a mandatory 5-frame jump squat ($83FF, states $00/$01), and ordinary landings incur a 9-frame recovery animation (states $06/$07). The landing-cancel check ($842B) cuts recovery to 1 frame on any directional input, while the **Frame-0 Crouch-Land Cancel**—pressing Down ($20) on the exact landing frame of an Upward Corner-Snap—skips recovery completely (0 frames).

Casting or breaking via task11_dana_cast_block_spell ($9B7A) locks Dana for 15–16 frames ($0021 down to $0F) while applying a 4-pixel horizontal wand offset in the facing direction. Inputting Up plus a horizontal direction on the exact airborne cast-exit frame triggers an **Airborne Cast-Exit Idle Skip**, removing a 1-frame stall in states $1A/$1B; an analogous grounded variant eliminates the idle frame before jump squat. Clipping a block's upper corner during ascent produces an **Upward Corner-Snap**, elevating Dana one tile in 11 air frames instead of roughly 28 for a full parabolic arc. Pairing Upward Corner-Snaps with Frame-0 Crouch-Land Cancels sets a hard mathematical floor for vertical stone-tower climbing: **34 frames** for the initial tile climbed from Y subpixel $00 and **35 frames per tile** thereafter from Y subpixel $F0. Entering an open door with pure Up ($10) clears the door-entry flag to $00 immediately, saving 1 frame over diagonal or moving entries that set flag $80 and defer entry by a frame. Grabbing a key invokes task34_key_open_door_seq, freezing Dana ($057F = $A0) for ~73 frames while preserving vertical velocity ($0584), allowing mid-air key grabs to carry momentum across the freeze. Finally, the **Golden Touch Glitch** ($844D–$84A0 coupled with $9B7A) lets Dana stand on a tile's right edge, face left, cast onto his own tile, and alternate Left and Down to remain legally grounded while sinking slowly, enabling mid-descent jumps where gravity would normally force free-fall.

End-to-end room time also includes the post-room bonus tally, which subtracts 8 per frame from remaining LIFE ($0438–$043B). Because the zero check runs on the frame after subtraction, finishing on an exact multiple of 8 incurs an extra post-zero check frame that manifests as +1 frame on the *next* room's Load phase. Conversely, Red Hourglasses halve remaining LIFE, frequently saving 150–200 tally frames when their detour is inexpensive. Equally important, cross-room state—including carried Fireballs (fb = $40), zero-page phase counter ZP$28, and LIFE modulo 8—couples adjacent rooms into a single global optimization problem. Every room below is therefore evaluated end-to-end across Load, Active play, and Bonus Tally.

**Boot and Title Screen (Room 00)**

*22 frames vs. 22 frames (0 frames, 7 lag frames, cumulative 0 frames).*

Under FCEUX OldPPU initialization, the earliest polled Start inputs to clear the title screen and begin Room 1 occur on frames 12 and 21. This TAS matches the previous TAS at the 22-frame, 7-lag hardware floor on identical cycle alignment.

**Room 1 (Aries 1)**

*1,051 frames vs. 1,052 frames (-1 frame, 6 lag frames, cumulative -1 frame).*

The optimal macro-route breaks $9B *before* grabbing Key $7C so Dana drops straight through the cleared column once the 73-frame freeze ends, avoiding any post-key cast. This TAS gains 1 frame on the mid-air break of $74: pressing Up plus Right on the exact cast-exit frame (frame 361) executes the **Airborne Cast-Exit Idle Skip**, eliminating the 1-frame $1A/$1B stall before Dana continues across the room. Without crossing a LIFE multiple-of-8 boundary, the full frame carries cleanly through the tally.

**Room 2 (Aries 2)**

*1,180 frames vs. 1,180 frames (0 frames, 5 lag frames, cumulative -1 frame).*

First-principles search confirms the optimal climb uses a **Create-Then-Break-Above** single-jump ascent: Dana casts $78 grounded, chains a Grounded Cast-to-Jump Idle-Skip, and breaks $68 in mid-air during the same arc (reversing the order—breaking above first and building beneath—costs 66 frames for an extra jump cycle). Dana then breaks $4C, grabs Key $3D in mid-air to preserve downward momentum across the freeze, and drops directly into Door $9D, tying the 1,180-frame floor.

**Room 3 (Aries 3)**

*2,036 frames vs. 2,036 frames (0 frames, 5 lag frames, cumulative -1 frame).*

Room 3 chains same-jump double mid-air casts across $26/$27, $CA, $91/$82, and $73/$74 while respecting corridor Demon e7's pause-trigger boundary (Dana X >= $44, beyond which e7 halts and blocks the lane). Crucially, collecting Gargoyle e6's dropped item (id $14 at frame 3,761) removes an active sprite from the object table; the lower per-frame CPU load lets cooperative Thread 3's update_life_timer tick 20 additional times before door entry, dropping LIFE to 0808 and cutting the bonus tally from 233 to 232 frames. Although 0808 (101 times 8) shifts +1 frame onto Room 4's Load, it ties Room 3 at 2,036 frames and sets up Room 4 cleanly.

**Room 4 (Aries 4)**

*1,111 frames vs. 1,113 frames (-2 frames, 6 lag frames, cumulative -3 frames).*

Entering with +1 frame on Load from Room 3's LIFE of 0808, this TAS erases that deficit and finishes 2 frames ahead overall by cutting **3 full frames from active play** (392 active frames vs. 395). Dana executes an 11-air-frame **Upward Corner-Snap** onto $87, constructs a pre-key mid-air bridge at $76, and grabs Key $67 on the very same jump arc. Because the bridge is already in place before the key freeze begins, Dana requires zero post-key casts to reach the door, extending the cumulative lead to -3 frames.

**Room 5 (Taurus 1)**

*1,116 frames vs. 1,116 frames (0 frames, 6 lag frames, cumulative -3 frames).*

Room 5 is a pure vertical climb and a textbook proof of the vertical stone-tower floor. Ascending Column 6 requires one initial tile from Y subpixel $00 (34 frames), eight subsequent tiles from Y subpixel $F0 (280 frames), the mandatory 73-frame key freeze, and 11 frames of final approach into Door $27—an exact mathematical lower bound of **398 active frames**. Pairing Upward Corner-Snaps with **Frame-0 Crouch-Land Cancels** ($20) and a pure-Up ($10, flag $00) door entry hits 398 active frames on the nose and ties at 1,116 frames.

**Room 6 (Taurus 2)**

*1,790 frames vs. 1,790 frames (0 frames, 6 lag frames, cumulative -3 frames).*

Room 6's serpentine stone shafts are cleared by a single zero-prep **Crouch Super-Fireball** (Down plus B, $22) that hugs the floor and cascades down the vertical shafts, incinerating all six patrolling sparks (e0–e5) in one sweep. Neutral-edge drop reversals keep Dana flush against the corridor walls during descent without horizontal overshoot. In the Room-7-aligned chain, both runs tie at 1,790 frames and 6 lag frames while locking in exact parity for the warp stage ahead.

**Room 7 (Taurus 3, Warp to Room 13)**

*1,726 frames vs. 1,729 frames (-3 frames, 6 lag frames, cumulative -6 frames).*

Skipping Rooms 8–12 via Warp Scroll $1D, this TAS gains 3 frames by chaining double-bonk plus mid-air cast combos at $99/$A8 and $35/$46, using a **Bonk-1 left air-drift** ($50) off $35 to shave setup frames while strictly respecting Spark e7's guardrail (keeping e7 X < $6C so it cannot intercept the climb). A running-jump double-cast uncovers and claims Warp Scroll $1D before a mid-air entry into Door $6A. Critically, this TAS exits carrying a Fireball (fb = $40) with zero-page counter ZP$28 aligned to $00, directly unlocking the fastest enemy cycle in Room 13.

**Room 13 (Cancer 1)**

*1,940 frames vs. 1,940 frames (0 frames, 6 lag frames, cumulative -6 frames).*

Arriving from Room 7 with both a carried Fireball and ZP$28 = $00 pays immediate dividends. Spending the carried Fireball eliminates the Column D spark outright, saving 31 frames over a no-fireball route that must build around or wait out its patrol. Dana then executes an exact 262-frame, nine-hop ascent up the right shaft ($CE–$49), clearing E02 on the ZP$28 = $00 cycle without a single hesitation frame. Grabbing roof Red Hourglass $27 halves remaining LIFE to 0474 (saving ~190 tally frames), tying the room's 1,940-frame floor.

**Room 14 (Cancer 2)**

*1,626 frames vs. 1,626 frames (0 frames, 4 lag frames, cumulative -6 frames).*

Room 14 chains three synchronized 89-frame diagonal cycles ($65–$42), each pairing a double head-bonk, mid-air break, and Upward Ledge-Snap. Mid-ascent, Dana threads past Ghost E2 at subpixel clearance (Dana X = $3E vs. E2 at $34) and performs a **No-Break $35 stone-ceiling ledge-snap** to clip onto the upper ledge without spending a 16-frame cast. Both LIFE-1000 potions ($72 and $7C) are skipped as net tally losses, tying the 1,626-frame floor with 4 lag frames.

**Room 15 (Cancer 3, Warp to Room 21)**

*1,864 frames vs. 1,867 frames (-3 frames, 5 lag frames, cumulative -9 frames).*

The second warp room (skipping Rooms 16–20) yields another 3-frame gain through superior micro-routing and cast placement. First-principles comparison proves ascending on the left via $A1 is 20 frames faster than $A2; an edge stand-cast at $85 skipping $75 into a mid-air break of $66 saves 39 frames over stepped climbing. On the right flank, a mid-air double-cast claims Warp Scroll $CA, followed by a **mid-air reverse-cast at $69** (-4 frames over a grounded turnaround) and a clean drop past $35 collecting Fireball $34 (fb = $40) to arm the next constellation, extending the cumulative lead to -9 frames.

**Room 21 (Virgo 1)**

*1,287 frames vs. 1,287 frames (0 frames, 6 lag frames, cumulative -9 frames).*

Room 21 illustrates the coupling between active-play optimization and inter-room Load parity. Entering with +1 Load from Room 15's exit LIFE boundary, this TAS recovers **1 active frame** (571 vs. 572) to tie end-to-end at 1,287 frames. Two neutral frames after Key $BD prevent the state $09 free-fall stall that otherwise delays horizontal control; mid-air directional release ($10) avoids an unwanted wall-snap on $AA (-4 frames); and a double-bonk at $89 paired with a **mid-air wand-shrink of Flame E2** (Big to Small Flame) enables a zero-walk chain from $99 to $89 to $7B into Door $6C. Hourglass $86 was proved a +50-frame net loss.

**Room 22 (Virgo 2)**

*1,453 frames vs. 1,456 frames (-3 frames, 4 lag frames, cumulative -12 frames).*

This intricate enemy-cooperation puzzle yields **4 active frames saved** (741 vs. 745), netting 3 frames end-to-end after a +1-frame tally shift. The route strictly avoids the hidden $79 ($92) item trap that inflates LIFE to 4850 (+494 tally frames), uses state $09 stall avoidance to build $CE on time so Mirror Goblin E4 smashes $BD for free, vaults over falling E4, chains a same-jump double-cast ($BD/$AD) so Mirror Goblin E6 re-breaks $BD to drop Flame E3 out of the corridor, keeps X <= $DF to control E10's pause trigger, and enters Door $BE mid-air while keeping fb = $40.

**Room 23 (Virgo 3, Warp to Room 29)**

*1,253 frames vs. 1,253 frames (0 frames, 6 lag frames, cumulative -12 frames).*

Room 23 showcases the **Golden Touch Glitch**. Exhaustive first-principles search proves the alternative well-climb topology requires at least 543 active frames, whereas the optimal Golden Touch route finishes active play in **539 frames**. Dana opens with a zero-block jump onto indestructible $89, initiates a **$75 Grounded Edge-Sink** (alternating states $15 and $11 at 1 pixel every 10 frames while staying legally grounded) to grab Key $86 grounded, jumps out of the sink to break $75 mid-air, executes a same-fall double mid-air cast on $C3 for the Warp Scroll, and grabs the scroll while building $C4 into pure-Up Door $A3, tying at 1,253 frames.

**Room 29 (Scorpio 1)**

*1,162 frames vs. 1,168 frames (-6 frames, 6 lag frames, cumulative -18 frames).*

Room 29 produces the **largest single-room gain of the entire TAS**: 7 active frames saved (444 vs. 451), translating to **6 frames saved end-to-end**. Both halves of the room were re-engineered from first principles. On Jump 1, Dana executes a single-jump double mid-air cast ($63 and $54), enabling a zero-cast Jump 2 directly onto $54 ahead of Ghost E01 to grab Key $67 two frames earlier than the previous TAS. Post-key, a direct **$8B to $7C mid-air entry into Door $6D** eliminates an entire cast/break cycle around $7C (-5 active frames), expanding the cumulative lead to -18 frames.

**Room 30 (Scorpio 2)**

*2,981 frames vs. 2,981 frames (0 frames, 4 lag frames, cumulative -18 frames).*

Room 30's airtight alternating checkerboard enforces a strict topological floor. First-principles disassembly and collision testing prove top-row gap-jumping is impossible: indestructible stone across Row 0 causes an immediate head-bonk on any jump, killing upward arc before Dana can clear a one-tile gap, while $27 gap tiles beneath block crouch-cast bridges from above. With top-row skipping ruled out, the optimal macro-route opens with an immediate foot-break for Red Hourglass $47 (halving LIFE to a 167-frame tally), followed by a single-pass **Bottom-Up Spiral** using Sub-Gap Stepping Stones ($B5–$33) and 18-frame Upward Corner-Snaps to reduce ten climbs to six, tying the 2,981-frame floor.

**Room 31 (Scorpio 3, Warp to Room 37)**

*2,093 frames vs. 2,097 frames (-4 frames, 6 lag frames, cumulative -22 frames).*

Skipping Rooms 32–36, this fourth warp room yields a **4-frame end-to-end gain** driven by a 5-frame faster Key-to-Door sequence. Collecting Warp Scroll $CE first before tackling the central structure, Dana exploits the engine's **4-pixel horizontal wand-reach offset** during task11_dana_cast_block_spell across fireball-immune Gargoyle E02 (X = $7D.85) to break $66 and $76 safely without baiting or walling it off. On the return path, Dana crosses passable hidden tile $87 ($70) and coordinates with Mirror Wyverns E07/E08 for free demolition on both flanks, extending the lead to -22 frames.

**Room 37 (Capricorn 1)**

*1,138 frames vs. 1,139 frames (-1 frame, 6 lag frames, cumulative -23 frames).*

First-principles column search against the synchronized five-row fireball wall (E05–E09) proves a pure **Column D vertical tower** (X = $CD.80, right-cast $81, 35 f/tile with Crouch-Land Cancels) clears the fireball curtain 6 frames earlier than Column C and 10 frames earlier than Column E. On top of the optimal tower rhythm, finishing at LIFE 0928 instead of 0929 trims 1 tally frame for a -1-frame win (at the deliberate cost of +1 Load into Room 38, since 0928 is 116 times 8).

**Room 38 (Capricorn 2)**

*2,743 frames vs. 2,744 frames (-1 frame, 5 lag frames, cumulative -24 frames).*

Room 38's airtight domino-gargoyle topology forces a unique macro-route: right-side $4D/$4E ascent, far-left $20/$21 entry, and single-trip $16 bounce into Key $27 and Door $17. Overcoming the +1 Load penalty inherited from Room 37, tighter cast-exit and corner-snap alignment along the domino chain extracts **2 active frames** (2,042 vs. 2,044) while deliberately preserving zero tally lag (5 lag frames), netting -1 frame and a -24-frame cumulative lead.

**Room 39 (Capricorn 3, Warp to Room 45)**

*1,837 frames vs. 1,837 frames (0 frames, 5 lag frames, cumulative -24 frames).*

The final Warp Scroll stage (skipping Rooms 40–44) forces a counter-clockwise spiral around its central indestructible monolith: mid-air $A3 bounce of E7, Column B right-edge tower ($BB–$4B), a **direct zero-bridge jump from $4B to Key $2D and back onto $4B** on exact 1-frame parity to avoid enemy fire, and a left-shaft double mid-air cast/break on $70 for the Warp Scroll. Although Room 39 ties end-to-end at 1,837 frames, finishing at LIFE 0879 instead of 0880 (110 times 8) banks **-1 frame on Room 45's Load phase**.

**Room 45 (Pisces 1)**

*2,088 frames vs. 2,091 frames (-3 frames, 6 lag frames, cumulative -27 frames).*

Combining Room 39's -1-frame Load advantage with **2 active frames saved**, Room 45 widens the lead to -27 frames. First-principles tests proved Row 5 is sky-locked against vertical clipping and key brick $6E ($86) is head-bonk immune from below. The optimal path chains single-bonk plus side-break ceiling entries ($BD into $CC/$BC; $9D into $AE/$9E and $8D/$8C), uses Mirror Wyverns to break $6E and $82 for free, trims 2 frames of approach hesitation on the Row 6 return run, and spends the carried Fireball (fb = $00) preserved since Room 15.

**Room 46 (Pisces 2)**

*1,481 frames vs. 1,481 frames (0 frames, 5 lag frames, cumulative -27 frames).*

Under this TAS's shifted global parity, replicating the previous TAS would die to E07 on frame 112. First-principles modeling proved Red Hourglass $38 is a +36-frame net loss under the indestructible $26–$29 ceiling and dropping E01 through $2A is mandatory. A custom opening two-step sequence ($CB to $BA to $A9) clears the shifted E07 phase cleanly while a directional adjustment ($40 to $10) saves 1 active frame, tying at 1,481 frames and saving 1 load lag frame entering Room 47 (5 lag frames instead of 6).

**Room 47 (Pisces 3)**

*1,617 frames vs. 1,618 frames (-1 frame, 6 lag frames, cumulative -28 frames).*

First-principles topology proofs show E02 on $65 must drop to $95, E06 permanently seals Column 0, and $B7 ($25) forms a softlock trap if entered early. The optimal **zero-cast, pure-break left-side loop** ($12 to $54 to $65) paired with dual mid-air breaks ($66 onto indestructible $76; $A6 onto indestructible $B6) keeps momentum unbroken and reaches the door at LIFE 0900, trimming the bonus tally from 245 to 244 frames (-1 frame) and again saving 1 load lag frame entering Room 48.

**Room 48 (Pisces 4, Auto-Warp to Room 50)**

*3,579 frames vs. 3,583 frames (-4 frames, 6 lag frames, cumulative -32 frames).*

The game's longest room yields a **4-frame improvement** (-2 active frames at 2,888 vs. 2,890; -2 tally frames at 221 vs. 223, LIFE 0711 vs. 0709). Every conceivable shortcut was formally refuted from first principles. Golden Touch cannot elevate Dana in Column 0 straight to Door $80 after the key: the right wall ($21–$91) is sealed indestructible stone, casting onto $A0 ejects Dana sideways rather than establishing a grounded sink, indestructible $91 caps overhead clearance, and the maximum jump apex from the floor reaches only Y = $9D—strictly short of the door's elevation.

With a two-trip Column 0 loop mandatory, central chimney C8–C9 is sealed by one-tile stone bottlenecks ($57, $6A) and $5B to $5A is blocked by indestructible $4A over E05, leaving the right-side climb ($CD–$5C/$5B to $4D–$1C) unique. On Trip 1 across the top, the $32 breakable-block detour is also forced: Row 0 stone blocks one-tile gap jumps on Row 1, and intact $32 traps E00 inside $22, preventing the $22 bridge recast. Trip 2 then executes a flat Row 1 sprint into mid-air Door $80, auto-warping past Room 49 straight to Room 50 at -32 frames cumulative.

**Room 50 (Solomon Room, Final Room)**

*1,361 frames vs. 1,363 frames (-2 frames, 5 lag frames, cumulative -34 frames).*

Internal room $31 (the Solomon Room) has no bonus tally: only the earliest final input leading to autonomous ending completion matters. Analysis of the Solomon Room state machine ($BA3E–$BA70 and wand-target write STY $7E at $9BB7) defines the exact protocol: on active frame 3, tiles $27, $43, and $8C convert to breakable ($90) and $67 becomes $02; casting at Right Mirror $6C writes $6C to $7E, unlocking vault wall $69 ($F8 to $90); breaking $69 and casting left from $68 onto $67 writes $67 to $7E, sets $7C bit 3 ($08), and immediately launches the autonomous ending requiring zero further input.

Indestructible walls force a single macro-loop ($2C, $27, $43, $81, $B3 across Row 9 to $BC, then up $AD, $9C, $8C to $6C, $69, and $68). The decisive battleground is the right staircase under E06's descending Column D fireball (E14). Where the previous TAS uses a grounded $AD cast from Y = $B0 (895 active frames, 1,363 total), this TAS re-engineers the climb from first principles with a **mid-air $AD cast**—deleting 8 setup frames at frame 618, jumping on frame 666, and casting $AD in mid-air on frame 671 at Y = $AC. That structural shift lands Dana at ($D1, $A0) on frame 705, casts $9C on frame 712, and breaks $8C cleanly on frame 733 *ahead* of fireball E14. Dana hits Right Mirror $6C, breaks vault wall $69, and fires the winning cast onto $67 on **frame 41,534** (893 active frames, 1,361 total)—beating the previous TAS by 2 frames in the finale and sealing the full movie at **41,535 frames**.

**Closing Retrospective**

This TAS's 34-frame victory stems not from a single new glitch, but from uniform rigor across all 24 playable rooms: 13 rooms strictly faster (led by Room 29 at -6, Rooms 31 and 48 at -4, and Rooms 7, 15, 22, and 45 at -3), 11 rooms plus boot and title tied at verified floors, zero rooms slower, and 138/138 lag frames with zero gameplay lag. By treating *Solomon's Key* as one coupled dynamical system—carrying Fireballs across constellations, aligning ZP$28 parity across warps, modulating Thread 3 CPU load, controlling LIFE mod-8 boundaries, and replacing grounded casts with mid-air casts right up to the final staircase of Room 50—this TAS delivers a power-on-verified record terminating input on frame 41,534.
