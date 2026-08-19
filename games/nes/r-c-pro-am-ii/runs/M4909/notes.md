> **Imported**
> This run was originally published at https://tasvideos.org/4909M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

R.C. Pro-Am II is an extremely fun 4-player racing game. Besides its fast-paced racing action, it contains upgrade mechanics which allows players to improve their remote-controlled cars throughout the game's 36 race circuit. 

This movie was produced in two parts: (1) the [https://tasvideos.org/UserFiles/Info/47117049451414724|first 24 races] and the entire upgrade optimization were solved by [https://tasvideos.org/Users/Profile/FatRatKnight|FatRightKnight] back in 2018 and (2) the rest of the last 12 races were solved now by eien86 using a routing bot and the help of [https://tasvideos.org/Users/Profile/ktwo|ktwo]

! Objectives

* Aims for shortest movie
* Heavy luck manipulation

! Story

%%QUOTE [eien86]
The reason I started working on this movie was pure serendipity. After finishing my Castlevania [https://tasvideos.org/Forum/Topics/23490|movie], [https://tasvideos.org/Users/Profile/Alyosha|Alyosha] contacted me to see if I could improve the boss fight of Ironsword 2 (spoiler alert: [https://tasvideos.org/Forum/Topics/23501|I could]). 

At this point, ktwo noticed that I was open to challenges, so he brought to my attention the [https://tasvideos.org/227G|NES Solar Jetman] TAS. This game contains a warp that allows you to skip a few stages. The thing is that, although the warp can be manipulated to skip even more stages, nobody was able to enable this efficiently. So ktwo asked me to run the bot to see if I could find an efficient solution (spoiler alert, I did -- movie upcoming).

While we were working on Solar Jetman, ktwo insisted that I should check this game, as FatRightKnight had gone almost all the way but did not finish it. At first, I was reluctant because I thought the bot would fare badly in racing games. However, in the end he persuaded me and I started experimenting with it. After successfully running race 1 faster than the current TAS, I was convinced that this was a feasible project.

I worked for a few busy weeks on this project and I am content with the result. Not delighted, only content. There are many ways in which this movie can be improved, and I most surely pursue them in the future. However, I am happy that I could bring FRK's work to light, as it shows how much he put into this game, and it would have been a disservice to him if I had replaced the entire movie at once. 
%%QUOTE_END

!! Software + Hardware

! Rom Information

* Name: R.C. Pro-Am II
* SHA1: FA189FC0F9277D5765E5DE19274AFBD28660F076
* MD5: 9C90901268702B79510B4F742FF9D4C6

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar]

* Routing Core: QuickNES - Save states manually transplanted from a Bizhawk state.

* Platform 1: AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.0M States/s)

* Platform 2: 2 x AMD EPYC 7742 Processor (128 cores, 256 threads) + 512Gb RAM (Average Exploration Performance: 1.75M States/s)

!! Timing

! Criteria

We use the following addresses for timing:

%%SRC_EMBED
0x06E2 - Traffic Light Timer
0x0397 - Race Status
%%END_EMBED

And the following criteria:

* Boot. All the frames from power-up until the start of the first race.

* Race. A race starts as soon as the Traffic Light Timer's value becomes 64, indicating a green light. A race ends when the Race Status flag changes from 2 to 1.

* Bonus Challenges. After races 8, 16, 24 and 30 there is a bonus challenge where the player needs to tap L/R repeatedly. The same rules of timing as a normal race apply here.

* Transition. A transition starts as soon as a race ends. This segment includes the results screen and all the shopping made in between races.

* Movie End. This movie's end time is taken at the frame of the last input. 

* Game End. The actual moment when the last race ends. An alternative movie is provided that optimizes this goal instead.

! Time Table

%%SRC_EMBED
  Segment  Initial Total
   Boot          0     605
  Race 1       605    1964
Transition    2569     700
  Race 2      3269    2088
Transition    5357     629
  Race 3      5986    2620
Transition    8606     817
  Race 4      9423    2084
Transition   11507     714
  Race 5     12221    3251
Transition   15472     734
  Race 6     16206    3136
Transition   19342     646
  Race 7     19988    2677
Transition   22665     637
  Race 8     23302    3366
Transition   26668     613
Challenge 1  27281      64
Transition   27345     720
  Race 9     28065    1428
Transition   29493     630
  Race 10    30123    1660
Transition   31783     636
  Race 11    32419    1635
Transition   34054     644
  Race 12    34698    2138
Transition   36836     632
  Race 13    37468    1837
Transition   39305     638
  Race 14    39943    2736
Transition   42679     637
  Race 15    43316    2840
Transition   46156     771
  Race 16    46927    2346
Transition   49273     600
Challenge 2  49873     293
Transition   50166     718
  Race 17    50884    1282
Transition   52166     646
  Race 18    52812    1881
Transition   54693     786
  Race 19    55479    1567
Transition   57046     634
  Race 20    57680    1742
Transition   59422     643
  Race 21    60065    1691
Transition   61756     648
  Race 22    62404    2321
Transition   64725     635
  Race 23    65360    3721
Transition   69081     637
  Race 24    69718    4082
Transition   73800     599
Challenge 3  74399      64
Transition   74463     716
  Race 25    75179    1507
Transition   76686     667
  Race 26    77353    1586
Transition   78939     636
  Race 27    79575    1549
Transition   81124     637
  Race 28    81761    1678
Transition   83439     641
  Race 29    84080    1564
Transition   85644     649
  Race 30    86293    1678
Transition   87971     606
Challenge 4  88577     295
Transition   88872     661
  Race 31    89533    2099
Transition   91632     641
  Race 32    92273    2070
Transition   94343     644
  Race 33    94987    1706
Transition   96693     645
  Race 34    97338    1770
Transition   99108     648
  Race 35    99756    1760
Transition  101516     632
  Race 36   102148    2286
 Movie End  104434      91(*)
Transition  104525
%%END_EMBED

(*)There are 91 frames between the last input and the end of the last race.

!! Race by Race Comments

From: [https://tasvideos.org/Forum/Posts/470035|this post]

%%QUOTE [FatRatKnight]
Race 1: Right at the very start, I hop on that hill at only 102 speed, when eight more frames of acceleration gets me 104. Of course, eight frames means I'm not past that hill, and it would take 200 frames to make up for losing about 800 distance units with an extra 4 speed. Actually, it's a bit more optimistic than that, but I don't think the hop takes more than a second or two.

Race 2: This is where I get a bunch o' letters. Nothing of note, aside from tricky manipulation that would inconvenience anyone trying to improve race 1. Silver Motor has a tight need, so any awkward collections done here were necessary.

Race 4: Just a reminder to anyone improving earlier races, this is another tricky letter manipulation spot.

Race 5: I'm focusing on that cruddy jump spot before that turn for this note. First lap, I get the nitro. Second lap, I use zipper twice. First lap, I pretty cleanly take that hairpin, but that's because I have less zipper speed, and dropped the motor down to 112 speed on top of that. Second lap, I basically thought 'forget it' and took the outside wall without bothering to try slowing down after the second zipper, or skipping said zipper a second time. It's an inconveniently placed boost, that's for sure. I actually do have time to stack a nitro on top of that second lap jump (well, I do need to waste a frame or two...), so taking the speed to a further extreme is possible. Not sure if that would be a good answer for tightening up our money route, but it's possible. This one jump, I tell you...

Race 6: Our last tricky letter manipulation zone. Manipulate the two "random" letters to be I, and all others are different. Fail, and you delay car upgrade by two races minimum. This reminder is my only note for this race, for now.
%%QUOTE_END

And then, from ktwo:

%%QUOTE [ktwo]
Race 7: The one missing letter before the car type can be upgraded is found in this race. It's a 50% chance of being the missing 'P', so the manipulation is straight-forward.

Races 25-36 (by eien86):

Race 25: It's immediately apparent that a different logic is applied in this race than in the races TASed by FatRatKnight. There are more "twitching" motions present, even on straights. It's unknown why the bot chose these inputs. Lag reduction strats? Too big exploration space and not enough simulation time to grind out minor imperfections? Or something else? This should be investigated in the next TAS iteration of this game.

There is possibly also a different approach in how to negotiate corners in the bot's solutions. There are more examples of driving straight into the corner and bump out, as opposed to FatRatKnight's general method of navigating smoothly around most corners. Again, the finer details have not been investigated.

Race 26: There are some odd-looking crashes into the wall at the start of the lap 2. This was investigated after the fact and found to be nonoptimal. Driving in a straight was faster. It's possible was still not fully calibrated for this race and the simulation time was possibly also too short.

Race 27: While race 25 was on the same track as race 1 and race 26 was on the same track as race 10, they were played with different cars and car upgrades. Direct comparisons between the bot's and FatRatKnight's solutions are therefore not possible. 

Race 27 is significant because it's played on the same track as race 19. Unlike the previous two races, race 27 and 19 were played with the same cars and upgrades. In addition to that, there is no lag in either race 27 or 19 or nitro route decisions to make, so a comparison between the bot's and FatRatKnight's solutions is fair and measures the difference in execution.

The result?
FatRatKnight (R19):
lap 1 - 558f
lap 2 - 506f
lap 3 - 505f
Total - 1569f

The bot (R27):
lap 1 - 555f 
lap 2 - 498f
lap 3 - 498f
Total - 1551f

Races 28 and 29: These races can't be compared with earlier races due to car differences. The gameplay bears the signs of typical bot inputs. it looks fast and efficient, but there is again a question mark why the bot finds solutions that don't go in a straight line on straight sections. 

Race 30: This race can be directly compared with race 20 (same cars). And it's an interesting comparison, because it highlights other gameplay aspects than race 27/19. There is lag in this race and the routing is complex. There are considerations such as "should you go at high speed and take a wide turn or slow down and take a tighter turn?" and several nitro uses to portion out appropriately.

The result?
FatRatKnight (R20):
lap 1 - 908f
lap 2 - 835f
Total - 1743f

The bot (R30):
lap 1 - 842f
lap 2 - 837f
Total - 1679f

The bot took a big lead on the first lap by both reducing random lag, gameplay and by using more nitros. But it lost time on the second lap, mainly due to having fewer nitros to burn.

Race 31: Not possible to compare this race. Same comments as previously.

Race 32: Not possible to compare this race. The nitro use looks a bit suspicious and there is a probably a better place to use it. Question mark also on shortly letting the blue car pass on the first lap. It looks like there could have been a solution, where the player car continued to be pushed by the blue car.

Race 33: This race can be compared with R21, which is 15f faster. The issue here is that nitros aren't used in the right places. Like it's done in race 21, one should have been used in the second big bumpy section and another one at the jump at the top, instead of using them early on.

Race 34: Not possible to compare this race. It would likely have been a better decision to collect the nitro in the upper right corner (and using is cleanly on straight to the finish line) than using both of the zippers. The next bot iteration should test that alternative.

Race 35: Not possible to compare this race. It might be possible to pick up one more nitro on the right side of the track. Should be tested in the next iteration. It's worth noting how the bot collected the 1-up at the top. This is a subtle lag reduction strat and it's impressive it managed to find it.

Race 36: This race can to some extent be compared with R22, but the comparison is not completely fair. There is a lot of random lag from having too many objects on screen in these races, but it's worse in R36 because of the CPUs having faster cars and staying more on screen than in R22. As a result, R22 is 35f faster, but has 38f less of random lag.
%%QUOTE_END

!! Technical Discussion

An in-depth explanation of the game mechanics by ktwo can be found [https://kb.speeddemosarchive.com/R.C._Pro-Am_II/Game_Mechanics|here].

! Upgrade strategy

%%QUOTE [ktwo and FatRatKnight]
There are three upgrade paths in this game:

Car type

A new car is awarded between races when the letters P, R, O, A, M and I (twice) have been collected. The car type can be upgraded twice. Each upgraded car type has much improved specs and it's a top priority to get these as early as possible.

The letter boxes are always in the same locations, but the content is determined by RNG (see https://kb.speeddemosarchive.com/R.C._Pro-Am_II/Game_Mechanics#Letters for a detailed description). The first four races contain 8 letters. R5 doesn't contain any letters, but R6 and R7 have 7 letters in total. A TAS should therefore aim to have the best car type at the start of R8.

Manipulating letters in real-time is out of the question (except in race 1), but is possible in TAS conditions. However, to make a long story short, you're in most races restricted to a range of 256 possible outcomes and they are reached by waiting the corresponding number of frames. Again, the interested reader is referred to the links provided for more background. That is more than enough when a race only has a few letters to manipulate. But in e.g. race 6, where 6 letters need to be manipulated, and each letter can have several outcomes, the odds of finding a solution suddenly plummets.

One minor mitigation that FatRatKnight used to slightly improve the chances of finding suitable letters was by playing as the yellow car (player 4). Playing as P4 was not strictly needed, but was time-neutral. For a better understanding of the thought-process behind this decision, a dive into the game mechanics and how the letter-generation process works is first needed. FatRatKnight's own explanation can then be understood, https://tasvideos.org/Forum/Posts/516896

Motors

Better motors can be bought in the shop between each race. The motors improve both the car's top speed and the acceleration. The latter has not been investigated in detail, but the top speed stat is the most important of the two and is described here: https://kb.speeddemosarchive.com/R.C._Pro-Am_II/Game_Mechanics#Max_speeds

The motor purchases depend on available money in the races, the motor costs, if a purchase in one race delays an upgrade in a later race and of course the motor parameters. It's not trivial to provide a solid reasoning for one upgrade strat over another one. The motor purchase strat used in this TAS grew out of theoretical forum discussions, but eventually had to be decided from TASing the most promising options and see which one turned out to be faster. The interested reader is referred to the game's forum topic to see how the purchase strat evolved and how it ended with the one shown in this TAS (Red after R1, Silver after R3 and Mega after R15).

Tires

Better tires can be bought in the shop between each race. Tires influence how fast the gap between car facing and movement direction (referred to as "momentum" in the forum by FatRatKnight) is bridged. The better the tires, the faster the gap closes. So essentially, better tires give faster direction changes instead of sliding around. This might be best described by FatRatKnight's own words: https://tasvideos.org/Forum/Posts/468257 .

While excessive sliding impacts the speed negatively and tighter cornering is beneficial in many places, the tires generally have a smaller impact on the time than motors. The purchase strategy for the tires underwent a similar development as that for the motors, finally resulting in buying Skinny after R4 and Scoopers after R18. 
%%QUOTE_END

! Botting

Botting this game required determining the RAM map of all the relevant values and obtaining a more or less in-depth understanding of the game mechanics. Thankfully, ktwo helped with both aspects. 

The reward function for the bot was pretty easy to establish, since the game already provides a faithful progress indicator. The only addition to it was the reward for grabbing boosts -- the bot would ignore a boost if it meant deviating from the immediate fastest route, so it required an extra incentive to go grab them.
Another scripting requirement was the need to restrict places where the boosts could be used. Particularly in race 36, the player obtains 6 boosts. The optimal solution required using these in very precise locations. Using them in other parts of the track is also possible, but leads to a slower solution. Since the bot doesn't know this, it proceeds to burn them as soon as possible, so I had to explicitly limit this freedom.

Running the bot on this game provided a few additional challenges.
First, the movie by FatRatKnight used the FourScore adapter to enable him to play with P4. This allowed him to manipulate RNG, but complicated my life because QuickNES does not support it. In order to make it work, I had to modify the source of QuickNES to encode the FourScore inputs from the standard input produced by directly connected controllers. 

Second, since FRK had worked on FCEUX, I had to resync his movie to BizHawk (NesHawk core). This still was not enough, since the bot only accepts QuickNES save states as a starting point. So I had to develop a 'transplant' tool, that copies all the relevant RAM/PPU memory regions for a Mapper07 game from a NesHawk savestate to a QuickNES savestate. Miraculously, this worked (except that I didn't care to copy the palette, so all colors were wacky during botting). 

Third, I had to resync the bot's quickNES output back into the NesHawk movie. This was pretty easy because these emulators only seldom differ. The only case where they desync was when NesHawk interpreted some frames as lag, which QuickNES didn't.

!! Future Work

This movie is by no means perfect. Here are all the ways in which it could be improved in the future:

! Refine Bot's exploration

Some aspects of the solutions provided by the bot gave us suspicion that were not really optimal. In particular, the bot sometimes hits itself against the wall, even when not evidently necessary. ktwo noticed this and could find some local refinements of the route by manual optimization. These inefficiencies must be polished in the next version of this movie.

! Remove unnecessary inputs

The bot repeatedly presses L and R in parts of the track where only going straight is necessary. This is not necessarily an inefficiency, but could be simplified in the future. I believe this happened because, to reduce exploration space, I didn't take the decimal components of the position/speed into consideration, so without these presses, the bot could have interpreted that straight lines contained repeated states. 

! Apply the bot to the first 24 movies

The next obvious improvement is to apply the bot to all races, not just the last 12, as The bot showed it could find faster solutions than FRK's manual optimization for comparable races. This is not as simple, however, since in the first part of the game, the entire upgrade logic needs to be taken into account, which is not as simple, and was perhaps the biggest contribution of FRK's research.

!! Acknowledgements and Attributions

* FatRatKnight: Author of the first 24 races and prime mover of this game's TAS effort

* eien86: TASer, botter and author of the last 12 races

* ktwo: Speedrunner, TASer, researcher and the reason why I ended up involved in this game. His constant review of my work, suggestion, and technical advice were instrumental to getting this TAS done. He has contributed to the technical discussion part of these submission notes.

* PinoBatch and Fiskbit: NesDev Discord Server users, who helped me understand how the FourScore adapter worked.

!! Encoder Information

! Suggested Thumbnails

[https://i.ibb.co/N2QM2vv/R-C-Pro-Am-II-2022-09-21-21-16-40.png]
[https://i.ibb.co/6n2GJQz/R-C-Pro-Am-II-2022-09-21-21-20-38.png] [https://i.ibb.co/ykNTr9B/R-C-Pro-Am-II-2022-09-22-08-42-11.png]

! Re-Record Count

The count from FatRatKnight's original 24 races should be used: 14962, plus the ones in this movie (653). The re-records from botting is not counted (otherwise, would contribute hundreds of billions)
