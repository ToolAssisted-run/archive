> **Imported**
> This run was originally published at https://tasvideos.org/6341M and entered this archive as a voluntary
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

%%QUOTE [Challenger]
I wanted to see a TAS of this game for years (even before I joined here), but I knew Micro Machines wouldn't be an easy task for some technical reasons - the main one is how you can optimize the gameplay, because each curve would be difficult to handle without turning direction and slowing down so much even if you use the glorious TAStudio tool from the BizHawk emulator.

On 2022, eien86 submitted a NES racing game called R.C Pro-Am II run that impressed me the Jaffar bot was able to handle the races and optimize the game very well, inspiring me a year later to ask eien if Jaffar could give a shot for Micro Machines because I was planning to create a rough draft of this game and some years ago I discovered a very nice glitch that would affect the game a lot (I didn’t document it at the time, but fortunately some players were able to discover the same glitch years later and create RTA runs, which helped us a lot during the first draft).

So we started the project on May 2023, initially working slowly, putting this game on hold sometimes until finishing a first draft of the full game on January 2024. After that, the game was started from scratch again and this time the bot improved every race in every way that I previously thought the project was done. The game would be a real nightmare to TAS without this special help.
%%QUOTE_END

%%QUOTE [eien86]
As far as I know, Challenger has been brewing this movie for years now. I've joined the efforts more than a year ago, working on his initial progress and trying to improve its execution using my bot. I made two full passes now, everytime finding and learning new things. We believe now the movie is in a state of optimality that cannot be improved easily anymore.
%%QUOTE_END

!! Comparison Movie

The following movie compares our solution to the current [https://www.speedrun.com/micro_machines_nes/runs/znxxnovy|USC RTA WR] by speedrunner [https://www.speedrun.com/users/mx_seitan|mx_seitan], available here: 

[module:youtube|v=2W-bbR7MmaE]

The main difference between our approaches is the bonus stage strategy. In this port of the game, after each third first place achieved (even if non-consecutive), you get the chance to run a bonus race for an extra life.

The RTA approach involves finishing second several times to avoid playing the last bonus stage. This is good for RTA since it reduces the chances something awry could go during the bonus stage (e.g., falling in the water). However, for TAS it is always faster to finish all stages as soon as possible, even though we go through all bonus stages.

! Category Rules

* Heavy glitch abuse
* Heavy luck manipulation

!! Software + Hardware

! Rom Information

* Name: Micro Machines (USA)
* ROM: Micro Machines (U).nes
* SHA1: ec7bb4d11afa5a955010bb9a548c1460eac08fe0
* MD5: a3d0e4b19a2ab6cc5e10f9820232ca40

! Emulator

* EmuHawk 2.9.1 (Core: NESHawk)

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/quickerNES|QuickerNES]
* Platform: 
** 2 x AMD Epyc 7763 (128 cores, 256 threads) + 512Gb RAM
** Exploration Rate: 1.7 Mstates/s 

!! Timing

! Criteria

We use the following addresses for timing:

%%SRC_EMBED
0x0308 - Current Race
0x04B6 - Current Lap
0x00DD - Pre-Race Timer
%%END_EMBED

And the following criteria:

* Race Start: Set as soon as "Pre-Race Timer" becomes zero
* Race End: Set as soon as "Current Lap" becomes zero

%%SRC_EMBED
Stage               Frame          Duration
Power on                0              577
Qualify               577              539
Transition           1116              912
Race01               2028             1941
Transition           3969              673
Race02               4642              941
Transition           5583              670
Race03               6253             1162
Transition           7415             1002
Bonus01              8417              364
Transition           8781              617
Race04               9398             1545
Transition          10943              670
Race05              11613             2487
Transition          14100              671
Race06              14771             5654
Transition          20425             1001
Bonus02             21426              488
Transition          21914              617
Race07              22531             1500
Transition          24031              677
Race08              24708             4200
Transition          28908              669
Race09              29577             1438
Transition          31015             1002
Bonus03             32017              633
Transition          32650              620
Race10              33270             3326
Transition          36596              670
Race11              37266             1799
Transition          39065              677
Race12              39742             4074
Transition          43816             1001
Bonus04             44817              633
Transition          45450              618
Race13              46068             3021
Transition          49089              670
Race14              49759             7176
Transition          56935              672
Race15              57607             2924
Transition          60531             1009
Bonus05             61540              633
Transition          62173              617
Race16              62790             2240
Transition          65030              674
Race17              65704             7397
Transition          73101              670
Race18              73771             1679
Transition          75450             1001
Bonus06             76451              633
Transition          77084              618
Race19              77702             1902
Transition          79604              672
Race20              80276             3030
Transition          83306              677
Race21              83983             4748
Transition          88731              938
Race22              89669             5975
Transition          95644              670
Race23              96314             1795
Transition          98109              671
Race24              98780              862
Transition          99642              575
Race25             100217             2889
Last Input         103106                 
%%END_EMBED

!! Race Breakdown

! Race 00 (Qualification)

%%QUOTE [eien86]
This is kind of a "tutorial race" for players, but for TASing/botting as well. In this first race I researched the relevant RAM values (if you read this, the watchfile should be uploaded in the game's resources page). 
The most important aspect is the "Checkpoint" system. The track is divided among dozens of checkpoints and the game remembers which one you reached last. So I simply configured the bot to reward states with increasingly high checkpoints until the single lap of this race was over.
%%QUOTE_END

%%QUOTE [Challenger]
The character selection screen will occur every three races. Selecting the future next opponent, waiting 19 frames and pressing start to start the next race is slightly faster because the game will set up the next choice automatically when you return to the selection. This interesting strategy is also implemented on the RTA runs.
%%QUOTE_END

! Race 01

%%QUOTE [eien86]
On this race I had to expand the bot's capabilities to account for multiple laps. But more importantly, to enable shortcuts. It is possible to skip certain portions of the track without being punished (towed back to the departing point. This is called the Ultra Shortcut (USC). Challenger found the best checkpoints to 'touch' to achieve the shortest circuit for every race. To achieve shortcuts, I had to configure the bot to go to X/Y coordinates specified by Challenger, instead of pursuing ever increasing checkpoint numbers.
%%QUOTE_END

! Race 02

%%QUOTE [eien86]
This race showcases a more sophisticated way to achieve shortcuts. When your car needs to be towed back for skipping parts of the race, you are teleported straight to the rescue point closes to the latest checkpoint you visited. However, if the source and destination checkpoints cross the end of lap line, then it counts as a full lap. 
%%QUOTE_END

%%QUOTE [Challenger]
I discovered the lap glitch here by accident several years ago (probably 2018) while I was playing the SNES version - yeah it also works on other versions too, including the Genesis and Gameboy ports as far as I know of.
%%QUOTE_END

! Race 03

%%QUOTE [eien86]
Nothing special about this level. Towing shortcuts are used on all laps.
%%QUOTE_END

! Bonus Stage 01

%%QUOTE [eien86]
Bonus stages take a single "lap" and we complete it by using a very precise USC found by Challenger and the execution optimized by the bot.
%%QUOTE_END

%%QUOTE [Challenger]
Quoting an interesting piece of information from mx_seitan: “In the NES version, the game counts how many times you get 1st place. As soon as this counter reaches 3, the next level is a bonus level.”
%%QUOTE_END

! Race 04

%%QUOTE [eien86]
This race I remember well because it was the one where I learnt that shortcuts are extremely precise (you cannot deviate from the correct checkpoints, even by one). So it took me a lot of bot configuration to convince it not to go 'further' than required. Many hours lost on this race alone :/
%%QUOTE_END

! Race 05

%%QUOTE [eien86]
This race contains the first instance of the double-collision glitch. When your car touches two different objects (car/car, car/object), the collision response goes nuts and you can be catapulted towards a direction. I used the bot to find the most instances of this glitch and exploit it to go towards the direction required. 
%%QUOTE_END

%%QUOTE [Challenger]
Before starting the project, I actually made a rough draft of some races including this one (back from October 2022), and the initial route I’ve found to glitch out the race was located further, starting from CP40 and going to CP88 while the route used in this run (after starting the actual project months later) is just when you reach the first obstacle a bit after the start of the race - CP7 - then go to CP55, saving a lot of time. Thanks RTA players!
%%QUOTE_END

! Race 06

%%QUOTE [eien86]
Pretty long race with only small shortcuts.
%%QUOTE_END

%%QUOTE [Challenger]
The lap glitch isn’t possible in this race because there are lots of “barriers” around the course that punishes the player instantly.
%%QUOTE_END

! Bonus Stage 02

%%QUOTE [eien86]
Different track but same principle as bonus stage 01.
%%QUOTE_END

! Race 07

%%QUOTE [eien86]
Here Challenger found a shortcut that can be executed after getting far enough on the first lap and then skipping the others.
%%QUOTE_END

! Race 08

%%QUOTE [eien86]
This race starts with a nice example of the double-collision glitch.
%%QUOTE_END

%%QUOTE [Challenger]
The “walls” in boat races are semi-solid: the double-collision glitch could be helpful for a very nice shortcut during the first lap by reaching C28 then boosting with one of the boats while it is in mid-air (bubble jump) to C67 (before the tunnel section), but unfortunately the best effort we’re got to gain enough momentum was reaching C71 with perfect timing and positioning, although you lose a lot of speed after entering the wall and even if could be possible to trace back to C67/68 after the shortcut, driving normally is still faster.
%%QUOTE_END

! Race 09

%%QUOTE [eien86]
This race starts with a nice push (not glitch) from an opponent and then proceeds to executing USCs.
%%QUOTE_END

! Bonus Stage 03

%%QUOTE [eien86]
Different track but same principle as bonus stage 01.
%%QUOTE_END

! Race 10

%%QUOTE [eien86]
In this race we abuse the double-collision glitch in the beginning, and then let the bot find the best execution for the rest of the race.
%%QUOTE_END

! Race 11

%%QUOTE [eien86]
Here Challenger found a shortcut that can be executed after getting far enough on the first lap and then skipping the others.
%%QUOTE_END

%%QUOTE [Challenger]
Well, four years ago I found a different location to glitch out the laps, but I didn’t record it and I guess that route was longer like the fifth race. Thanks again RTA runs!
%%QUOTE_END

! Race 12

%%QUOTE [eien86]
This race contains more fun with collision glitches and then just nice execution with the bot.
%%QUOTE_END

! Bonus Stage 04

%%QUOTE [eien86]
Different track but same principle as bonus stage 01.
%%QUOTE_END

%%QUOTE [Challenger]
Starting from Bonus Stage 04, they repeat the Bonus 03 layout for some reason, so the strategy remains the same.
%%QUOTE_END

! Race 13

%%QUOTE [eien86]
We solved this race with nice shortcut routing by Challenger and then execution by the bot. 
%%QUOTE_END

%%QUOTE [Challenger]
We tried to find a way to do the lap glitch here, but in this race it’s not possible because while you need to trigger certain checkpoints first, the required CP for the glitch (which is 23) won’t punish the player because the location acts as real checkpoints, unlike the Genesis version which occurs the opposite, allowing the glitch to occur without problem at all.
%%QUOTE_END

! Race 14

%%QUOTE [eien86]
Yet another long race with no available shortcuts (that we know of), just good execution.
%%QUOTE_END

! Race 15

%%QUOTE [eien86]
We destroy this race with a combination of collision glitching and shortcuts.
%%QUOTE_END

%%QUOTE [Challenger]
In the RTA runs, the setup for the lap glitch is tricky and precise, because unlike other races, for this one you need to avoid some checkpoints, trigger the most important one and go to the required checkpoint location after the bridge.
%%QUOTE_END

! Bonus Stage 05

%%QUOTE [eien86]
Different track but same principle as bonus stage 01.
%%QUOTE_END

! Race 16

%%QUOTE [eien86]
In this race we finish all laps by using USC.
%%QUOTE_END

! Race 17

%%QUOTE [eien86]
Just good execution by the bot. There are no opportunities for shortcutting in helicopter races because the track is surrounded by solid boundaries.
%%QUOTE_END

! Race 18

%%QUOTE [eien86]
In this race we finish all laps by using USC.																							
%%QUOTE_END

! Bonus Stage 06

%%QUOTE [eien86]
Different track but same principle as bonus stage 01.
%%QUOTE_END

! Race 19

%%QUOTE [eien86]
In this race we finish all laps by using USC.	
%%QUOTE_END

! Race 20

%%QUOTE [eien86]
The first approach found by Challenger performed a USC towards the end of the lap. However, speedrunner mx_seitan (https://www.twitch.tv/videos/2065964451) found a better setup that starts going backwards. Challenger found out about this and we implemented / optimized it in this run.
%%QUOTE_END

%%QUOTE [Challenger]
Yeah this course is so long that the previous strategy required a good amount of time, Jaffar optimized very well, but I wasn’t aware of the backwards shortcut until a few weeks ago. Several seconds were gained (for my surprise) despite the fact you still need to reach the finish line during the last lap. It’s slightly faster avoiding one of the jumping obstacles in order to achieve maximum speed asap.
Fun fact: In the Genesis version, this race is completely new while some other versions keep the original course.
%%QUOTE_END

! Race 21

%%QUOTE [eien86]
This race contains a pretty nice example of the collision bug. The boat gets launched pretty fast at the beginning. The rest of the race is executed to perfection (avoiding lag frames as much as possible) by the bot.
%%QUOTE_END

%%QUOTE [Challenger]
No bonus race this time because if you earn the maximum amount of lives (which is 9), the game will skip it.
%%QUOTE_END

! Race 22

%%QUOTE [eien86]
In this race we take advantage of the fact that opponents get rubberbanded pretty heavily, so it doesn't take much time to wait for them to re-appear. By waiting for them, we can execute the collision bug time and time again for a very entertaining execution. This is the race I ran the bot for longer, precisely to increase the chances to find and execute these glitches as much as possible.
%%QUOTE_END

%%QUOTE [Challenger]
Originally only one collision bug was implemented at the start of this race, but when a second draft of this race was created by the bot, the boost somehow was a bit slower, the problem was going to be fixed when a new idea “appeared” for us: the bot took advantage of the brutal AI that the race changed the collision bug to a different location and the race ended up being more entertaining by adding three extra boosts. I like it!
Fun fact: The NES version is so brutal that the real difficulty actually starts at the eighth race.
%%QUOTE_END

! Race 23

%%QUOTE [eien86]
After an initial push from an opponent, we use towing shortcuts to finish all laps faster.
%%QUOTE_END

%%QUOTE [Challenger]
I mentioned earlier during race 11 about finding locations for the lap glitches four years ago… but while some races are unskippable, this specific race was the only one I didn’t realize the lap glitch was actually possible until I watched the RTA runs! Luckily the trigger is located in the same map (the left path) so no barriers this time.
%%QUOTE_END

! Race 24

%%QUOTE [eien86]
The most interesting race by far. And yet we don't understand well how we pulled this off. Turns out this particular race seems to be overwhelmed with moving objects (cars and bullets) so at some point your car position can glitch out along with the track itself.
We found out about this glitch thanks to the bot, which exploited it to reach a target checkpoint faster, but then failed to proceed to the rest of the race. So then Challenger took the task of finding out how to fully exploit the bug for the rest of the race. So he found a way to create an "artificial" mini circuit that completes the race within this crazy glitched state. After this find, I used the bot again to refine the execution of the mini circuit. 
Sadly, we could not replicate this bug anywhere else in the game, but still, it's glorious to see it working even once.
%%QUOTE_END

%%QUOTE [Challenger]
Originally we worked on this race implementing a tricky lap glitch route from the RTA run. Since tank vehicles are slower, the strategy takes a while for each lap, but the super glitch discovery saved around 750 frames over the previous strategy by gaining a super speed during the first lap, then the tank will be towed to a random point, for the remaining laps you must trigger C12/13 and C52 or 53 so the lap glitch will work on some “invisible” places: somehow I managed to trigger both C13 and 53 at the same time during the second lap, adding extra impressive work while eien finished the last lap by respawning the tank on C12/13, triggering C52 and instantly finishing the race as soon as the player touches the “invisible lap glitch trigger” - this glitch is really unique and I like it too!
As eien said: we don’t understand well about this glitch, and practically requires trial-and-error + TAS tools because not only the whole race becomes glitched but lots of “random barriers” can confuse the player, towing the tank to random points or even softlock the race.
%%QUOTE_END

! Race 25

%%QUOTE [eien86]
Basically, a repetition of race 20.
%%QUOTE_END

%%QUOTE [Challenger]
Yep in this version the race 20 repeats, and eien managed to finish input earlier by using two jumping obstacles so the car will keep enough speed to reach the cross line just in time.
%%QUOTE_END

!! Other comments

%%QUOTE [Challenger]
For the first time in years, I’m presenting a completely new project that plays a game that doesn’t have a run here in TASVideos… until now.
I'd like to thank my partner eien for optimizing the bot and creating a much more polished run! Without the ability, experience and patience, this run wouldn't be possible after all.

Although I discovered this glitch by accident several years ago and never documented it before, someone named March (I found the information in one of RTA runs from the 2023 year) also discovered it and worked well in real-time.

Also thanks to the speedrunner mx_seitan for the RTA runs, which were helpful during the development of this run, including the unique backwards route on race 20 discovered when I thought the game was done.

Some of my recent runs were done on the BizHawk 2.4 version in the last three years because my PC and laptop were unable to update the emulator for some reason. But some months ago I finally bought a new PC and since I have some unfinished projects, they will be updated to the most recent BizHawk versions :)
%%QUOTE_END
