# Bloxorz (Flash) — All Stages in 11:05.139

## Goal and timing

This tool-assisted run completes all 33 stages from New Game, in order, without passwords, major level skips or deaths. The timed libTAS movie contains 23,945 input frames at 36/1 FPS: 665.138888889 seconds, displayed as 11:05.139.

The video is a new recording of the unmodified original game, not an edit of the reference encode. It includes the entire input sequence and 240 additional neutral observation frames, so its duration is 671.805556 seconds. Those final observation frames show the last animation and completed-game transition and are excluded from the input-movie time. Flash's generic system rate must not replace this movie's explicit 36 FPS.

## Attribution and methods

This is a derivative improvement of sobble_p's Bloxorz All Stages TAS, TASVideos publication https://tasvideos.org/4924M and submission https://tasvideos.org/7772S (24,183 frames, 11:11.750). A substantial portion of the original input movie is retained. sobble_p is credited for the original routes, inputs and baseline work; no endorsement or participation in this new project is implied. The source publication is available under CC BY 2.0: https://tasvideos.org/SiteLicense and https://creativecommons.org/licenses/by/2.0/ .

Authors credited for this derivative run: mhyyyyyy (project direction and new AI-assisted optimization) and sobble_p (retained original routes and input movie).

The new research, model implementation, search, input construction and validation were carried out with an OpenAI Codex AI coding agent under the submitting user's direction. This assistance is disclosed explicitly; the AI is a tool, not an additional human author. The notes do not claim the submitting human manually designed the routes or implemented the algorithms.

Rules were extracted from this SWF's ActionScript and calibrated against native game trajectories. Unit-cost BFS, animation-weighted shortest paths and frame-state searches were used within explicitly bounded models. Original game replays received only keyboard/mouse inputs; no block positions, bridges or timers were written. Observation-only SWFs were separate research copies and were not used for the encode.

## Improvements

Compared with sobble_p's movie, 238 frames (6.611111 seconds) are saved:

| Stage | Frames saved |
| --- | ---: |
| 9 | 2 |
| 10 | 27 |
| 15 | 58 |
| 16 | 8 |
| 19 | 34 |
| 20 | 15 |
| 22 | 35 |
| 24 | 1 |
| 26 | 58 |

Stage 8 also removes an unnecessary hidden half-block movement, saving no time. The final counter is 2,011 moves and zero falls. Time, rather than move count, is optimized; for example the latest stage-15 revision uses more moves but reaches its goal earlier.

## Reproduction and verification

Use libTAS 1.4.4 with Ruffle nightly-2022-10-28, Linux x86_64. Movie timing is 36/1 FPS; main-thread time tracking uses clock_gettime_monotonic only. Use an independent clean profile and the original game identified below. Game data and emulator binaries are not attached.

Game filename: 1843__bloxorz_miniclip.swf
Game SHA1: 3f1463358fab2a0b483b65b0852cb98b96172153
Game SHA256: 296c5c17b7a7b6529f6b8faa19aae78ebf4382c161c07e5070ab338fd8264803
Ruffle executable MD5: 9dc5d7e3022eab4e560a1f5f2b9dff8a
Ruffle executable SHA256: 6676b14a170a73bff67b01c56f5e174948510fbe94bee7468ee78334b4dca53c
Verified source movie SHA256: 80586375857e23d22e9bf6936e76a440c9f7d0319f5166c13e2102e16c20d3db
Submission-compatible movie SHA256: 82db35b651ed8996a37c39cdaf8746328df3040719d73f461306f6e5fc89812d

The main attachment is a submission-compatible copy of the verified 23,945-frame movie. Only whitespace around config.ini equals delimiters was removed because this archive's current inspector ignores keys with trailing spaces. Every input byte, every parsed configuration value, and the editor/annotation member contents are unchanged. The exact accepted source movie is also attached, together with the container comparison proof. The archive inspector now confirms 23,945 frames at 36 FPS and 665.138888889 seconds. A supplementary copy adds 240 neutral frames solely for observing completion; do not use that longer length as the submitted time. Neither movie depends on savestates, passwords or a pre-existing save.

One observation run and two independent unmodified-game cold starts each replayed all 24,185 frames and exited normally. All decoded video frames, PCM audio, input bytes and 36 Hz frame clocks matched. Every stage completed in order. The merge validator compared 1,411,955 previously observed state fields, shifting only prior-stage absolute time and cumulative move counts. This finite comparison does not prove equality of every hidden state for every possible input.

The final goal occurs at AVM clock 23,952, winning at 23,960 and the all-33-completed transition at 23,996. These clock values and the final neutral tail are separate from the claimed input-movie length. A CSV supplies per-stage event times.

This is a verified improvement over the named reference, not a proof of complete native-input optimality or a claim of external verification by this archive.
