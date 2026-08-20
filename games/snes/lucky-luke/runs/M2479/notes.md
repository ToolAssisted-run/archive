> **Imported**
> This run was originally published at https://tasvideos.org/2479M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

You're going to watch the most hyped run of the year. Actually the run is such an incredible boring shitload of crap to watch, it deserves to molder in the vault. Half of this game are jump'n run levels, the other half are autoscroller levels. This movie is 2:13.346 minutes faster than [4060S] rejected submission and 39.396 seconds (1969 frames) faster than my testrun.
 
!! Game objectives

* Emulator used: lsnes-rr1-delta18

!! Comments

! Tricks used in this run

;Reduced jumping:Whenever Luke lands on the ground his speed drops to 514 and then increases again. Therefore jumping is reduced to a minimum.

;Subpixel carryover:In levels the subpixel values don't reset to 0 when exiting a section of a level, they stay at the same value as before. So when entering another section of a level either a low or a high subpixel value depending on which direction Luke will run in the next section. Between levels the subpixel values reset.

! RAM addresses

||Address||Type||Description||
|0x7e0046|signed Word|X Speed|
|0x7e004e|signed Word|Y Speed|
|0x7e0042|unsigned Word|X Position|
|0x7e0044|unsigned Byte|X Subpixel|
|0x7e0050|unsigned Word|Y Position|
|0x7e004c|unsigned Byte|Y Subpixel|

!! Stage by stage comments

! Level 1 

This level is pretty much straight forward. It is not possible to drop a dynamite from an enemy to get rid of the small backtracking in this level. No frames were saved in this level compared to my testrun, I actually managed to save a frame, but I lost it due to lag in the beginning of level 2 and even more frames would be lost due to bad enemy RNG in level 2, so I kept the inputs from my testrun.

! Level 2

In this level several objects need to be collected and used in order to finish it. 95 frames were saved in this level.

! Level 3

First autoscroller. I saved 56 frames from my testrun.

! Level 4

In level 4 there are those flying ghost which can hardly be avoided without a massive time loss, however if Luke jumps before they start moving into his direction they move in the opposite direction. Also some glitching is used, on the lamps if the other direction on the D-Pad is pressed on a specific frame Luke will shot a away at high speed, but he can't move off screen, so I needed to wait until the camera catched up. 164 frames were saved in this level.

! Level 5

An underground level. Nothing relevant to say. I saved 75 frames.

! Level 6

The longest autoscroller level. Sadly it's not possible to add much entertainment value into these. 47 frames were saved.

! Level 7

Another straight forward level. I saved a massive amount of frames during the last boss enemy in this level, 402 frames saved in this level.

! Level 8

In this level two wooden boxes need to be collected to see the boss of this level. I tried to jump there with subpixel perfect jumps, but it won't work, so two boxes are needed. Before the boss fight I put a dynamite near him, so that he won't hide soon and can hit him more times in the first part. I couldn't fight the boss in one part. 11 frames were lost, mostly because of the boss.

! Level 9

Another autoscroller. In the first part Luke runs away from the tornado and in the second part he runs towards it, but keeping instantly jumping doesn't make him turn around, this give a little entertainment value. However I lost 7 frames in this level due to lag.

! Level 10

In level 10 there are 5 parts of a totem which need to be found. 122 frames were saved in this level.

! Level 11

Last autoscroller level. No frames were saved.

! Level 12

In this level I couldn't take to much damage, because full health is needed for the final boss of this game. 20 frames were saved in this level.

! Level 13

Last level of this game, which is only the boss. 1006 frames were saved, due to a new strategy fighting the boss.
