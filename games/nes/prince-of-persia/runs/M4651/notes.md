> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4651M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Major Revision

Unfortunately, the first version of this movie has been shown to be invalid because it exploited inaccuracies in the QuickNES emulator, and therefore not a faithful representation of what can be done in the game. To produce this new version I had to patch QuickNES to support the missing opcodes and re-run every level and transcribe the results to the emulator running the more accurate NesHawk core. I learned a lot of things along the way so this was not all lost time. For example, I learned I can synchronize save states containing the initial state of each level across NES cores by copying the entire low memory from one save to another. This was very useful to make sure the bot running QuickNES and the emulator running EmuHawk did not diverge too much.

Luckily, some of the skips (notably: levels 4 and 7) were actually glitches in the game that the bot was able to find anyway, so I think the movie remains somewhat entertaining. For fairness, I believe the people who already voted on the original submission should be given the chance to revise/change their vote. The new version beats the game in 55293 frames, as opposed to the 44599 in the previous version, but still a strong 3366 frames improvement over the obsoleted movie (58659).

!! Level Breakdown & Comparison

|| Level || New TAS Frames       || Old TAS Frames      || Diff 
|01    | 5796 [[05000 - 05796] | 5794 [[00000 - 05794] | +2             
|02    | 4779 [[05796 - 10575] | 4797 [[05794 - 10591] | -18
|03    | 5005 [[10575 - 15580] | 5030 [[10591 - 15621] | -25
|04    | 4195 [[15580 - 19775] | 4912 [[15621 - 20533] | -717
|05    | 4924 [[19775 - 24699] | 4933 [[20533 - 25466] | -9
|06    | 1283 [[24699 - 25982] | 1290 [[25466 - 26756] | -7
|07    | 2385 [[25982 - 28367] | 4809 [[26756 - 31565] | -2424
|08    | 6572 [[28367 - 34939] | 6593 [[31565 - 38158] | -21
|09    | 6264 [[34939 - 41203] | 6298 [[38158 - 44456] | -34
|10    | 2282 [[41203 - 43485] | 2320 [[44456 - 46776] | -38
|11    | 3813 [[43485 - 47298] | 3867 [[46776 - 50643] | -54
|12    | 5439 [[47298 - 52737] | 5453 [[50643 - 56096] | -14
|13    | 1753 [[52737 - 54490] | 1752 [[56096 - 57848] | -1
|14    | 0803 [[54490 - 55329] |  811 [[57848 - 58659] | -8

I would like to thank those who gave feedback so far, in particular Alyosha for finding the problem in the original movie and FractalFusion for creating the awesome comparison movie (I should ask perhaps for a new one? :P).

------------------------------------------------------------------------------------

!! Introduction

Encode: [https://www.youtube.com/embed/SHCX4Q0_GXc]

In this quirky port of Jordan Mechner's magnum opus, our hero traverses a set of dungeons and palace rooms to rescue his beloved princess from the evil <GENERIC GUARD>. Despite obvious graphical and gameplay limitations compared to other versions of Prince of Persia (see: [4477M]), this port gets as close as the original experience as the NES hardware allows. This movie seeks to obsolete the previous submission ([4158M]) from one of my TASing heroes, Challenger, who solved it in 16:16.06. 

This is a bot-aided TAS that introduces a series of precise game breaking inputs that trigger level ending events or significant shortcuts. It also features polished execution of the existing route. The work for this movie involved creating a RAM map for the game, finding level-specific information and creating scripts for the bot to polish each of the level's routes, running the bot, and adapting the scripts to the new discoveries along the way. Overall it took me around 5 weeks.

!! Hardware & Software

* Rom: Prince of Persia (U) [[!]
* Emulator: EmuHawk 2.7.0 (Core: QuickNES)
* Routing Bot: MultiJaffar + QuickNES (Average Exploration Performance: 0.35M States/s)
* Routing Platform: The Jaffanator (see picture). AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM + Clear Linux %%% [https://i.postimg.cc/nchbt9LP/20220201-190032.jpg|https://i.postimg.cc/rz3Y1mx1/20220201-190032.jpg]

!! Level Breakdown & Comparison

Here I explain what happened in each level and compare the number of frames with the previous TAS. It's important to note that I am using a different emulator and core, and therefore a few frames per level of uncertainty should be taken into account.

|| Level || New TAS Frames       || Old TAS Frames      || Diff 
|01    | 2649 [[00000 - 02649] | 5794 [[00000 - 05794] | -3145             
|02    | 1563 [[02649 - 04212] | 4797 [[05794 - 10591] | -3234
|03    | 3765 [[04212 - 07977] | 5030 [[10591 - 15621] | -1265
|04    | 4183 [[07977 - 12160] | 4912 [[15621 - 20533] | -729
|05    | 4916 [[12160 - 17076] | 4933 [[20533 - 25466] | -17
|06    | 1281 [[17076 - 18357] | 1290 [[25466 - 26756] | -9
|07    | 1310 [[18357 - 19667] | 4809 [[26756 - 31565] | -3499
|08    | 5774 [[19667 - 25441] | 6593 [[31565 - 38158] | -819
|09    | 6266 [[25441 - 31707] | 6298 [[38158 - 44456] | -32
|10    | 2065 [[31707 - 33772] | 2320 [[44456 - 46776] | -255
|11    | 2829 [[33772 - 36601] | 3867 [[46776 - 50643] | -1038
|12    | 5431 [[36601 - 42032] | 5453 [[50643 - 56096] | -22
|13    | 1760 [[42032 - 43792] | 1752 [[56096 - 57848] | +8
|14    |  807 [[43792 - 44599] |  811 [[57848 - 58659] | -4

! Level 1

My goodness, this level was the start of the discovery train. I almost lost it when I saw the bot producing these weird skips. However, not all of them were reproducible, as it seemed there were only artifacts of the emulator and bugs in the bot itself. Only after a good while debugging I was able to filter out bad solutions and found, to my surprise, that there indeed extisted actual skips in the game. This solution is extra nice because now only did it skip the level, but also gave the kid the sword! Had that not been the case, it would have had started level 2 without a sword, which it would have made it impossible to progress. Incredible.

! Level 2

Absolute madness. This weird combination of inputs allow for the last full level break of the movie. I cannot explain exactly how this works, but never again was I able to find a working level skip. Nevertheless, the rest of the tricks are equally amazing.

! Level 3

For the initial part of the level, nothing differs from the previous movie. However, after beating the skeleton (note: the skeleton is immortal in the original games, but due to technical limitations, this had to be stratched in the NES), the kid is able to REMOTE CONTROL the exit door to open and then enter it at a distance by quantum-manipulating spacetime itself.

! Level 4

This level remains unbroken, with the only exception of a new door skip thanks to a newly discovered glitch. It seems that the game cannot support collision detection of multiple doors at the same time, and that gives us a frame where we can just go through it in a jump.

! Level 5

No surprises here, just bot-refined execution of the existing route.

! Level 6

No surprises here, just bot-refined execution of the existing route. Due to limitations of the NES cartdrige or simple laziness, the game designers did not implement a special sprite for the guard (in the original, this guard was of a greater girth).

! Level 7

I MUST GO, MY PLANET NEEDS ME. This level never disappoints (see the DOS TAS). Here the double trick is to remote-activate the exit door AND vertically overflow the kid's position to allow a quick exit.

! Level 8

The start is pretty much standard, except for an apparent delay at the beginning. The delay is necessary to trigger the trick at the end, where the kid remote-triggers the exit door, allowing him to go straight to the exit through the lower level. This route skips the mouse scene.

! Level 9

No surprises here, just bot-refined execution of the existing route.

! Level 10

his level comes already broken by limitations of the NES. One can simply go towards the end because there is no door there to stop you from doing so. Nevertheless, the bot finds a way to break it further by skipping the only door in sight. The rest of the level is just fine execution.

! Level 11

Two big breaks here. The first is the remote-opening of the exit door, which skips the last two rooms (where one normally activates it). The second skip is making the guard disappear from this plane of existence. This is a pretty funny trick. All in all, this level ends up pretty much broken.

! Level 12

No surprises here, just bot-refined execution of the existing route.

! Level 13

No surprises here, just bot-refined execution of the existing route. Was unlucky with the guard RNG here and resulted in a time loss wrt the current TAS.

! Level 14

No surprises here, just bot-refined execution of the existing route.

!! Q & A

* How do you trigger these tricks (e.g., level skip, open exit door, vanishing guard, etc.) tricks?

Short answer: I am not 100% sure. Long answer: The movie uses bad pointer accesses to modify positions of memory that had otherwise no business modifying. The key discovery is the command Up+B. Button B triggers the 'careful step' action. This action can be accompanied by a direction (i.e., left or right). However, it seems like the programmer overlooked the possibility of running this command with Up. When executing this command, the game performs an action that is not specified. The resulting action is read from a position in memory that is dependent on the current circumtances of the game. A common pattern is that all tricks are performed when the Kid is on the top layer of the screen. On very specific conditions, the bad access patterns triggers things that are very convenient. In the vast majority of cases, it produces a soft lock or game reset. The benefit of using a bot was that it could filter out all bad outcomes, so I didn't have to fully reverse engineer the bug to understand it.

* What is MultiJaffar?

MultiJaffar is a high performance breadth-first routing bot. This project started when I decided to extend my previous project, [https://github.com/SergioMartin86/jaffar|Jaffar] to route games on other platforms. In particular, I wanted it to route NES games, by linking it to a NES emulator. I had started developing Jaffar a year ago to route Prince of Persia for DOS. The inspiration for the project was Crem's [https://bitbucket.org/mooskagh/sdlpop-tricks|sdlpop-tricks] project that demonstrated that this approach was very much feasible. In the last few months I have completely revamped the engine to improve multicore+memory performance and develop a generic emulator+game interface that allowed me to run any game on earth as long as there was a <<fast>> C++ emulator available for it. 

* Why did you use QuickNES, when NESHawk is more accurate?

Basically because QuickNES is a C++-based emulator, which allows me to interface it with MultiJaffar. NESHawk is C# based and therefore impossible for me to use efficiently. Another reason is that QuickNES is, as its name indicates, pretty fast compared to other emus, which allows for faster exploration. Unfortunately, due to slight desyncs, I cannot use solutions obtained with QuickNES on the NESHawk emulator (except for simpler games like Super Mario Bros).

Hope you all have fun watching this!
