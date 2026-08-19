> **Imported**
> This run was originally published at https://tasvideos.org/4840M and entered this archive as a voluntary
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

After two short years, we once again find a way to defeat Dracula and its minions in a record time. This TAS builds upon all the techniques and tricks that the community has discovered throughout decades, and adds a few new ones. The main innovations for this movie were (1) the use of a brute-forcing bot to refine execution, (2) clever new ways to use the well-known [https://docs.google.com/document/u/0/d/1vlOruABkiWSLGQA5we1cPI0VDxqRrCMcJGgQWCriD2I/edit|scroll glitch], and (3) a better execution of boss stages.

! Category Rules

* any%, so all is allowed
* Takes damage to save time
* Heavy glitch abuse
* Heavy luck manipulation (uses pausing to influence enemy actions)

! Story

The story of this TAS is divided in two phases, first:

%%QUOTE [eien86]
The project started in February when I started working on adapting my existing bot to support NES games, having had some successes running it for [https://tasvideos.org/7134S|Prince of Persia (DOS)] After connecting the bot to the QuickNES emulator, I decided to try it on Castlevania. After two weeks of unsuccessfully trying to crack the first level on my own, I found that the idea was still too green for such a complex game, and decided to put it on hold.

To improve my knowledge of NES botting, I took on [https://tasvideos.org/7422S|Prince of Persia (NES)], a game I was more familiar with. After finishing that movie in April  and having learned enough (painful) lessons, I felt ready to tackle Castlevania again. This time I decided to get myself embedded in the community and look for guidance. The enormous amount of help I received from the players and former TASers helped me unlock the many hidden complications of the game and start making some serious progress.

Despite never having solved it manually, I ended up learning the deep mechanics of the game, and was even able to make my own humble routing contribution: early orb grab, which saves a few dozen frames after defeating some bosses. After Challenger found a better execution for the scroll glitch in level 2, the project went from just saving a few frames, to shaving entire seconds.

TASing is a rollercoaster of emotions and botting doesn't make any difference to it. Spending many hours and days running the bot to solve a 200 frame segment just for it to fail, crash, or simply give you a non-optimal solution is very discouraging. However, as in TASing in general, perseverance is the key to success. That is what I love about this hobby.

Making the initial version of this movie took around two months of intensive work. The end result, 128 frames saved, was very satisfying. Little did I know that, over the next 3 months, Challenger would totally destroy it with further improvements.
%%QUOTE_END

and then:

%%QUOTE [Challenger]
After finishing both any% and pacifist runs, I wasn't sure if this game could be still improvable despite being aware the scroll glitch wasn't studied completely, and I implemented scroll glitch through trial-and-error - The Nametable Viewer tool from the BizHawk emulator would easily solve every scroll glitch but I never experimented that tool at the time - I made a mistake. 

This glitch definitely has potential and would be definitely useful for real-time runs too, but due to how the setup works, it was only viable for TAS. Some months later (April 2021), natgoesfast discovered a new scroll glitch setup by complete accident while playing in real-time, and almost 2 weeks later SBDWolf managed to replicate in a TAS the new scroll glitch setup. He contacted me about this discovery, leading me to test it too.
We figured out this scroll glitch setup is actually easier to perform, by requiring only turning around at the right time instead of moving every other frame! I realized at the point both any% and pacifist runs now can be improved again.

I could have worked on this game again soon after this new discovery but I was busy with other projects. Meanwhile the Castlevania community studied and researched the scroll glitch even more during some time, opening the doors for new real-time runs.

A year later, eien86 (known for his works/contributions with Prince of Persia 1 and 2) starts a new Castlevania TAS, motivating me to contribute with this project. Initially I only suggested some new ideas such as a better execution for the scroll glitch in level 2 (as he said above). The first version of this project was made through his bot, finishing this run in a month. 128 frames faster than the previous run.

Some days later I started a new version of this project after learning well about using that Nametable Viewer tool I've said earlier. My initial plan was only adding new ideas for the entertainment factor, but during the progress I found new improvements for this game too (actually I didn't even expect to improve this project even further, considering how very solid this game is). After 2 months of work, 272 frames were gained, resulting in a whopping 400 frames faster (around 6.7 seconds) than the previous run. 

EDIT 18/09: After submitting this run, 8 more frames were gained thanks to some new discoveries I didn't realize despite revising this run a lot.

While the previous run was made using BizHawk 2.4 version, this time I used 2.2 version (the same one I've used for the 2018 run) because initially after finishing this project, I planned to resync this run to NESHawk core without having much slowdown, but the idea wouldn't help very well: it would desync on more recent versions of this emulator since NESHawk core is more accurate this time.
Actually I wanted to use the current version of this emulator since the start of this project, but my laptop isn't able to update one of the required programs in order to run the most recent versions of this emulator. Fortunately eien86 got a very good idea for me, helping me to access the emulator through a windows machine in the cloud, allowing me to use the current BizHawk version! Luckily I managed to resync to NESHawk without having much effort, and not losing a single frame from the start until the last input.
%%QUOTE_END

! Improvement Summary

* Optimized and extended use of the Scroll Glitch: We discovered that it was possible to reduce the frames required to execute the glitch to 4 (two L presses, if walking rightwards; two R presses, if walking leftwards). This optimization alone saved several dozen frames throughout the run. 
*New Cave Stage (10-00) Route: we've found a way to completely avoid moving platforms in the cave stage. Described in detail below, this required a much more extensive use of the scroll glitch.
*Early Orb Grab Landing: This is a new use for the scroll glitch initially theorized by eien86 and then refined by Challenger, where spawning platforms at the boss screen allows us to land faster after grabbing an orb. A faster landing enables a faster level transition, which saves a few frames.
* Faster boss kills: Detailed below, we've found ways to beat the Mummies, Death, and the Cookie monster faster.
* Bot: We used a bot to go optimize the established routes and try to polish the execution in many parts where frames could be saved. This included shaving off lag frames.

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
* Doors. Walking through doors are driven by a 16-frame-rule and must be taken into consideration separately. By doing this, we can see what gains were made with respect to the old movie, which were later lost due to a full frame rule not being saved. (Game Mode: 08)
* Stairs. Since these transitions are not frame-rules, we count a transition when the Current Sub Stage number increases by one
* Level End. The level officially ends on landing after grabbing the orb  after killing the boss. (Game mode: 12, Game Sub Mode: 1)
* Movie End. This category's end time is taken at the frame of the last input. 
* Game End. The actual moment when the game ends by grabbing the orb and landing after killing the cookie monster. (Game mode: 12, Game Sub Mode: 1)

! Comparison Movie

Here is a per-level comparison between this movie and the currently published TAS:

[module:Youtube|v=07O0yiQtwp8]

! Time Table
Here is a time table comparing frame timing between this movie and the currently published TAS:
%%SRC_EMBED
   Stage                  Initial  Total  Initial  Total   Stage   Total
   Boot                        0     579       0     579       0       0
     0           0           579     651     579     651       0       0
Transition                  1230     134    1230     134       0       0
     1           0          1364    1612    1364    1612       0       0
Transition                  2976     403    2976     403       0       0
     2           1          3379     521    3379     519      +2      +2
Transition                  3900     406    3898     408      -2       0
     3           0          4306     947    4306     948      -1      -1
Transition                  5253    1076    5254    1079      -3      -4
     4           0          6329     363    6333     363       0      -4
            Transition      6692      18    6696      14      +4       0
                 1          6710     603    6710     607      -4      -4
Transition                  7313     412    7317     412       0      -4
     5           0          7725     698    7729     698       0      -4
            Transition      8423      18    8427      18       0      -4
                 1          8441     524    8445     540     -16     -20
Transition                  8965     411    8985     411       0     -20
     6           0          9376     146    9396     155      -9     -29
            Transition      9522      19    9551      19       0     -29
                 1          9541    1111    9570    1115      -4     -33
Transition                 10652    1179   10685    1181      -2     -35
     7           0         11831     691   11866     703     -12     -47
            Transition     12522      18   12569      19      -1     -48
                 1         12540     811   12588     812      -1     -49
Transition                 13351     412   13400     411      +1     -48
     8           0         13763     709   13811     709       0     -48
            Transition     14472      18   14520      18       0     -48
                 1         14490     842   14538     842       0     -48
Transition                 15332     413   15380     413       0     -48
     9           0         15745    1807   15793    1815      -8     -56
Transition                 17552    1494   17608    1493      +1     -55
    10           0         19046    1537   19101    1613     -76    -131
Transition                 20583     113   20714     113       0    -131
    11           0         20696    1454   20827    1452      +2    -129
Transition                 22150     402   22279     404      -2    -131
    12           0         22552    1163   22683    1172      -9    -140
Transition                 23715    1257   23855    1256      +1    -139
    13           0         24972     567   25111     578     -11    -150
            Transition     25539      18   25689      18       0    -150
                 1         25557     937   25707     952     -15    -165
Transition                 26494     414   26659     415      -1    -166
    14           0         26908     231   27074     231       0    -166
            Transition     27139      18   27305      20      -2    -168
                 1         27157    1404   27325    1433     -29    -197
Transition                 28561     419   28758     422      -3    -200
    15           0         28980     376   29180     376       0    -200
            Transition     29356      18   29556      18       0    -200
                 1         29374    1332   29574    1375     -43    -243
Transition                 30706    1346   30949    1342      +4    -239
    16           0         32052    1511   32291    1511       0    -239
Transition                 33563     134   33802     134       0    -239
    17           0         33697     195   33936     230     -35    -274
            Transition     33892      18   34166      18       0    -274
                 1         33910     869   34184     890     -21    -295
Transition                 34779      25   35074      25       0    -295
    18           0         34804     172   35099     172       0    -295
            Transition     34976    1819   35271    1924    -113  -408
                 1         36787           37195  
%%END_EMBED

!! Level Breakdown

! Stage 00-00

No significant changes have been introduced in this stage.

! Stage 01-00

No significant changes have been introduced in this stage.

! Stage 02-00

No significant changes have been introduced in this stage.

Challenger: While this stage can't be improved due to frame rule, I took advantage of that for another item drop when killing that bat - he drops holy water but it's not possible to grab it because lower height... well, there's a reason why we skipped this subweapon, and I'll explain it.

! Stage 03-00

Here we use the scroll glitch to keep the middle platform at the boss battle, to enable early orb grab. The glitch requires 4 frames, but the trick saves 5, so we get 1 net frame save.

[https://i.ibb.co/chjMgLM/image14.png]

We also removed the use of the stopwatch from the previous TAS, for the purpose of ending the game timer at a lower number, which gave less bonus score, but resulted in 3 fewer frames of post-boss transition.

[https://i.ibb.co/MGhMHjV/image15.png]

Challenger: Yep stopwatch usage adds more time left at the end, and we keep the axe subweapon this time because...

! Stage 04-00

No significant changes have been introduced in this stage.

Challenger: The axe can beat this first room with the same amount of time as when this room was played using holy water.

With axe subweapon this time, we must kill the knight enemy - he normally dies with 2 axe hits but if you hit another enemy on the next frame alongside the first enemy (there a bat in this room too) with a single axe, it will result on a double hit, killing both of them.

Fun fact: An item drop in this room could be possible but unfortunately it would require wasting some frames - that's why holy water was skipped this time, but that item drop on stage 02 was necessary because we need the boomerang at the next item drop from the following room.

! Stage 04-01

No significant changes have been introduced in this stage.

Challenger: Axe sucks in this room, because it won't kill the first knight enemy this time. With this enemy alive, this room can lag at the middle of this room (because another knight enemy spawns, as well as having some candles present) but with some trial-and-error the lag problem can be avoided.

! Stage 05-00

No significant changes have been introduced in this stage.

! Stage 05-01
This is certainly the level where the fun began. The bot found a way to execute medusa skip by 16 frames, exactly enough to catch the previous frame rule at the door transition. The keys to the improvements were a smoother execution of the scroll glitch and getting the medusa skip closer to the exit door, as shown below:

[https://i.ibb.co/m0q1xnm/image9.png]

! Stage 06-00

The second improvement is the idea by Challenger, to remove an extra block from Stage 06-00 to facilitate a faster jump towards the top. Note that every single application of the scroll glitch takes the bot 4 frames. However, the savings from removing this block was enough to save a whole 9 frames.

[https://i.ibb.co/MfDDYC6/image20.png]

! Stage 06-01

The improvements in this stage came from a better execution of the scroll glitch in the Medusa boss room. It's here that eien86 initially came up with the idea of the early orb grab: by scroll glitching an additional block, we could trigger the transition earlier. In the picture below we compare the TASes at the exact frame where the orb is grabbed:

[https://i.ibb.co/TWzVb7p/image24.png]

! Stage 07-00
The saved frames in this stage came exclusively from a better execution of the scroll glitch.

! Stage 07-01

Here we decided to remove the last block before the door to accelerate the descent before activating it. This had no impact on the frame counter since the door enforces a frame rule. However, we kept it because it looks cool.

[https://i.ibb.co/WvdR3hk/image5.png]

! Stage 08-00

No significant changes have been introduced in this stage.

! Stage 08-01

No significant changes have been introduced in this stage.

! Stage 09-00

We added a new instance of the scroll glitch to create a fake platform in the boss' room for one of the biggest early orb catch in the game, saving 7 frames:

[https://i.ibb.co/SQVSfBY/image2.png]

Challenger: I didn't consider testing this instance of the scroll glitch despite testing this glitch on the 2020 pacifist TAS (which has a very different strategy), so the OHKO strategy for this battle is new indeed.

! Stage 10-00

Perhaps the most broken of all stages, the list of differences here is large.
* First, Challenger discovered that there exists a void block that can be glitched in where Simon can stand and save a few frames from the moving platform.
[https://i.ibb.co/ChZV4Vb/image22.png]

Challenger: I waste a boomerang at the start of this stage and didn't pick the big heart despite destroying the candle in order to avoid an almost unavoidable lag frame soon after Simon get out the moving platforms (fortunately it's possible to gain another big heart by killing a fishman on certain frames - item drop). This lag is very weird, because avoiding it requires some trial-and-error and right timing.

* Second, eien86 discovered that, by removing the top stalactite on top, it is possible to exit the cave skip with a jump, which saves Simon from 'clunking', an unavoidable pause he takes when falling from a height. 

[https://i.ibb.co/R9CB1cS/image4.png]

* Third, Challenger found a way to create an artificial 'stair', initially theorized by scrimpeh, that allows us to skip the moving platforms altogether. These blocks are brought into this part of the stage from its very beginning. 

[https://i.ibb.co/zSZCGxy/image12.png]

Challenger: Skipping those moving platforms was only implemented near the end of this project, although I considered implementing it since I started working on the second version of this TAS.

My original idea was build an artificial 'brigde': using the same platform from the previous TAS + adding an extra platform that would allow him skip waiting for the moving platforms. Unfortunately some frames were lost at the end because the setup for the required extra platform was awkward.

This strat was revived later in the progress after discovering that void block timesaver, since you must wait for the moving platforms anyway. 2 frames were gained at the end.

Soon after achieving this holy grail, I optimized this strat even further, changing from a literal 'brigde' to an artificial 'stair' allowing me for a good opportunity to use stopwatch some frames earlier in order to gain some frames at bat skip without waiting at all.

I built another extra platform for the artifficial 'stair' because Simon must land on the middle raised platform sooner because otherwise he would miss the opportunity for another discovered scroll glitch:

* Fourth, Challenger found an additional stair is possible to reach the end earlier.

[https://i.ibb.co/dbxKY88/image6.png]

Challenger: Actually the artificial 'stair' idea was originally theorized here, and the shortcut was discovered soon after I started the work on the second version of this TAS.

! Stage 11-00

No significant changes have been introduced in this stage.

! Stage 12-00

Through botting and manual optimization we achieved a better scroll glitch execution. We also added an early orb platform, for faster level transition:

[https://i.ibb.co/Xpd05s2/image17.png]

! Stage 13-00

The saved frames in this stage came exclusively from a better execution of the scroll glitch.

! Stage 13-01

The saved frames in this stage came exclusively from a better execution of the scroll glitch.

Challenger: I didn't know this room has a hidden multiplier item, which was a great opportunity to increase the entertainment factor, as well as gaining III item at the start of the next stage before getting the axe subweapon.

! Stage 14-00

A change in route is made here, where we grab the axe subweapon (instead of preserving the holy water). This makes the rest of the level a bit harder to solve, but will allow for a faster Death boss kill.

[https://i.ibb.co/nf7zbnq/image23.png]

! Stage 14-01

The saved frames in this stage came from a better execution and a slightly changed route where the scroll glitch is used to enable the upper path, as opposed to going downwards.

[https://i.ibb.co/mvT8MVJ/image3.png]

Challenger: I tested the upper path during my work on both previous any% and pacifist runs, but at the time it looked slower because I thought the required scroll glitch for door glitch would require adding an extra platform, forcing me to lose more time than using the old path and waiting for the axe knight moves away.

! Stage 15-00

No significant changes have been introduced in this stage.

! Stage 15-01

Here we changed the route from using the super-crit on Death to killing it using the axe. Not only is this approach faster on itself, but also has a faster setup since scroll glitching the door out is not required. This strategy was initially suggested by McHazard ([https://tasvideos.org/UserFiles/Info/38216693731293348|movie]) and optimized here by Challenger.

[https://i.ibb.co/nDRFxQz/image18.png]

Challenger: Stage 15 was originally improved thanks to a better execution of the scroll glitch, and later in the progress:

Here comes the decisive moment I should have tried before: if you stun for a while the first axe knight with two axes, Simon can bypass the first axe knight by only a few frames thanks to the same attack pattern manipulation seen on pacifist runs. And the second axe knight is avoided completely by using the same strategy from the 2020 pacifist run, thanks to a frame perfect whip trick.

I was aware of the Death axe strat even before doing my first TAS of this game back from 2017, but bringing axe wouldn't work because axe knights sucks and the crucial whip trick was only discovered three years later. Once reaching the boss, initially I attempted to replicate the same movements from McHazard's movie file but the middle scythe didn't cooperate well. I asked eien86 for help, but we failed to fix that scythe.

I wasn't much satisfied with the result (despite being 8 frames faster than the previous version of this new TAS), so I decided to adjust the strategy by using that axe extra hit idea from stage 04-00 using two of three scythes and one of the candles of this room. 

The boss normally moves to the left after the battle starts, but you can prevent it by hitting him on certain frames so optimizing every attack is important (though pausing the game helps too) in order to deliver the critical hit at the time when he starts to move. The final result is frame perfect strategy (and really satisfying).

This new axe strat is cool but unfortunately lots of points were lost during this and the previous stage.

! Stage 16-00

In this stage, Challenger found that the bats can be manipulated to grab an additional heart and increase the 'kill counter', by killing Bat shots. This approach is crucial for having enough hearts to execute the rest of the route.

[https://i.ibb.co/v3PfXBT/image10.png]

We also grab the stopwatch subweapon for a faster skip in the next stage.

[https://i.ibb.co/7RzZz2V/image1.png]

Challenger: Initially after discovering the 'faster skip for the next stage', 3 frames were sacrified in order to get 2 hearts and the stopwatch by whipping those candles (seen in the screenshot above) before finding about the bat manipulations - it was only discovered after I beat Dracula.

EDIT 18/09: I got another extra heart to save time during the dracula battle.

! Stage 17-00

Here, Challenger discovered that the skeleton bone skip can be made faster by the use of the stopwatch power. This 'wastes' 5 hearts, but this is compensated by the heart gained in the previous stage and the fewer hearts needed in the last boss fight.

[https://i.ibb.co/W2bqDY3/image16.png]

Challenger: Too bad I didn't thought of that before, because adding this strat during the previous TAS would be actually possible since there are enough hearts to recover before fighting Dracula.  

! Stage 17-01

Arguably the most complex of all stages by reasons the casual watcher cannot see. Here, lag frame optimization, kill-count tallying (we need to kill a number of objects and enemies to obtain a triple shot later), heart count optimization, enemy pattern manipulation, health optimization, skeleton skips, and the scroll glitch all intervene. After an initial optimization with the bot, Challenger optimized this stage even further by achieving all the aforementioned goals in a flawless execution. 

! Stage 18-01

The most spectacular save of all, Challenger optimized this fight by inserting two instances of the scroll glitch to entrap the cookie monster and killing it with a much sooner last movie input.

[https://i.ibb.co/khdhYtq/image21.png]

Challenger:

EDIT 18/09 - Phase 1 improvements:

- By throwing the first boomerang with precise positioning and at the right timing before the battle starts, the boomerang will hit him twice as soon as he turns out solid.

- Pausing the game during dracula phase 1 affect both his positioning and pattern, but after finishing this TAS I found out it's actually possible to manipulate a faster pattern for cycle 2 without messing up his positioning by pausing as soon as he respawns - in "ghost" state.

- Using one of the candles will add an extra hit like seen on the previous boss.

- And some adjustments during the second cycle before going to the next phase...

For the first time in 18 years, we have a brand new strategy for phase 2 thanks to scroll glitch, and surprise: it doesn't require holy water this time!

Before phase 2 starts, I throw 2 boomerangs and at the last second I throw a third boomerang for an extra hit as soon as cookie monster appears.

Boomerangs doesn't 'permanently' stun this monster like the holy water so his jump pattern is unavoidable this time, but allows him for a critical hit then I take advantage of the invicibility to throw 3 boomerangs for extra hits before going to the orb location and finish input with the lastest boomerang throw, killing cookie monster just in time. Not only the input ends even earlier but also achieves a faster game completion.

Initially I used only one instance of the scroll glitch but it would require more time for staying away from the cookie monster before the invicibility expires, meaning I would throw 2 boomerangs instead of three, and requiring two jumps before going to orb location. Adding an extra tile would allow him to land near the end of the raised platform. 14 frames were gained between the lastest boomerang shots until the end input.

This scroll glitch was originally discovered during my work on 2020 but I'm not sure why I didn't test it before, although the reachable raised platform was really useful on pacifist run for both Dracula phases.

Fun fact: The jump pattern from cookie monster can be triggered even earlier if you press "B" on certain frames for some reason, and that was useful during the new strategy, combined with timing, positioning and optimizing every attack and boomerang shots before doing that critical hit.

!! Future Work

Although this movie has been extensively refined, we are certain that further improvements are possible. Here are some ideas worth pursuing:

! Glitch Worlds Exploration

In this game, starting to climb a stair is a scripted event. At certain points of the map, if you press Up, you will start climbing up (similarly for climbing down). This is true, even if such stair is no longer graphically present in the screen, due to e.g., scroll glitching, or bad warps (see figure below).

[https://i.ibb.co/C9y8Bbk/image8.png]

However, the finalization of the stair climbing animation is not scripted. Instead, it is regulated by the NES PPU and its collision detection. It is only when Simon hits a solid block that he is allowed to exit the stair. If you by any reason remove such an ending block, Simon will keep on climbing until the next solid block. If no such solid block exists, then he will climb until reaching the limits of the screen. 
Instead of triggering death, reaching the end of the screen will bring you to the next or previous substage, even if such substage doesn't exist. If you are in substage 0, climbing down will take you to substage 255 (-1, when signed). When these substages are not defined, the game will read from garbage when resolving the level:

[https://i.ibb.co/k2pMYp4/image11.png]

We have detected many instances of these glitchy substages which are actually accessible with the help of scroll glitch. These glitchy worlds remain largely unexplored. Their potential is that, interacting with them might (a) modify other parts in memory that allows for a game breaking skip or, (b) trigger stage-changing doors earlier than the route allows.

For anyone (us included) interested in pursuing this possibility, we recommend downloading the [https://www.romhacking.net/hacks/5180/1|rom hack] by bogaa, which allows you to visualize door and stair triggers.

! Better Boss execution
Boss fights are by no means proven to be optimal. There surely remains frames to be saved in the more complex battles.

! Deeper bot exploration
Even though the bot helped a lot in figuring out better executions, this game is still quite complex. Especially when utilizing weapons (and several of them at a time), the exploration space becomes huge. This complicates especially boss fights, where the bot could not find any improvements at all. Either better ways to prune states, or simply waiting for server-grade CPUs to become x10 more powerful in the future could be very useful to improve those fights.

! RTA feasible techniques

A common question in the speedrunning community is whether botting can help in developing more RTA friendly strategies. I have been pondering this question ever since I've been working with the Prince of Persia community. There are no simple answers for this, as it is hard to parametrize 'human feasibility'. However, I believe we are making some progress in this front and hope to get some framework for bot-driven RTA strategizing some year soon.

!! Acknowledgements and Attributions

* Challenger: Authored the second version of this movie, totalling ~272 frames saved, and 8 more frames after submitting this run.
* eien86: Authored the first version of this movie, totalling ~128 frames saved.
* SBDWolf: He was the catalyst for my (eien86) interest in the game. After watching Summoning Salt's video on this game's WR, I took interest in watching runners in Twitch and, if I recall correctly, he was the WR holder at the time. He was kind enough to record his solution of level 1 on the emulator for me. This recording was instrumental for calibrating the bot. He also provided support, hints and ideas during the entire process. I am very grateful for his help.
* scrimpeh: Suggested the 'artificial stairway' on the cave level which Challenger later showed it was faster that current strat, and was overall very helpful in the creation of this movie.
* Trisklion: He was really helpful in providing technical knowledge in all of the (obscure) aspects of the game, and especially the scroll glitch. His help and support was instrumental in bringing this movie to fruition.
* Crem / mooskgah: He came up with the idea of a speedrunning bot, an idea that I (eien86) would have never considered on my own (I consider myself first and foremost a glitch hunter). I was so inspired by his ideas that I decided to take them to the max. Here's the result.
* The Castlevania I Speedrunning community: Many others contributed with ideas, comments and support. In particular, Shockra_Tease, Komrade, Kid Charlemagne, Dating, 2snek, Joshua (RG2084), Xytoriak, Scum, and McHazard.

!! Encoder Information

! Suggested Thumbnails

[https://i.ibb.co/v3PYdkz/thumb1.png]

[https://i.ibb.co/64f32Lg/thumb2.png]

[https://i.ibb.co/8xgZPmz/thumb3.png]


! Console Verification

Unfortunately, this game will prove hard to verify on a console. The reason is that one of its RNG generators depends exclusively on the relation between its 6502 CPU and its PPU. The CPU would loop indefinitely changing its RNG value until an interruption is made by the PPU, at which the last RNG value is produced. As far as we know, this timing cannot be pre-determined even between reboots of the same console.
For anyone willing to take a deeper look, the part of the code where this number is decided is shown here (excerpt taken from this public [https://github.com/josephstevenspgh/Castlevania-Labelled-Disassembly|CV1 labelled disassembly]):

%%SRC_EMBED
MainLoop
    $C030  A5 6F:       lda CurrentRandomBonusId
    $C032  05 1A:       ora FrameCounter
    $C034  29 0F:       and #$0F
    $C036  A8:          tay 
    $C037  B9 3F C0:    lda BonusTable,y
    $C03A  85 6F:       sta CurrentRandomBonusId
    $C03C  4C 30 C0:    jmp MainLoop
%%END_EMBED

It might be possible to nevertheless obtain a verification by attempting to run this solution many times. Only a few enemies' behavior are affected by this RNG (most notably, the spawn side of ghosts in stages 1 and 3), so it might be possible to achieve a verification within a realistic amount of attempts. If you have the time, go for it!
Another possibility is to try and run a hacked version of this game, where this generator is not pegged to the CPU/PPU clocking, but that wouldn't be ideal either.

Challenger: Now the TAS got console verified, thanks to Alyosha:
[module:youtube|v=pbcjnbTd5cU]

! Post-Finish Inputs

By adding an 'A' press at frame 37012, it is possible to end the proper game (Game mode 12, submode 1) one frame faster. However, this results in a movie that is 225 frames larger. The authors believe that encoding such a movie would take away from the beauty of the submitted solution. However, we leave this decision to the encoder's discretion.

! Re-record Count

The submitted movie is a manual resync of a QuickNES-based movie that contained a re-record count of 208678. The re-records performed by the bot are not counted here (impossible to quantify, but would be in the order of 10^11)
