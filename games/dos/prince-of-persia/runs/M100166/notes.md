Once again, the trimph of Human, AI, and Bot. 

This improvement comes as an improvement to my all-time classic: https://toolassisted.run/runs/M4477/ via some techniques I originally missed

- Pausing to let music run out in levels 1 and 7, not allowed by RTA (that's why I missed them) allows for not needing to reset the level (1) and allows for falling faster (7)
- Level 8: a very improbable no-attack 4 times in a row by the guard allows for a quicker drop
- Level 12: A single frame saving by bunny hopping towards the sword

Enjoy!

AI Notes:

# Prince of Persia (DOS) "any%" in 11:57.50 (8598 game ticks)

- **Emulator:** Chimera, nightly 2026-11-23 (89ff7b02), with the SDLPoP game core, nightly 2026-11-25 (c08994a).
  Settings: version 1.4, random_seed 1071298164, fade_frames 64; everything else default. The game files are the
  user's Prince of Persia 1.4, as the project's firmware.
- **Movie:** `PrinceOfPersia-8598.chimeraProject`, 12,330 frames (steps of the game) from power-on.
- **Improves** [5206M] (eien86, libTAS + PCem, 11:59.75 in-game) by **27 game ticks = 2.25 s** of in-game time.
- **Goals:** any%; fastest in-game time (the game's own timer, as 5206M); heavy luck manipulation.

## Timing

The game counts its time in ticks (719 to the game's minute; 5206M's 8625 ticks show as 11:59.75). This movie
reaches Jaffar's death, where the game's timer stops, at **8598 ticks = 11:57.50**. Chimera shows the same count
at 12 ticks a second as `IGT 11:56.500`. The movie itself lasts 13:39.85 on the core from power-on to the last
input (cutscenes, pauses and the ending included); 5206M's real time (13:59.15 on PCem) is not comparable, since
pauses last as long as their sounds on each machine.

## What we did

Every level was re-examined on an exact copy of the game engine (QuickerSDLPoP, checked tick for tick against
Prince of Persia 1.4 running under DOSBox-X) with JaffarPlus: exhaustive searches of each level's ending, every
fight with the guard's luck explored as a free choice, and full-input sweeps of every window of every level. Most
of 5206M turned out to be optimal; five places were not.

- **Level 1 (-8 ticks).** The opening crouch lasts until the level's music ends. Two pauses early in it (the
  music keeps playing while the game is paused) release the prince on tick 10 instead of 19, and no restart is
  needed.
- **Level 7 (-11 ticks, and no End Delay).** The feather potion's slow fall lasts as long as its music. A pause
  on tick 381 lets the music run out while the prince is one row above the floor: he lands softly and everything
  after is 5206M's route, 11 ticks sooner.
- **Level 8 (-5 ticks).** When the guard's four strike decisions at ticks 136-139 fail, he steps forward and turns
  at once, and the knock into the hole lands five ticks sooner.
- **Level 12 (-1 tick).** Crouching while still running (a slide) and one crawl hop reach the sword a tick sooner
  than stopping and crouching.
- **The two End Delays** of 5206M (an extra tick after levels 7 and 9, spent to fix the luck of later levels) are
  gone.

**Luck.** All of it comes from one seed, set at power-on. Every level's luck is reached through the random numbers
the game draws in between: the frame on which each cutscene is skipped (two or three draws a frame), the potion
level's idle ticks, and detours that take the same time but draw differently (in levels 7, 8, 9,
10 and 11). A backward search over all 2^32 seeds found the chain; it needs no tick beyond the sum of the levels'
best times.

**The machine.** A cutscene's fade is not timed by the game: it lasts as long as the machine needs, and every frame
of it draws random numbers. The chain exists for a slow PC, where a fade takes 64 frames (DOSBox-X at 600 cycles
or less); on a fast one (18 frames) the best chain from one seed is one tick slower. The core's `fade_frames`
setting is that machine.

## Level by level

Game ticks of each level, from its first tick to its last (the game's own timer; 5206M's are its DOS ticks, which
sum to its timer's 8625). The level 7 and 9 rows of 5206M include its End Delay tick.

| Level | 5206M | This movie | Gain | Total | Notes |
|---|---|---|---|---|---|
| 1 | 242 | 234 | 8 | 8 | two pauses in the opening crouch |
| 2 | 934 | 934 | 0 | 8 | |
| 3 | 1100 | 1100 | 0 | 8 | |
| 4 | 575 | 575 | 0 | 8 | |
| 5 | 486 | 486 | 0 | 8 | |
| 6 | 217 | 217 | 0 | 8 | |
| 7 | 497 | 485 | 12 | 20 | feather fall cut by a pause; no End Delay |
| 8 | 742 | 737 | 5 | 25 | guard knocked off 5 ticks sooner |
| 9 | 1360 | 1359 | 1 | 26 | no End Delay |
| 10 | 481 | 481 | 0 | 26 | |
| 11 | 818 | 818 | 0 | 26 | |
| 12 | 897 | 896 | 1 | 27 | faster sword pickup |
| 13 | 276 | 276 | 0 | 27 | to Jaffar's death |
| **Total** | **8625** | **8598** | **27** | | 11:59.75 -> 11:57.50 |

## Verification

- The movie replays in Chimera's nightly with the released core package from power-on to the princess; the
  game's tick counter reads 8598 at Jaffar's death.
- The same run, from the same single seed, was played on Prince of Persia 1.4 itself (DOSBox-X at 500 CPU cycles,
  real keyboard input): every level starts on the same random seed and the game's timer shows 49:030 left at
  Jaffar's death = 8598 ticks.
- The level changes on 5206M's own inputs were replayed the same way; its total, 8625, is its published timer.

[5206M]: https://tasvideos.org/5206M
