## Summary

This movie completes all 18 finite Puzzle mode levels in the Nintendo DS version of Plants vs. Zombies. It improves [berrimeow's published Puzzle mode TAS](https://tasvideos.org/5625M) by 173 frames, approximately 2.892 seconds: 42601 frames (11:52.081) to 42428 frames (11:49.189).

## Attribution and method

This is a direct improvement of berrimeow's published input file, not a new route made from scratch. berrimeow created the original routing, luck manipulation and input sequence. The first 17 levels are retained unchanged, and all new input changes are in the final level, Another Chain Reaction. berrimeow must retain author credit for the reused input.

The improvement was researched with AI assistance through ChatGPT/Codex, scripted input variants, frame stepping, screenshots and replay checks in the actual emulator. The scripts supplied controller/touch input and read emulator state for verification; they did not write game RAM or change game speed. The inherited BK2 header still contains berrimeow's author entry and rerecordCount 961; that counter is inherited from the original and is not a count of the new automated experiments.

## Game and synchronization

- System: Nintendo DS (not DSi).
- Game: Plants vs. Zombies (USA).nds.
- ROM SHA1: fcc5ec4cfd4fabcbb26dee847d9ed6803e9ad93b.
- ROM MD5: 17dcb6aacc3f64d528440c8060aea647.
- Emulator: official BizHawk 2.9.1, MelonDS core, with the original movie's embedded synchronization settings.
- Starts from SaveRAM: the original movie's embedded initial SaveRAM is retained unchanged.
- SaveRAM verification movie: [ThunderAxe31's DS Plants vs zombies, unlock puzzles](https://tasvideos.org/UserFiles/Info/638295394525179844), the verification source used for the published movie.
- UseRealBIOS=False, SkipFirmware=True, FirmwareOverride=True: the core's built-in BIOS/firmware setup is used, without external retail BIOS files.
- UseDSi=False, UseRealTime=False, ThreadedRendering=False, ClearNAND=True, FirmwareStartUp=0.
- InitialTime=2010-01-01T00:00:00; FirmwareUsername=TAS; FirmwareLanguage=1; birthday November 3; favourite colour=2; FirmwareMessage=Melons Taste Great!.

Load the BK2 with its embedded SaveRAM and sync settings. The local full replay used a Windows installation of BizHawk 2.9.1. The pre-existing SRAM verification movie was reused as the published verification source; it was not independently replayed in its entirety during this improvement project.

## Goal and timing

The goal and level order follow the published Puzzle mode branch: all nine finite Vasebreaker levels and all nine finite I, Zombie levels, with levels already unlocked and a pre-bought rake as permitted by the original category setup. Endless modes are excluded.

TAS time is measured from the start of the movie to its last necessary input. At the emulator-reported frame rate of 59.826098288081 frames per second, 42428 frames are 11:49.189 when rounded to milliseconds. The final input is a touch at (199,55), zero-based input index 42427, collecting the final money bag. These times are not PC-category or RTA leaderboard times.

## Improvements in Another Chain Reaction

- The order of two Puff-shroom placements in the third row is swapped while retaining their final planting positions. This produced the first verified six-frame improvement. We did not isolate the exact firing-phase versus RNG cause, so the explanation is empirical rather than a claim about a validated internal variable.
- A Tall-nut stalls one Pogo Zombie in row four until another catches up. One Squash then kills both. The saved Squash is reassigned to a normal zombie in row three, removing a slower kill from the critical path. This added 147 frames of improvement, bringing the total saving to 153 frames.
- The final refinement prioritizes the row-three Squash 60 frames earlier, moves the row-four double-kill Squash 36 frames earlier, changes its landing coordinate from x175 to x200, and reallocates the displaced mushroom placements. This saves another 20 frames, for 173 frames in total.

All frame savings above refer to the successive locally verified candidate movies. The total improvement is measured against the unchanged published reference file, rather than adding unrelated single-level tests.

## Replay verification

The submitted input file has 42428 frames and SHA256 f49b8318d9f63e22226a74ad31a8d1e2a0df2eba9a98b5647b0e875f101910ca.

It passed a continuous replay from the original embedded initial SaveRAM at frame zero through frame 42428, without loading intermediate savestates. Prefix checkpoint screenshots at frames 12000, 24000, 36000 and 42220 matched the reference. The final RAM and screenshot matched the independently tested final-level candidate.

After the final input, all controls were explicitly released and the emulator was advanced to frame 43250. It returned normally to the Puzzle menu. The initial SaveRAM already has all puzzles unlocked/completed, so a menu counter alone was not treated as evidence of this run's completion: the unchanged input prefix, actual final-level play and continuous replay were checked together.

The full replay verifier reported: FULL_REPLAY: PASS boot_to=42428 saved_vs_previous=20 saved_vs_reference=173 menu=18/18 (exit status 0).

## Remaining possibilities

This is a modest improvement to the existing movie, not a claim of a proven theoretical optimum. Earlier-level changes can alter later layouts, so local improvements were accepted only after a complete replay. A later Vasebreaker experiment showed a local saving but failed downstream; an initial-level experiment saved eight frames locally but did not produce a successful three-level or full-run improvement. Neither rejected experiment is included in this submission. The final money-bag pickup at zero-based input 42426 has not been tested; 42427 is the earliest successful pickup in the retained tested candidate.

## Thanks

Thanks to berrimeow for the published TAS and original input file, and to ThunderAxe31 for the SRAM verification movie.


## AI involvement disclosure

The ChatGPT/Codex AI agent selected candidate input edits, generated BK2 variants through Python scripts, and controlled BizHawk through a Python file-command bridge and Lua scripts. It inspected screenshots and replay results, chose experiments and ran frame stepping, touch inputs and batch tests. This was agentic input optimization, not merely AI-written tooling for manually chosen human inputs. The batch scripts executed explicit plans; replaying the final fixed BK2 needs no AI. The human submitter set the goal and directed the research. The first 17 levels remain berrimeow's original inputs; all 173 saved frames are in the last level.

This write-up was also prepared with AI. The movie is submitted for independent verification; local replay success is not claimed as this site's verified status. The full encode continues with neutral postroll beyond the TAS endpoint, so its roughly 12:03 duration is not the 11:49.189 TAS time. The source movie is TASVideos publication #5625 (https://tasvideos.org/5625M), and the related submission is https://tasvideos.org/10789S.
