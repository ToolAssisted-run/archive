# Lode Runner (NES) "any%" in 13:08.917 (47,413 frames)

A few months ago, I submitted an 8 frame improvement for this game to a popular TAS site. The site rejected my submission, and then the original author (the site owner) took my intellectual property (the exact level and sections where these 8 frames were obtainable) and made his own variation of my movie, without giving me any credit. His new movie wouldn't have been acceptable (not an improvement), had mine not been arbitrarily rejected. Any reputable TASer would consider that petty at best, and; plagiarism, at the worst.

NOT that any of that matters because **toolAssisted.run is the future of TASing** and this movie shows who is the best. 

This movie was made by the holy trinity: an expert human taser, a frontier AI agent, and a powerful brute forcing bot (jaffarPlus)


**Emulator:** BizHawk 2.11, NesHawk core (default sync settings, one standard controller).
**Movie:** `lodeRunner-47413.bk2`, 47,413 frames.
**Improves:** [7345M] by adelikat (49,296 frames, 13:40.249) by **1,883 frames (31.332 seconds)**.
**Goals:** the same as 7345M: all 50 levels, as fast as possible. The movie ends on the frame level 50 is completed.

## What we did

The game was disassembled and documented completely. Two fast C++ cores were built from that work:

- one exact to BizHawk's NesHawk, instruction by instruction;
- one timing-free, for analysis.

Every search ran on the exact core. Every result was replayed on NesHawk before it was kept.

**The enemies are the clock.** In Lode Runner a tick of the game is not a frame. The enemies' path search runs in every
tick, and how long it takes depends on where the enemies stand. In most levels it is the largest share of the time
(up to 78 % of the ticks' cycles on level 44). So the fastest route is the one that keeps the enemies on cheap tiles,
not only the shortest walk. A few frames of waiting early in a level can save many more later:

- On level 9, waits of 30 and 20 frames make the rest of the level about 120 frames shorter.

**A new route search**: a beam search over frame inputs on the exact core. It plays a level anew, guided by the order
  of the golds and the holes, and measures the enemies' lag by itself. The search was then repeated around its own
  best line until it stopped gaining. It found faster lines on levels 3, 4, 6, 11, 19, 39, 43 and 44 (level 44: 152
  frames).

**The speed levels.** 7345M plays levels 14, 32, 34 and 47 at game speed 4 instead of 1, because only there could it
skip the level's opening scroll (the pan). This movie skips the pan at faster speeds:

- **Level 14** at speed 3, and **level 32** at speed 2: the skip is live at these speeds when the previous level ends in
  the right state.
- **Levels 34 and 47** at speed 1: the skip pressed as Select+A, on a start tile where a dig is legal, works on any pan
  frame at any speed. Level 47's opening, up a ladder through a descending enemy, needed a frame-by-frame search after
  that start.

Together the four levels save 675 frames.

**Transitions.** Each level's end and the next level's start were searched frame by frame, with every ignored button
tried. Pressed buttons move the CPU's phase by a cycle, which decides whether the menu's and the stage screen's draws
lose a vblank, and when the pan skip is live.

## Level by level

Frames at which each level is completed (the level counter changes), on BizHawk 2.11 NesHawk:

| Level | 7345M ends | New ends | 7345M level | New level | Gain | Total | Speed (7345M) |
|---:|---:|---:|---:|---:|---:|---:|:---|
| 1 | 737 | 735 | 737 | 735 | +2 | +2 | |
| 2 | 1573 | 1539 | 836 | 804 | +32 | +34 | |
| 3 | 2313 | 2239 | 740 | 700 | +40 | +74 | |
| 4 | 3108 | 2990 | 795 | 751 | +44 | +118 | |
| 5 | 3739 | 3627 | 631 | 637 | -6 | +112 | |
| 6 | 5098 | 4877 | 1359 | 1250 | +109 | +221 | |
| 7 | 5910 | 5677 | 812 | 800 | +12 | +233 | |
| 8 | 6660 | 6422 | 750 | 745 | +5 | +238 | |
| 9 | 8099 | 7777 | 1439 | 1355 | +84 | +322 | |
| 10 | 9024 | 8703 | 925 | 926 | -1 | +321 | |
| 11 | 9676 | 9304 | 652 | 601 | +51 | +372 | |
| 12 | 10668 | 10281 | 992 | 977 | +15 | +387 | |
| 13 | 11574 | 11142 | 906 | 861 | +45 | +432 | |
| 14 | 12641 | 12123 | 1067 | 981 | +86 | +518 | 3 (4) |
| 15 | 13722 | 13193 | 1081 | 1070 | +11 | +529 | |
| 16 | 14439 | 13900 | 717 | 707 | +10 | +539 | |
| 17 | 15605 | 15053 | 1166 | 1153 | +13 | +552 | |
| 18 | 16797 | 16221 | 1192 | 1168 | +24 | +576 | |
| 19 | 17447 | 16783 | 650 | 562 | +88 | +664 | |
| 20 | 18363 | 17676 | 916 | 893 | +23 | +687 | |
| 21 | 19521 | 18810 | 1158 | 1134 | +24 | +711 | |
| 22 | 20425 | 19702 | 904 | 892 | +12 | +723 | |
| 23 | 21789 | 21065 | 1364 | 1363 | +1 | +724 | |
| 24 | 22556 | 21819 | 767 | 754 | +13 | +737 | |
| 25 | 23443 | 22671 | 887 | 852 | +35 | +772 | |
| 26 | 24670 | 23886 | 1227 | 1215 | +12 | +784 | |
| 27 | 25882 | 25062 | 1212 | 1176 | +36 | +820 | |
| 28 | 27019 | 26188 | 1137 | 1126 | +11 | +831 | |
| 29 | 28423 | 27579 | 1404 | 1391 | +13 | +844 | |
| 30 | 29479 | 28629 | 1056 | 1050 | +6 | +850 | |
| 31 | 30004 | 29152 | 525 | 523 | +2 | +852 | |
| 32 | 31080 | 30067 | 1076 | 915 | +161 | +1013 | 2 (4) |
| 33 | 32026 | 30998 | 946 | 931 | +15 | +1028 | |
| 34 | 33211 | 31952 | 1185 | 954 | +231 | +1259 | 1, dig start (4) |
| 35 | 34198 | 32909 | 987 | 957 | +30 | +1289 | |
| 36 | 35096 | 33801 | 898 | 892 | +6 | +1295 | |
| 37 | 36211 | 34908 | 1115 | 1107 | +8 | +1303 | |
| 38 | 37395 | 36088 | 1184 | 1180 | +4 | +1307 | |
| 39 | 37991 | 36647 | 596 | 559 | +37 | +1344 | |
| 40 | 39312 | 37952 | 1321 | 1305 | +16 | +1360 | |
| 41 | 40409 | 39031 | 1097 | 1079 | +18 | +1378 | |
| 42 | 41744 | 40337 | 1335 | 1306 | +29 | +1407 | |
| 43 | 42445 | 40992 | 701 | 655 | +46 | +1453 | |
| 44 | 43365 | 41760 | 920 | 768 | +152 | +1605 | |
| 45 | 44269 | 42655 | 904 | 895 | +9 | +1614 | |
| 46 | 45194 | 43568 | 925 | 913 | +12 | +1626 | |
| 47 | 46538 | 44715 | 1344 | 1147 | +197 | +1823 | 1, dig start (4) |
| 48 | 47443 | 45603 | 905 | 888 | +17 | +1840 | |
| 49 | 48429 | 46579 | 986 | 976 | +10 | +1850 | |
| 50 | 49296 | 47413 | 867 | 834 | +33 | +1883 | |

"Level" is the time from the previous level's end to this one's end: the tally, the menu, the stage screen, the pan
and the play. The comparison encode syncs at the start of each level's play instead, so its per-level numbers differ
from these; the total is the same.

## Verification

The movie was replayed on BizHawk 2.11's NesHawk core, built from the 2.11 tag and run headless. Its RAM equals our
emulator's on every one of the 47,413 frames, and the level counter wraps from 50 on the last frame. 7345M replays the
same way, to its 49,296th frame.

[7345M]: https://tasvideos.org/7345M
