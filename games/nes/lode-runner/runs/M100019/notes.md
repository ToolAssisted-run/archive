%%TOC%% 

!! Introduction

This is just a small improvement to adelikat's masterpiece, go read that one's notes first:

[10412S]

! Improvement

This one started (and ended) as a small botting study, seeing if I could improve the fine grained execution. 

I started with an improvement to stage01 but quickly found out it is impossible to re-sync the rest of the game due to how sensitive the game is to timing differences between the CPU, APU and PPU. Even pressing a single (not functional) input moves the CPU clock and desynchronizes their interaction.

I quickly realized all I could do is to improve the last part of the movie. For this I had to 'transplant' the entire internal state of NESHawk into QuickerNES, use jaffar on it, and hope the inputs would sync on Bizhawk later. This works for a small segment only, the one I improved.

Given how much effort this small segment took, I reckon a full game solution (both fine grained and routing optimization) would take at least a year.

!! Software + Hardware

! Rom Information

* Name: Lode Runner
* ROM: Lode Runner (U) [!].nes
* SHA1: D456FBFFDF41BBBA327D16CD1D776A6BDEDDB586
* MD5: BEFD5D05EB33F984994230546C2BCFA3

! Emulator

* EmuHawk 2.11.1 (Core: NESHawk)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickerNES
* Platform: 
** 1 x AMD Epyc 9755 (128 cores, 256 threads) + 512Gb RAM
** Exploration Rate: 2.30 Mstates/s 

! AI Agent
* Claude Code (Opus 4.8)
* Game Notes: [https://github.com/SergioMartin86/jaffarPlus/blob/master/examples/nes/lodeRunner/NOTES.md]
* Lessons Learned: [https://github.com/SergioMartin86/jaffarPlus/blob/master/examples/nes/lodeRunner/LESSONS.md]
