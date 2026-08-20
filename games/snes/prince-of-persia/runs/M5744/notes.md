> **Imported**
> This run was originally published at https://tasvideos.org/5744M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Introduction
This movie improves on [3271M] by a bit more than a minute thanks for small optimizations all round and a few new tricks (detailed below).

! Category Rules

* Aims for in-game time instead of real-time
* Uses no passwords
* Takes damage to save time
* Uses death to save time (this is hard to notice, but we actually die on level 17 while completing the level)
* Heavy glitch abuse
* Heavy luck manipulation (uses pausing to influence enemy actions)

!! Story

%%QUOTE [Challenger]
First of all, something about the previous run: at the time I worked on this game, I did some mistakes because I wasn't aware the lag was very annoying to optimize, and I didn't use RAM watch or TAStudio to fix it (although I tried to fix it once).

Second, before working on a new TAS, at the start of 2022 I decided to clean the input of the published run so I could use TAStudio smoothly. But the task ended up being a headache for me for one reason: the nature of the lag behavior.

During the process, I found new improvements for the game with the main one requiring the guard (like the DOS version), perfect positioning and timing to skip some sections. The glitch was originally discovered by Shauning and enhanced by me.

After several months, with the 2016 TAS recently cleaned, eien86 decided to work on the new TAS too, in November 2022. Although he submitted some snes runs this year, the Prince of Persia one technically is the first SNES project he has worked on. Using the Snes9x core and the Jaffar bot, we took around a month to create a first draft of the new TAS, beating it by around a minute.

During the year of 2023, I continued the work finding small new improvements and squeezing more lag frames. As I said before, the lag can be a real problem and it means you should redo a level, some levels, or even the whole game just to try gaining a single frame at least. I put this game on hold sometimes just because of the problem. 

The project was finally finished this month and before submitting this game, I decided to resync the project to BSNES core, which took a week.
%%QUOTE_END

%%QUOTE [eien86]
Once again I have the tremendous privilege of working with Challenger (see, for instance [4840M]). I believe we bring the best of each other, each with different sets of skills, but with sheer perfectionism in common. However, although we share the same passion for TASing, he is in another level. He will work in a TAS for years and never give up until it fully satisfies his standards. This level of quality is hard to find and results in true gems.

I watch every TAS we ever worked together in such awe, that it feels as if I hadn't participated. The end result is so beyond my own solo abilities that I just consider myself an accidental contributor. Anyway, I have nothing to add on the technical side, I just hope you enjoy this new instance of such magic. (In my opinion, watching the comparison movie is more entertaining!)
%%QUOTE_END

!! Software + Hardware

! Rom Information

* Name: Prince of Persia (Japan)
* SHA1: DE1D327F90EE57C8B20E2489109638B8632F18F5
* MD5: 6F49DF735CD2CF9D351D549F1CBFDAA9

! Emulator

* EmuHawk 2.9.0 (Core: BSNES)

Manually resynchronized by Challenger from a EmuHawk 2.9.0 + Snes9x movie.

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: Snes9x
* Platforms: 
** AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM 

!! Timing

! Criteria

We use the following addresses for timing:

%%SRC_EMBED
0x0579 - Current Level

%%END_EMBED

And the following criteria:

* Level Start: The first in game frame, as soon as the red zone ends.
* Transition Start: The 'Current Level' value increases by one

! Comparison Movie

Here is a per-level comparison between this movie and the currently published TAS:

[module:Youtube|v=fmS4Uttjlms]

! Time Table
Here is a time table comparing frame timing between this movie and the currently published TAS:
%%SRC_EMBED
                 Old                New                 Diff
    Level       Initial    Total   Initial     Total     Level      Total
     Boot              0      446         0       446         0          0
      1              446     1599       446      1599         0          0
  Transition        2045      200      2045       200         0          0
      2             2245     4775      2245      4797        22         22
  Transition        7020      115      7042       115         0         22
      3             7135     5759      7157      5764         5         27
  Transition       12894      190     12921       190         0         27
      4            13084     3997     13111      4030        33         60
  Transition       17081      104     17141       104         0         60
      5            17185     6133     17245      6131        -2         58
  Transition       23318      105     23376       105         0         58
      6            23423     4791     23481      4795         4         62
  Transition       28214      189     28276       189         0         62
      7            28403     5644     28465      5645         1         63
  Transition       34047      100     34110       100         0         63
      8            34147     5727     34210      6358       631        694
  Transition       39874      182     40568       187         5        699
      9            40056     4112     40755      4284       172        871
  Transition       44168       96     45039        96         0        871
      10           44264     6318     45135      6304       -14        857
  Transition       50582       98     51439        98         0        857
      11           50680     4052     51537      4142        90        947
  Transition       54732       99     55679        99         0        947
      12           54831     3519     55778      3521         2        949
  Transition       58350      182     59299       182         0        949
      13           58532    10271     59481     10725       454       1403
  Transition       68803      181     70206       182         1       1404
      14           68984     6156     70388      6189        33       1437
  Transition       75140       97     76577        97         0       1437
      15           75237     7021     76674      8935      1914       3351
  Transition       82258      190     85609       190         0       3351
      16           82448     5565     85799      5568         3       3354
  Transition       88013      102     91367       102         0       3354
      17           88115     2295     91469      2318        23       3377
  Transition       90410      105     93787       106         1       3378
      18           90515    11708     93893     11725        17       3395
  Transition      102223      104    105618       104         0       3395
      19          102327    11520    105722     11566        46       3441
  Transition      113847      171    117288       170        -1       3440
      20          114018     3174    117458      3266        92       3532
  Last Input      117192             120724
%%END_EMBED

!! Level Breakdown (Notes by Challenger)
! Level 01


No improvements.

! Level 02


Different route between the first and the second guard. Better optimization on the rooms before the third guard. 

More optimization on the three rooms immediately after skipping the last guard and another one before going to the switch room.

! Level 03


A little improvement between the deadly trap and the last gate.

! Level 04


Different strategy at the beginning, a completely new strategy for the first guard and a little optimization at the end.

! Level 05


Different strategy for the automatic gate switch, a new strategy during the return until first guard skip (costs some real-time frames because guard appears on the next screen, but gains a few in-game time frames), and got a better rng for the second guard skip during the return after mirror path.

This isn't included in this TAS, but we found a faster strategy for the second guard skip that prevents him from appearing on the next screen. It saves over a second (because lag), but unfortunately it costs some in-game frames.

We tried and tried finding a new strategy without losing in-game time, but no success after all. That guard is very annoying for sure.

! Level 06


Between the first and second guard skip, different second jump pattern for lag reduction.

We worked on a new strategy for the boss fight, killing her slightly faster.

! Level 07


No improvement, though the second-to-last room fixes a little mistake from the old run.

! Level 08


This time we have a big improvement for this level: we skip the first guard and one of the required gate switches in the middle of the level through a complicated setup, positioning, and a gate glitch, gaining some seconds.

Soon after the glitch, we skip a ledge grab since he has extra health this time.

The second guard fight isn't killed this time, because eien86 found an interesting strat that reduces the falling down time (there's a similar strat with the skeleton from level 3) when returning to the exit room.

! Level 09


Different running jump patterns between the first two rooms in order to do a running jump on the third room instead of a stop+normal jump, reaching the gate switch earlier (requires perfect position)

Some frames gained before boss room thanks to a nice trick that allows you to run into gates a bit earlier than intended.

For the boss fight, first of all if you manage to enter the fight with very precise positioning, the enemy will be pushed forward. Second, we skip the fight thanks to a very complicated setup and requires a good RNG in order to work properly.

! Level 10


Some better rng thanks to aiming for in-game time instead of real-time, as well as skipping two skeleton defeats.

! Level 11


Improved guard skip and the second gate, as well as optimizing some lag.

! Level 12


Optimized the second guard, on the path before chompers, normal jump instead of running then falling down.

We also aimed for in-game time instead of real-time by optimizing some running jumps before going to the room with several loose tiles, skipping a ledge grab for the next room.

An in-game frame boss fight is lost this time due to different RNG.

! Level 13


eien86 found a very nice strat with the first guard, requiring an extra damage to fall down earlier and skip a ledge grab and half. He also improved the second guard by not sheathing the sword then doing a normal jump - the new strat is simply walking backwards until you fall down safely.

Before working on the project, I found a way to open "that automatic gate switch" and return to the previous room before the gate closes completely, resulting in another big improvement for this run. eien86 and I improved it further during the project.

The next two gates were improved thanks to better knowledge of the gameplay.

! Level 14


Stopping + doing a normal jump on the third room isn't necessary thanks to the new first guard skip. For the second guard, we keep walking backwards this time to gain in-game time.

This time it's possible to skip the third guard instead of killing him.

Little improvement for one of the latest rooms.

! Level 15


Here comes the biggest improvement of the run: it's possible to skip most of the level with a very difficult gate glitch.

The objective is luring the guard past the chompers with some backtracking, since this version prevents you from bypassing while walking backwards with the enemy.

To make things even worse, the narrow spacing between the chompers will ruin the plan. We tried and tried and tried to find a solution, without success. But at least this skip saves a great amount of time!

Some frames gained between the room before prince mirror and when he appears after returning (eien86 found a way to avoid the sword pattern)

! Level 16


Improved start, guard skip and the boss fight.

! Level 17


Select menu before the fight starts works well, giving us a better pattern for the falling skulls before skipping the fight.

! Level 18


We gained an in-game frame after the second gate, improved the first and second guard but got a bad RNG for the third guard, losing an in-game frame.
 Little improvement after the exit switch and gained time improving the latest guard.

! Level 19

Improved a frame second room, gained two frames during the first backtracking and recovered the good pattern for the first enemy boss rush.

! Level 20


eien86 improved the first phase of the Jaffar fight.

!! Opportunities for Improvement
! Better Lag Management

Although we made quite an effort to reduce lag frames, the game insisted on punishing us with them. Some levels ended up being slower than the published movie for this very reason. A full bot-driven re-work of this movie could perhaps help in this regard.

! Full-Game RNG Manipulation

In [5206M], the RNG was manipulated for the entire game to produce a 'perfect movie'. Doing something like that in this game would squeeze a few more frames (particularly in guard fights). However, it seems almost impossible with the current technology since this game is much longer and the emulation much costlier. Nevertheless, it remains a possibility. 

!! Suggested screenshots

77237
[https://i.ibb.co/m8jnxvq/image4.png] 

43640
[https://i.ibb.co/nbk2mX7/image3.png] 

37064
[https://i.ibb.co/6HVK3bf/image2.png] 

78836
[https://i.ibb.co/JzDNNFN/image1.png] 

!! Other comments

Challenger: Like the second game of the SNES version, this project ended up being frustrating just to spend a great amount of time attempting to squeeze frames, and sometimes you spent days just to notice the game is really stubborn. But for the other side, I'm glad I have a more polished work this time and to see new glitches despite being used on some levels.

If someone is interested to see the original work done on Snes9x before the BSNES resync, here's: https://tasvideos.org/UserFiles/Info/638379969965662474

!! Encoder information
Please use the following userfile for encoding; it contains further end-of-movie inputs.
https://tasvideos.org/UserFiles/Info/638377954437300473

!! RAM Map

Found here [https://tasvideos.org/UserFiles/Info/638218291637079174]
