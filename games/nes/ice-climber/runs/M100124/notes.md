FORM FIELDS
Game: nes/ice-climber
Category: 1 player
Encode link: https://youtu.be/wTxUKkbaQow
Run time: 20:37.99 (74,402 frames; the movie ends on its last input)
Movie tool: FCEUX 2.6.5
Game file: Ice Climber (USA, Europe, Korea), SHA1 09d97003bf9d676f24a75cf3e1dced28cda3be59
Movie file: submit_ic_1p_condor_74402f.fm2
Authors: iGerry (add anyone else who actually worked on it)

DESCRIPTION
One player clears all 32 mountains and catches the condor in every bonus stage, in 20:37.99 (74,402 frames). That is 1:13.51 faster than the published 1-player TAS on TASVideos (21:51.50, Walker Boh).

Method
Every input comes from a search program. None was entered by hand. The program runs Go-Explore, an exploration algorithm, on a GPU batch NES emulator that plays 65,536 copies of the game at once on each of two RTX 3090 Ti cards. Each mountain is searched separately: the search ends when the climber is caught by the condor, then fast-forwards through the tally to measure the full mountain time. The fastest result is kept, and the next mountain is searched from there. The whole run took about 2.2 × 10^10 emulated frames.
Claude (Anthropic's AI) wrote and operated the search program. iGerry set the goals and made the decisions. (The account "xiaoya" that submitted this run is iGerry's.)

Verification
The movie plays back in FCEUX 2.6.5 with all 32 condor catches and all 31 mountain changes on the same frames as in the search emulator. The emulators differ only on a few frames during transition screens. The encode was recorded in FCEUX 2.7.0, whose per-frame RAM over the whole movie is byte-identical to the 2.6.5 playback.

Notes
- Left and right are pressed together on 6,009 frames. It changes the play only once: a jump on mountain 16 that doesn't bounce off the wall.
- The movie ends on its last input. The climber catches the condor on mountain 32 22 frames later, and the encode continues for about 7 seconds to show it.
- The search is far from optimal. Noxxa's hand-made 1-player WIP (16/32 mountains) is about 5,400 frames ahead at the halfway point. The biggest gap is climbing, and the search doesn't yet deliberately aim for known tricks such as the instant long jump or passing through ceilings while sliding. We're working on it.

This description was drafted by Claude.
