> **Imported**
> This run was originally published at https://tasvideos.org/5034M and entered this archive as a voluntary
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
After two short years, we once again find a way to defeat Dracula and its minions in a record time, while not hurting any of his demons nor damaging anything in his beautiful castle. This TAS builds upon all the techniques and tricks applied in the [4840M|any% movie], but with extra care not to break anything. In total, 738 frames (12.3 seconds) were saved in this submission.

! Category Rules
* pacifist%, no enemies shall be killed or decor destroyed. Excluded from this rule are end-of-level bosses, whose death is required to advance in the game. Another exception is a trick we use in stage 4, where we whip the knight enemy to paralize him and avoid getting hurt ourselves. Should the viewers and/or the judge deem that the aforementioned trick does not belong to a pacifist category, here we provide an [https://tasvideos.org/UserFiles/Info/638075972720603334|alternate movie] where the trick is not used (which is the same strat from the previous run).
* Pressing B (whipping) is allowed, as long as it does not hit anything (except bosses).
* Takes damage to save time
* Heavy glitch abuse
* Heavy luck manipulation (uses pausing to influence enemy actions)

! Story
The story of this TAS is divided in two phases, the first phase was done by [https://tasvideos.org/Users/Profile/eien86|eien86] and goes as follows:

%%QUOTE [eien86]

My work on this movie started in August 2022 after finishing the any% movie. The goal for this movie was to apply all the lessons learned and new tricks from the any% movie also to this one. Overall my improvements took around 20 full days of work to finish, during which I applied new ideas, suggestions, and help from Challenger.

Overall, the work was made way easier for two reasons:

- 1) Many of the technical problems from botting were already polished out from the any% work.

- 2) Avoiding damage greatly simplifies the exploration space, which makes botting much faster.

As soon as I was done and added some entertaining factor moves, I sent my movie to Challenger for him to do a pass. Of course, as you'll read next, this involved several further mind-blowing improvements.
%%QUOTE_END
The result of the first work phase was 561 frames saved. The watch the partial progress at this point, you can download the  [https://tasvideos.org/UserFiles/Info/638075052204527444|movie file] or simply watch the following [https://youtu.be/2t4d6YtShvY|encode].

Phase 2 of this project was done by [https://tasvideos.org/Users/Profile/Challenger|Challenger] and went as follows:
%%QUOTE [Challenger]
During our work on any% run, I already started checking possible improvements for this category too (found improvements for stage 01 and 10) before the start of the project.

The new Pacifist TAS was started in August (as eien86 said before) at the same time I was finishing and doing the latest revision for the any% run, and like both old 2020 runs the pacifist category shares several improvements from the main category: the execution of the scroll glitch. Like the other Castlevania run, we optimized this game with our great skills and the Jaffar bot contributed a lot for most of the game.

eien86 finished the first draft of the run in a week with some of my contributions, improving the 2020 run by 561 frames. He did a great job that most of the stages were perfectly optimized. Soon after receiving the movie file, I started my work on this category too.

Initially I found some new improvements for stage 09 boss fight, stage 14, optimized the entire Dracula fight, and gained some frames for stage 10. After that, I put this run on hold for a while to focus on some other projects, although I still found two new improvements for stages 09 and 10 during this time.

After some time without being active on this project, I returned to pacifist TAS early December with another new Dracula Phase 2 improvement, later revising the entire run and discovering two new strats for stage 17 extremely late in the progress.

Like the any% run, I used an older BizHawk version and resynched the project to the most recent version of the emulator.
%%QUOTE_END
The result of the second phase is the currently submitted movie, with 177 additional frames saved. In total 738 frames were saved in this new submission, compared to the old one.
! Improvement Summary

* Optimized and extended use of the Scroll Glitch: We discovered that it was possible to reduce the frames required to execute the glitch to 4 (two L presses, if walking rightwards; two R presses, if walking leftwards). This optimization alone saved several dozen frames throughout the run. 
*New Cave Stage (10-00) Route: we've found a way to completely avoid moving platforms in the cave stage. Described in detail below, this required a much more extensive use of the scroll glitch.
*Early Orb Grab Landing: This is a new use for the scroll glitch initially theorized by eien86 and then refined by Challenger, where spawning platforms at the boss screen allows us to land faster after grabbing an orb. A faster landing enables a faster level transition, which saves a few frames.
* Faster boss kills: Detailed below, we've found ways to beat the Mummies, Death, and the Cookie monster faster.
* Bot: We used a bot to go optimize the established routes and try to polish the execution in many parts where frames could be saved. This included shaving off lag frames.
* Removal of lag frames: we (especially Challenger) spent a lot of time reducing these.

!! Software + Hardware

! Rom Information

* Name: Castlevania (U) (PRG0) [!]
* SHA1: A31B8BD5B370A9103343C866F3C2B2998E889341
* MD5:00D93C9F6B8AEFB8B6C02B20147DF4EC

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

Manually resynchronized by Challenger from a EmuHawk 2.8.0 + QuickNES movie.

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar]
* Routing Core: QuickNES
* Platforms: 
** AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.2M States/s)
** 2 x AMD EPYC 7742 Processor (128 cores, 256 threads) + 512Gb RAM (Average Exploration Performance: 2.0M States/s)

!! Timing

! Criteria

We use the following addresses for timing:

%%SRC_EMBED
0x0018 - Game Mode
0x0019 - Game Sub Mode
0x0028 - Current Stage
0x0046 - Current Substage
%%END_EMBED

And the following criteria:

* Start. Starting game sequence, including boot, pressing Start, and the walking scene.
* Cutscenes. After a cutscene, the stage starts when the player gains control of Simon (Game mode: 05, Game Sub Mode: 06)
* Entrance. This is the animation of Simon entering the Castle or the last level's big demon head. (Game Mode: 10)
* Doors. Walking through doors is driven by a 16-frame-rule and must be taken into consideration separately. By doing this, we can see what gains were made with respect to the old movie, which were later lost due to a full frame rule not being saved. (Game Mode: 08)
* Stairs. Since these transitions are not frame-rules, we count a transition when the Current Sub Stage number increases by one
* Level End. The level officially ends on landing after grabbing the orb  after killing the boss. (Game mode: 12, Game Sub Mode: 1)
* Movie End. This category's end time is taken at the frame of the last input. 
* Game End. The actual moment when the game ends by grabbing the orb and landing after killing the cookie monster. (Game mode: 12, Game Sub Mode: 1)

! Comparison Movie

Here is a per-level comparison between this movie and the currently published TAS:

[module:Youtube|v=ry3zDSOQ7E8]

! Time Table
Here is a time table comparing frame timing between this movie and the currently published TAS:
%%SRC_EMBED
   Stage     SubStage  Initial   Total Initial   Total   Stage   Total
    Boot                     0     579       0     579       0       0
     0          0          579     653     579     653       0       0
 Transition               1232     132    1232     132       0       0
     1          0         1364    1712    1364    1586    -126    -126
 Transition               3076     415    2950     413      -2    -128
     2          1         3491      66    3363      66       0    -128
 Transition               3557      18    3429      18       0    -128
     2          0         3575     537    3447     537       0    -128
 Transition               4112      18    3984      18       0    -128
     2          1         4130     344    4002     344       0    -128
 Transition               4474     407    4346     407       0    -128
     3          0         4881     953    4753     951      -2    -130
 Transition               5834    1107    5704    1111       4    -126
     4          0         6941     385    6815     375     -10    -136
            Transition    7326      19    7190      18      -1    -137
                1         7345     600    7208     600       0    -137
 Transition               7945     415    7808     415       0    -137
     5          0         8360     698    8223     698       0    -137
            Transition    9058      18    8921      18       0    -137
                1         9076     536    8939     524     -12    -149
 Transition               9612     415    9463     411      -4    -153
     6          0        10027     155    9874     146      -9    -162
            Transition   10182      19   10020      18      -1    -163
                1        10201    1182   10038    1177      -5    -168
 Transition              11383    1218   11215    1218       0    -168
     7          0        12601     704   12433     692     -12    -180
            Transition   13305      18   13125      18       0    -180
                1        13323     812   13143     812       0    -180
 Transition              14135     413   13955     411      -2    -182
     8          0        14548     708   14366     709       1    -181
            Transition   15256      18   15075      18       0    -181
                1        15274     844   15093     842      -2    -183
 Transition              16118     411   15935     413       2    -181
     9          0        16529    1980   16348    1906     -74    -255
 Transition              18509    1532   18254    1534       2    -253
     10         0        20041    2013   19788    1788    -225    -478
 Transition              22054     113   21576     113       0    -478
     11         0        22167    1453   21689    1453       0    -478
 Transition              23620     403   23142     403       0    -478
     12         0        24023    1254   23545    1245      -9    -487
 Transition              25277    1284   24790    1287       3    -484
     13         0        26561     592   26077     577     -15    -499
            Transition   27153      18   26654      19       1    -498
                1        27171     946   26673     934     -12    -510
 Transition              28117     421   27607     417      -4    -514
     14         0        28538     268   28024     255     -13    -527
            Transition   28806      18   28279      20       2    -525
                1        28824    1455   28299    1402     -53    -578
 Transition              30279     432   29701     421     -11    -589
     15         0        30711     376   30122     376       0    -589
            Transition   31087      18   30498      18       0    -589
                1        31105    1553   30516    1511     -42    -631
 Transition              32658    1378   32027    1380       2    -629
     16         0        34036    1512   33407    1513       1    -628
 Transition              35548     133   34920     133       0    -628
     17         0        35681     230   35053     197     -33    -661
            Transition   35911      18   35250      18       0    -661
                1        35929     883   35268     846     -37    -698
 Transition              36812      26   36114      25      -1    -699
     18         0        36838     355   36139     355       0    -699
            Transition   37193      18   36494      18       0    -699
                1        37211    2905   36512    2866     -39    -738
Movie End                40116           39378                    -738
%%END_EMBED

!! Level Breakdown

! Stage 00-00


No significant changes have been introduced in this stage.

! Stage 01-00

eien86: Here, we implement an improvement originally theorized by scrimpeh, who discovered that using pauses it is possible to activate the scroll glitch while on a stair (previously suspected impossible), as shown in this [https://www.youtube.com/watch?v=bmV10qX4ofM&feature=youtu.be|video]. Using our bot, we discovered that this could be further optimized by pressing L and R with a precise timing to enable the glitch without the need of pausing. With this technique, we were able to open a hole in the next screen without all the troubles that the currently published movie goes through.

[https://i.ibb.co/Cw8FVBB/image3.png]

! Stage 02-00

Challenger: Initially we got an unwanted extra lag frame transition, but by pausing the game before finishing the previous stage, that problem can be avoided.

! Stage 02-01

No significant changes have been introduced in this stage.

! Stage 03-00

The early orb grab from the any% run is implemented here.

! Stage 04-00

Challenger: No significant changes have been introduced in this stage.

eien86: Nevertheless, we chose to damage the knight on top to avoid getting hurt ourselves. He doesn't die, but still technically takes damage. We also provide an [https://tasvideos.org/UserFiles/Info/638075972720603334|alternate movie] where this strat is not used.

! Stage 04-01

Challenger: Same framerule as always, so no improvements can be possible.

! Stage 05-00

No significant changes have been introduced in this stage.

! Stage 05-01

Implemented the same improvements found on the any% run: better execution of the scroll glitch.

! Stage 06-00

Implemented the same improvement found on the any% run: removed an extra block to facilitate a faster jump towards the top. 

! Stage 06-01

Implemented the same improvements found on the any% run, but the scroll glitch was made on a funnier place:

[https://i.ibb.co/nLZcmCX/image1.png]

! Stage 07-00

The saved frames in this stage came exclusively from a better execution of the scroll glitch from the any% run.

! Stage 07-01

Challenger: We removed a stubborn lag frame in the middle of the room thanks to better enemy manipulation.

! Stage 08-00

No improvements were found.

! Stage 08-01

No improvements were found.

! Stage 09-00

eien86: We added a new instance of the scroll glitch to create a fake platform in the boss' room for one of the biggest early orb catches in the game, saving 7 frames. 

Extensive use of the scroll glitch while jumping over an enemy was used. Since it is not possible to turn during a jump, we used precisely timed pauses to activate the scroll glitch without turning, and prevent the game from replacing the block in the next screen.

[https://i.ibb.co/fxNKB6T/image2.png]

Challenger: eien86 really did a great job keeping the scroll glitch effect while crossing the entire stage and triggering the sprite limit glitch from the previous run with proper manipulation and timing, since this stage isn’t easily improvable.

[https://i.ibb.co/jZkx1vn/image5.png]

Challenger: Much less waiting time, better focus, two big critical hits, early orb grab… I’m really satisfied with the new boss fight.

! Stage 10-00

Challenger: While skipping the second moving platform completely isn’t possible at all, the void block we’ve included on the any% run has a significant role this time: we can achieve an alternative shortcut for the middle of the cave if we remove enough blocks and doing a damage boost from the fishman enemy - the fireball attack.

Fun fact: if the void block wasn't so small, the cave skip would be even faster by skipping half of the waiting time for the second moving platform and also reaching the shortcut without that damage boost.

The first half of this stage is very painful to optimize: lag can appear anytime and you must be careful while crossing this first part at the same time you need to perform those scroll glitches.

As soon as Simon jumps out from the second moving platform I repeatedly pause this game to prevent a floor from despawning - this one is required at the end of the shortcut. Due to the nature of the setup, removing the top stalactite at the end of the cave skip won't be possible this time, so the 'clunking' effect when he falls from a height is unavoidable this time.

Before moving forward, we must restore one of the blocks we’ve removed earlier, which is required for another shortcut near the end of the last moving platform section.

While doing the same last scroll glitch from the any% TAS, I added another pausing to avoid lag.


! Stage 11-00

Challenger: Same result as the previous run.

! Stage 12-00

Implemented the same improvements found on the any% run.

! Stage 13-00

Better execution of the scroll glitch from the any% run.

Challenger: With precise timing and a pause manipulation, we carefully removed some lag frames too (only one remained, but this game is stubborn enough to ruin the attempt).

! Stage 13-01

The saved frames in this stage came exclusively from a better execution of the scroll glitch.

! Stage 14-00

Challenger: Pausing the game at the start of the stage delays the axe attack from both axe knights, allowing us to reach the stairs sooner.

! Stage 14-01

The saved frames in this stage came from a better execution and a slightly changed route where the scroll glitch is used to enable the upper path, as opposed to going downwards.

Challenger: As I said on the other run, I tested the upper path during my work on both previous any% and pacifist runs, but at the time it looked slower because I thought the required scroll glitch for door glitch would require adding an extra platform, forcing me to lose more time than using the old path and waiting for the axe knight moves away.

! Stage 15-00

Challenger: no improvements were found, same input from the previous run.

! Stage 15-01

Challenger: If you wait a bit at the start of the room, the first axe knight will walk forward one more time, allowing us to bypass him earlier.

The medusa heads are faster than Simon (and nasty), forcing me to lose some frames just to dodge them.

Because the pacifist TAS doesn’t use subweapons, for the Death boss fight we keep the same strategy from the previous run. Eien86 improved the scroll glitch before entering the battle.

The Death boss fight is improved by doing a faster first attack using the raised platform at the same location where the boss appears, then reducing the waiting time before doing the big critical hit, and pause manipulation after the critical hit isn’t required anymore.

! Stage 16-00

Challenger: This time I decided to add more entertainment for this straightforward stage by manipulating those giant bats through pressing the B button on certain frames.

While it isn't possible to pause the game at the same frame you reach an exit door, stages 00 and stage 16 exits are different and if you pause the game at the exact frame Simon triggers the exit, Simon will progress to the next stage even with the game paused!

For some odd reason you can't control Simon if you pause the game on the same frame he lands on the exit trigger (normally you can gain a frame if you press left), so in order to avoid losing a few frames, Simon jumps a frame later and loses only one frame this time.

! Stage 17-00

Challenger: Because pausing the game isn’t normally possible when the screen blackouts (a.k.a screen transition, the new pause discovery turned out to be an exception.

Actually I found out it’s actually possible to manipulate the skeleton pattern, allowing us for a much faster damage boost positioning Simon very close to the stairs. 
Only discovered extremely late in the progress, this improvement is also faster than the any% run!

Manipulating the skeleton is also possible without the pause trick, but getting the right pattern would require waiting several frames before finishing the previous stage. Curse you skeletons!

! Stage 17-01

We wait several frames before entering this room in order to manipulate the skeletons as soon as the room loads. Double bone tossing is manipulated too for a new (and faster) damage boost recently discovered.

While crossing this room, better execution of the scroll glitch while avoiding some stubborn lags and sacrifice some frames in order to manipulate the direction of the second bird - those birds can reach the end of this room too, and I hate them so much just because you can’t dodge the second one without losing significant time.

! Stage 18-01

Even with the improved scroll glitch, you must wait a bit before starting the Dracula Phase 1 fight because we need a good RNG manipulation for the second cycle.

(actually it's possible to push Simon a pixel further if you climb up the stairs a pixel later, since the Dracula RNG manipulation runs once this room loads. This idea initially worked well because you can enter the battle without waiting at all, but the improvement messed up the first cycle of the Phase 2.)

Dracula Phase 1:

I found out you can still manipulate Dracula (by pausing) as soon as he reappears while he’s partially visible. By manipulating a shorter waiting time for his fireball attack and attacking him with perfect timing and positioning, the second cycle finishes faster.

I tried keeping some health to save time during Phase 2, but unfortunately the Phase 1 battle sucks a lot with the unpowered leather whip.

Dracula Phase 2:

No pausing before the end of phase 1 is required anymore, so we can focus on the first cycle of the cookie monster battle. Pausing the game not only manipulates the jump pattern from the cookie monster but also can delay his initial attack if you pause before he lands, allowing me for an extra ground attack during the third cycle and extending the timing of the fourth cycle.

Before loading the last cycle from phase 1, setting up Dracula position is critical for a faster end input at the end of Phase 2 as the same time we finish the battle a cycle earlier.

Fun fact: the cookie monster fight could be even more faster by removing one of floor tiles, allowing the monster to land slightly lower "inside" one of the floors so Simon can attack twice for each jump. This strategy doesn't work with the leather whip because the collision detection is slightly small enough to miss the extra attack.

The raised platform speeds up several whip attacks, but the leather whip fails if Simon tries to attack while crouched - this isn't a problem with the powererd up whip, and the idea would work well while avoiding to hit that candle.

!! Future Work

Although this movie has been extensively refined, we are certain that further improvements are possible. Here are some ideas worth pursuing:

! Better Boss execution
Boss fights are by no means proven to be optimal. There surely remains frames to be saved in the more complex battles.

! Deeper bot exploration
Even though the bot helped a lot in figuring out better executions, this game is still quite complex. Especially when utilizing weapons (and several of them at a time), the exploration space becomes huge. This complicates especially boss fights, where the bot could not find any improvements at all. Either better ways to prune states, or simply waiting for server-grade CPUs to become x10 more powerful in the future could be very useful to improve those fights.

!! Acknowledgements and Attributions

Same as in the any% movie.

Additional recognition to [https://tasvideos.org/HomePages/scrimpeh|scrimpeh], who theorized the scroll glitch when standing on the stairs.

!! Encoder Information

! Suggested Thumbnail
[https://i.ibb.co/PmyK8Wr/image4.png]
