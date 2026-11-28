Once again Human + AI + JaffarPlus = Magic

Improvements:
- Better execution in the majority of levels
- New trick: if both players get an extend simultaneously, it skips the second level at first frame
- Boss kill: if you hit it with a normal bubble as it first appears, its HP is greatly reduced

AI Summary:

# Bubble Bobble (NES) "2 players, warps" in 24:17.783 (87,611 frames)

- **Emulator:** quickerNES, in Chimera (nightly 2026-11-27, 1a7758ec) with the quickerNES core package 32b5e4d3; two
  standard controllers.
- **Movie file:** `bubblebobble-87611.chimeraProject`, 87,611 frames from power-on to the last input.
- **Improves [1449M]** (Tompa, adelikat, Bablo, Baxter, CtrlAltDestroy & Cardboard, 24:37.70, 88,808 frames in FCEUX
  2.1.2) by 1,197 frames (19.92 s). On quickerNES 1449M plays in 88,806 frames: its first two rows are idle there,
  because FCEUX's first NMI comes two frames later. So the gameplay difference is 1,195 frames (19.88 s), and the table
  below uses quickerNES frames for both.
- **Goals:** two players; warps (both umbrellas, as 1449M); the secret road and the best ending ("HAPPY END": the door
  opened, both players with lives at the boss's defeat); uses a game glitch; fastest time.

## What we did

- **Tools.** We disassembled the game and rebuilt it as an exact C++ core (lockstep with quickerNES: the whole machine
  identical after every frame), with every routine also lifted into readable C++ for the searches. Each round was
  searched with JaffarPlus from the end of the previous one, keeping 1449M's own line in our timeline as a floor and
  improving on it, then refined one player at a time. Every accepted round was replayed on the exact core and on stock
  quickerNES before the next.
- **Where the time is.** A round ends when its last enemy dies, and then a fixed clear wait and transition follow, so the
  time is in each round's play: 54 stages are faster than 1449M's, 35 tie and 17 are slower, each for a reason given in
  the table. Many rounds are clock-bound: a water round ends when its water bubble spawns, whatever the players do.
- **Clocks.** A faster round moves the next round's clocks: the hurry timer, the NMI counter's phase, the bubble ticker
  and the RNG. 1449M's lines often depend on them. When a faster round broke the next round's best line, we delayed the
  next round by a few frames where that was still faster over both: a player ends the clear wait a few pixels from
  home, which delays the next round's float-in, or a short pause. These are the small losses in the table, each with
  its reason.
- **Clear waits.** After a round's last enemy dies, the game waits 512 frames before the next round, whatever the
  players do. We play every one of them to the music: the dragons blow bubbles only on the note starts of the melody,
  taking turns as their fire rate allows, take the bonus items the enemies left first, then loop through the screen's
  vertical wrap. Each wait keeps what the later rounds depend on (the EXTEND letters, the counters that choose later
  power-ups and the umbrellas, the bubble drift timer), and each was checked by replaying the following round
  unchanged. Three of them (rounds 64, 80 and 88) keep their first frames as searched before, off the music, until
  their EXTEND letters are taken; round 102, which leaves both dragons on a one-way top platform, keeps its earlier
  moves and gets them home by riding their music bubbles up through the top of the screen.
- **EXTEND.** Spelling EXTEND ends a round early. 1449M does it five times (rounds 33, 47, 83, 103 and 106). We kept 33,
  47, 83 and 106, played 103 as a normal round (as fast), and added a double EXTEND in rounds 67 and 68: P1 completes it
  in round 67 and P2 on round 68's first frame, so round 68 is gone: 205 frames saved.
- **The boss: a game glitch, 627 frames saved.** When a bubble pops, the game looks through the enemy slots for trapped enemies
  next to it and bursts them. In the boss round those slots hold the boss's own variables, so a pop beside one of the
  boss's sprites, while its timer has bit 4 set, writes 4 into its hit points (60 -> 4), even before it can be hurt.
  Both players take their cages, gather lightning bubbles beside the boss and fall through them at the right moment;
  the last 4 hit points go on the first frame the boss can be hit, and a player's sprite inside it beats it. (1449M's P1
  dies beside the boss so that its sprite stays there for the final touch; we don't need that.) Our last input comes
  215 frames into the boss round (1449M: 842); the boss's defeat and the ending play with no input after it.

## Stage by stage

Each stage runs from a round's first play frame to the next one's (its play, the clear wait or the EXTEND scene, the
transition); the last runs from the boss's first play frame to the movie's last input. The "end" columns are the frame
each stage ends on, in each movie. The comparison video syncs at the same frames, so its numbers are these.

| Stage | 1449M end | New end | 1449M length | New length | Gain | Total | Notes |
|---|---:|---:|---:|---:|---:|---:|---|
| intro | 795 | 795 | 795 | 795 | +0 | +0 | title and menu: a tie (nothing pressed earlier changes round 1) |
| 1 | 1,567 | 1,564 | 772 | 769 | +3 | +3 |  |
| 2 | 2,343 | 2,331 | 776 | 767 | +9 | +12 |  |
| 3 | 3,105 | 3,093 | 762 | 762 | +0 | +12 |  |
| 4 | 3,899 | 3,881 | 794 | 788 | +6 | +18 |  |
| 5 | 5,141 | 5,122 | 1,242 | 1,241 | +1 | +19 | water round: it ends on a water bubble's spawn |
| 6 | 6,385 | 6,365 | 1,244 | 1,243 | +1 | +20 | water round |
| 7 | 7,126 | 7,106 | 741 | 741 | +0 | +20 |  |
| 8 | 7,874 | 7,854 | 748 | 748 | +0 | +20 |  |
| 9 | 8,678 | 8,658 | 804 | 804 | +0 | +20 |  |
| 10 | 9,919 | 9,898 | 1,241 | 1,240 | +1 | +21 | water round |
| 11 | 11,161 | 11,141 | 1,242 | 1,243 | -1 | +20 | water round (the hurry clock: rounds 10-11 together tie) |
| 12 | 12,404 | 12,384 | 1,243 | 1,243 | +0 | +20 | water round |
| 13 | 13,407 | 13,387 | 1,003 | 1,003 | +0 | +20 | water round |
| 14 | 14,165 | 14,138 | 758 | 751 | +7 | +27 |  |
| 15 | 14,937 | 14,903 | 772 | 765 | +7 | +34 |  |
| 16 | 15,762 | 15,715 | 825 | 812 | +13 | +47 |  |
| 17 | 16,567 | 16,520 | 805 | 805 | +0 | +47 |  |
| 18 | 17,331 | 17,281 | 764 | 761 | +3 | +50 |  |
| 19 | 18,145 | 18,068 | 814 | 787 | +27 | +77 |  |
| 20 | 18,914 | 18,837 | 769 | 769 | +0 | +77 |  |
| 21 | 19,758 | 19,678 | 844 | 841 | +3 | +80 | umbrella: warp to round 26 |
| 26 | 20,565 | 20,463 | 807 | 785 | +22 | +102 |  |
| 27 | 21,374 | 21,274 | 809 | 811 | -2 | +100 | a 3-frame pause lines up round 28 |
| 28 | 22,163 | 22,056 | 789 | 782 | +7 | +107 |  |
| 29 | 22,914 | 22,806 | 751 | 750 | +1 | +108 |  |
| 30 | 23,729 | 23,621 | 815 | 815 | +0 | +108 |  |
| 31 | 24,493 | 24,385 | 764 | 764 | +0 | +108 |  |
| 32 | 25,278 | 25,157 | 785 | 772 | +13 | +121 |  |
| 33 | 26,048 | 25,928 | 770 | 771 | -1 | +120 | P2's EXTEND (1449M too); a frame for round 34's line |
| 34 | 26,807 | 26,687 | 759 | 759 | +0 | +120 |  |
| 35 | 27,593 | 27,476 | 786 | 789 | -3 | +117 | a delay lines up round 36 |
| 36 | 28,366 | 28,250 | 773 | 774 | -1 | +116 | a delay lines up round 37 |
| 37 | 29,157 | 29,041 | 791 | 791 | +0 | +116 |  |
| 38 | 29,984 | 29,868 | 827 | 827 | +0 | +116 |  |
| 39 | 30,820 | 30,704 | 836 | 836 | +0 | +116 |  |
| 40 | 31,828 | 31,708 | 1,008 | 1,004 | +4 | +120 | water round |
| 41 | 32,633 | 32,509 | 805 | 801 | +4 | +124 |  |
| 42 | 33,405 | 33,281 | 772 | 772 | +0 | +124 |  |
| 43 | 34,292 | 34,168 | 887 | 887 | +0 | +124 |  |
| 44 | 35,051 | 34,935 | 759 | 767 | -8 | +116 | a 9-frame delay for round 45's faster line (-25 there) |
| 45 | 35,846 | 35,705 | 795 | 770 | +25 | +141 |  |
| 46 | 36,626 | 36,479 | 780 | 774 | +6 | +147 |  |
| 47 | 37,395 | 37,261 | 769 | 782 | -13 | +134 | P2's EXTEND (1449M too): its last letter drops later in our burst |
| 48 | 38,177 | 38,030 | 782 | 769 | +13 | +147 |  |
| 49 | 39,186 | 39,039 | 1,009 | 1,009 | +0 | +147 | water round |
| 50 | 39,932 | 39,785 | 746 | 746 | +0 | +147 |  |
| 51 | 40,708 | 40,548 | 776 | 763 | +13 | +160 |  |
| 52 | 41,715 | 41,555 | 1,007 | 1,007 | +0 | +160 | water round |
| 53 | 42,480 | 42,320 | 765 | 765 | +0 | +160 |  |
| 54 | 43,275 | 43,107 | 795 | 787 | +8 | +168 |  |
| 55 | 44,055 | 43,885 | 780 | 778 | +2 | +170 |  |
| 56 | 44,800 | 44,623 | 745 | 738 | +7 | +177 |  |
| 57 | 45,616 | 45,439 | 816 | 816 | +0 | +177 |  |
| 58 | 46,364 | 46,180 | 748 | 741 | +7 | +184 |  |
| 59 | 47,102 | 46,918 | 738 | 738 | +0 | +184 |  |
| 60 | 47,822 | 47,638 | 720 | 720 | +0 | +184 |  |
| 61 | 48,565 | 48,378 | 743 | 740 | +3 | +187 |  |
| 62 | 49,320 | 49,139 | 755 | 761 | -6 | +181 | a 5-frame delay lines up round 63 |
| 63 | 50,058 | 49,874 | 738 | 735 | +3 | +184 |  |
| 64 | 51,065 | 50,876 | 1,007 | 1,002 | +5 | +189 | water round |
| 65 | 51,843 | 51,643 | 778 | 767 | +11 | +200 |  |
| 66 | 52,665 | 52,455 | 822 | 812 | +10 | +210 |  |
| 67 | 53,446 | 53,246 | 781 | 791 | -10 | +200 | P1's EXTEND, the double's first half, after a pause that places the letters |
| 68 | 54,390 | 53,985 | 944 | 739 | +205 | +405 | P2's EXTEND on the round's first frame |
| 69 | 55,202 | 54,769 | 812 | 784 | +28 | +433 |  |
| 70 | 55,974 | 55,541 | 772 | 772 | +0 | +433 |  |
| 71 | 56,806 | 56,368 | 832 | 827 | +5 | +438 |  |
| 72 | 57,613 | 57,141 | 807 | 773 | +34 | +472 |  |
| 73 | 58,616 | 58,146 | 1,003 | 1,005 | -2 | +470 | water round: its water spawns a frame later in our clock; a 1-frame delay lines up round 74 |
| 74 | 59,378 | 58,902 | 762 | 756 | +6 | +476 |  |
| 75 | 60,156 | 59,671 | 778 | 769 | +9 | +485 |  |
| 76 | 60,907 | 60,414 | 751 | 743 | +8 | +493 |  |
| 77 | 61,723 | 61,230 | 816 | 816 | +0 | +493 |  |
| 78 | 62,500 | 61,992 | 777 | 762 | +15 | +508 |  |
| 79 | 63,428 | 62,923 | 928 | 931 | -3 | +505 | round 80's line needs that start |
| 80 | 64,170 | 63,661 | 742 | 738 | +4 | +509 |  |
| 81 | 65,113 | 64,598 | 943 | 937 | +6 | +515 |  |
| 82 | 65,884 | 65,361 | 771 | 763 | +8 | +523 |  |
| 83 | 66,676 | 66,163 | 792 | 802 | -10 | +513 | P2's EXTEND (1449M too); round 84's phase |
| 84 | 67,443 | 66,926 | 767 | 763 | +4 | +517 |  |
| 85 | 68,189 | 67,672 | 746 | 746 | +0 | +517 |  |
| 86 | 68,957 | 68,428 | 768 | 756 | +12 | +529 |  |
| 87 | 69,960 | 69,442 | 1,003 | 1,014 | -11 | +518 | water round; a 13-frame delay lines up round 88 |
| 88 | 70,811 | 70,293 | 851 | 851 | +0 | +518 |  |
| 89 | 71,552 | 71,034 | 741 | 741 | +0 | +518 |  |
| 90 | 72,363 | 71,821 | 811 | 787 | +24 | +542 |  |
| 91 | 73,133 | 72,549 | 770 | 728 | +42 | +584 |  |
| 92 | 75,335 | 74,754 | 2,202 | 2,205 | -3 | +581 | water round: the umbrella's last waters, whose spawn comes 3 frames later in our clock |
| 93 | 76,119 | 75,528 | 784 | 774 | +10 | +591 |  |
| 94 | 76,937 | 76,346 | 818 | 818 | +0 | +591 | umbrella: warp to round 99 |
| 99 | 78,038 | 77,447 | 1,101 | 1,101 | +0 | +591 | the door: the secret road to rounds 100-112 |
| 100 | 78,827 | 78,231 | 789 | 784 | +5 | +596 |  |
| 101 | 79,583 | 78,987 | 756 | 756 | +0 | +596 |  |
| 102 | 80,361 | 79,751 | 778 | 764 | +14 | +610 |  |
| 103 | 81,141 | 80,526 | 780 | 775 | +5 | +615 | a normal clear (1449M: P2's EXTEND) |
| 104 | 81,899 | 81,284 | 758 | 758 | +0 | +615 |  |
| 105 | 82,651 | 82,020 | 752 | 736 | +16 | +631 |  |
| 106 | 83,425 | 82,814 | 774 | 794 | -20 | +611 | P1's EXTEND (1449M too), after pauses for the letter and round 107 |
| 107 | 84,186 | 83,567 | 761 | 753 | +8 | +619 |  |
| 108 | 84,955 | 84,336 | 769 | 769 | +0 | +619 |  |
| 109 | 85,741 | 85,194 | 786 | 858 | -72 | +547 | a 72-frame pause: round 110's only line needs that start |
| 110 | 86,559 | 86,019 | 818 | 825 | -7 | +540 | a delay lines up rounds 111 and 112 |
| 111 | 87,309 | 86,769 | 750 | 750 | +0 | +540 |  |
| 112 | 87,964 | 87,396 | 655 | 627 | +28 | +568 |  |
| boss | 88,806 | 87,611 | 842 | 215 | +627 | +1195 | the hit-point glitch; the last input |

## Verification

- The movie replays on stock quickerNES with our exact core in lockstep: the whole machine state is identical after
  every one of its 87,611 frames, and after 700 idle frames more. Those play the boss's defeat (frame 87,665) and the
  start of the ending, whose code takes the best ending's branch.
- It plays in Chimera (nightly 2026-11-27, 1a7758ec, with the pinned quickerNES package 32b5e4d3) with the RAM equal to
  stock quickerNES's at every 250th frame and after the last frame.
- 1449M replays the same way on quickerNES with its first two rows dropped, through its own boss fight.

[1449M]: https://tasvideos.org/1449M
