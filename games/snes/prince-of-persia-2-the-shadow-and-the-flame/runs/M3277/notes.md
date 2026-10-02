> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/3277M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.
Prince of Persia 2: The Shadow and the Flame is a platform game originally released on PC (DOS) by Brøderbund in 1993. Unlike the first game (which has been ported to a dozen other systems) this second game has only a few ports such as Macintosh, SNES, and a cancelled/unreleased Genesis version (this game is almost finished except for one flaw which prevents Level 9 to be completed).

The SNES port Prince of Persia 2 is generally regarded as a bad port of a very hard platforming puzzle game. The controls are clumsy, the puzzles are seemingly random, and the player dies very easily. The port also leaves out the last level. Fortunately there is a major bug in the game that allows large parts of it to be skipped. And this new TAS shows for the first time, new bugs exclusive to this SNES port!

!!__Game Objectives__

* Emulator used: BizHawk 1.11.7

* Aims for fastest time (not in-game time, since clear time on final of each level no longer exists on this version).

* Uses death to save time

* Takes damage to save time

* Heavy glitch abuse


This run is 1:53.10 (6797 frames) faster (on Bizhawk, due of more accurate emulation) than Alyosha's 2015 published run, thanks for several new improvements, including much better gameplay optimization, some new bugs, skips on Levels 5, 6 and 7, ghost glitch activated on Level 8 instead of Level 9, and the Shadow and Flame & Jaffar, on Level 13, no longer exists in this run.

Some days before submitting my Prince of Persia SNES TAS, I remembered a glitch (discovered 6 years ago) that works only on lava when rising. And activating this glitch, it's possible to skip most half of Level 5! And during my research to find new ways to activate this glitch without lava, accidentally I discovered 2 big new shortcuts! One just in the first half of Level 6, and the other one close to the exit location in the next Level. After these findings, I started this TAS. During this work, I found much more improvements on this game than when I was working on Prince of Persia 1.


!!!__Table of improvements:__

||Levels|||Frames saved|||Total||
|Level 1 |      14      |  14   |
|Level 2 |      14      |  28   |
|Level 3 |      51      |  79   |
|Level 4 |      78      |  157  |
|Level 5 |      2728    |  2885 |
|Level 6 |      1123    |  4008 |
|Level 7 |      1128    |  5136 |
|Level 8 |      -527    |  4609 |
|Level 9 |      689     |  5298 |
|Level 10|      26      |  5324 |
|Level 11|      626     |  5950 |
|Level 12|      55      |  6005 |
|Level 13|      782     |  6787 |

!!__Stage-by-Stage comments__ (__Every__ level has been improved and gameplay optimized):

*__Level 1__ - After dodging the 4th guard, instead of moving to the left, I stopped movement and pressed up instead, saving 9 frames. Other frames are for better optimization.

*__Level 2__ - The last 2 frames optimized before the final section of the previous Level, changed a bit of RNG for these tiles of the actual Level. Because of this, instead of getting sun, I changed to skull, otherwise, several frames that gained on Level 1 will be lost. A jumping is done on the final tile due to a flaw on this SNES port, which sometimes this game doesn't detect correctly if you are standing on that square.

*__Level 3__ - Notable optimizations, including in the exit room.

*__Level 4__ - Several notable optimizations. Instead of holding down before grabbing the last ledge, I grab first and right after this, pressing down to drop, gaining some pixels, saving 16-17 frames.

*__Level 5__ - Initially, I saved 10 frames before the first climb. After this, I abuse a new glitch that works on rising lava (when a skeleton drops in lava).This bug is possible because of a bad collision detection on lava. Unlike the Ghost Glitch on Level 9, is supposed to be dead and can not press switches or move while using the sword, needing to cancel this glitch, but I cancel this glitch on the room before the bridge, for 2 reasons:

*1 - This room is a checkpoint.

*2 - In other rooms, cancelling this glitch leaves back to the start of this level.

__WARNING__: Do not exit the bridge room until has fallen completely, otherwise, some memory of this game will corrupt, causing a series of platforms 2 levels later to be impossible to catch onto. And you can't use this sword due to this bug.


*__Level 6__ - 3 frames are sacrificed to manipulate and dodging the floating head. After some climbings, instead to go up, I climb on the wrong way and zips in a wall, skipping some paths, allowing to get a lower route instead of a normal route.

*__Level 7__ - Some better optimization and a same skip did on Level 6.

*__Level 8__ - Ghost glitch is activated on this Level. It takes a lot of time, but...

*...__Level 9__ - As the bug has been activated on previous level, I go to the final directly, recovering most of time lost (+ the other time lost recovered on previous level, skipping a tunnel and a snake on Level 8). 139-160 frames gained for this new route!

*__Level 10__ - Some better optimization.

*__Level 11__ - Several new optimizations, better stopping movements, and 2 new routes: one to reduce lag and the other one is a better climbing route choice before the exit switch room (both previous runs chose the left path of the screen likely for safety reasons, however, the floating glitch is still safe even if you climb up using a falling tile located further in the same room). 

__Note:__ After a better first climb, drawing the sword is faster, since the Prince gains enough pixels to do the third climb successfully.

*__Level 12__ - Some better optimization.

*__Level 13__ - Pause is done to force the tile to break much faster. Some optimizations and instead of dying on that last birdman guard, I avoided reaching the next flame. The exit actually opens if you reach this exact position:

[http://i.imgur.com/TQNmDgb.png]

Well, in this screenshot, I tried to dodge again this birdman guard, but it's not possible, forcing me to use a death glitch on this flame, to avoid this guard:

[http://i.imgur.com/5OH63R8.gif]
__Drawing the sword, dying on the flame and now you can sheathe the sword, cancelling the death, partially.__


Due to not having the flame, the fake prince (Jaffar), didn't appear, allowing me to go on exit without wasting time with Jaffar! And the end input is 2-3 frames earlier than Alyosha and Nitsuja's previous TAS.

__Special thanks__ to __Alyosha__ and __Nitsuja__ for their published runs.

!!__Other comments__

Well, I noticed that in the Prince of Persia Sega CD version, the gameplay is similar to the PC version, allowing the possibility of using some skips that I found in an old SprintGod's DOS speedrun. In addition, the Sega CD version, if you pause during the game, you can change the speed of the game and the battles of 3 to 1, making the game faster than any other port. I do not know if this kind of option is allowed on a type of this game on a TAS, but why not make an attempt?
