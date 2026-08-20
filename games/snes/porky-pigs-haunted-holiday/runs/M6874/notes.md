> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6874M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

After ---nearly 10--- 9 years, time to submit a new Porky Pig TAS!

Porky Pig's Haunted Holiday is a 1995 side-scrolling platform video game developed by Phoenix Interactive Entertainment (initially Dark Technologies) and published by Sunsoft/Acclaim for the Super Nintendo Entertainment System video game console. The goal of the game is to guide the main character, Porky Pig from the Warner Bros. cartoons, through his nightmares.


!!__Game objectives__


* Emulator used: BizHawk 2.8 (normal BSNES core)

* Aims for fastest time and heavy lag reduction

* Manipulates weather choice for less loading times

* Takes damage to save time

* Uses glitches to save time


This run is 3524 frames (58.6 seconds) faster than the [3219M|published 2016 run] and 2576 frames (42.7 seconds) improved over [5701S|Droodbot's cancelled 2017 run] thanks to better knowledge about the game mechanics, lag reduction, a few new shortcuts and even dealing with the “worst enemy” in this game: the global timer.


!!__Development of the run__


A year after the current any% run was published, Droodbot submitted a new any% run in addition to informing about the demo glitch which skips most of the game. This glitch motivated me to work on a new category run, but that new any% run was soon cancelled because Vault rules at the time and the demo glitch obsoleted the 2016 TAS. 

Fun fact: another game called “Toki: Going Ape Spit” achieved a “demo glitch” TAS that obsoleted a full game run too, in the same month I worked on Porky Pig again. Just a nice coincidence.

However the rules changed some years later and both full game runs were unobsoleted, although I didn’t plan working on a new any% run until a year later, in October 2021.


During the development of the new project, I lost motivation several times because of lag issues but I changed my mind this year for a good reason: 2025 marks the 30th anniversary of this game, so why not give it a shot celebrating it just in time?

Well I wanted to submit this game for Halloween but I missed the opportunity due to problems while revising/checking possible final results. For this project I used my old 2016 run to build the improvement with the greatest tool TAStudio, allowing me not only to polish the game but to avoid some headaches since not every game won’t sync to the end without caution.



!!__Tricks, glitches and mechanics__


!__Slope technique__


The normal maximum speed when walking is 2, but during a slope the speed increments from the current speed until 4. Jumping off a slope keeps the maximum speed for some frames. However if you press the right button on the same frame you jump (if you're facing to the right), the technique can be extended a little further - it also applies to the left direction, with the difference you should press the left button instead.

I also discovered that ignoring the jump and pressing the aforementioned direction on the first frame Porky is going to start falling down, he will be one pixel further. Only useful for small slopes whose end points are short.


!__The camera mechanic__

You can move the camera while Porky is stationary: scrolling the camera (by holding X button + direction pad) moves faster than you, spawning enemies or objects earlier than usual. As soon as you stop doing it Porky's movement speed resets to 0 so the usage is very limited in this run.


!__Minimum speed loss__

If Porky is on the air, ignore pressing the left or right button for 4 frames so that the speed will reduce to 1, wait another frame so the speed returns to 2 and you can continue moving without problem. However if you wait a frame once again, repeat the same two steps then continue moving after returning to max normal speed because this time the normal speed loss will occur.

Also, I found a faster setup: turn around for 2 frames, wait one frame and continue moving. The extra wait rule + avoid losing max normal speed also applies here.

This technique is very useful for heavy optimization but when you're underwater during most of the third level, Porky's movements work differently: letting off the left/right button then pressing again immediately reset speed to 0. For the other side I found one more setup similar to the alternative "normal one", with the difference you can ignore the "waiting rule" by simply turning around for 1-2 frames then pressing the opposite on the next frame.


!__Sprite glitch__

If you press left, right or down every other frame (a la Turbo mode) on bosses, they will not advance to the next sprite as normally intended until you stop pressing the buttons.  The repetitive nature looks silly by abusing too much, but this glitch is funny + forcing the boss to not be animated = lag reduction when possible: actually useful during the second, third and fifth bosses.


!__Moonwalk__

This trick only works if you are facing in the left direction and hold left + right buttons. Moonwalking looks like only a visual change at first, but there are a few benefits by clipping some small platforms if possible. However this game is well programmed for finding useful locations... my radar was unsuccessful.


!__Weather system__

The weather effect is notable every time you play this game. This game chooses 'randomly' by delaying the title screen, skipping the title sequence or starting a new level on the map screen through different frames because the global timer decides the choice. 

In the published 2016 run, getting rain, snow and fog weather took more time to load than usual while the Droodbot's cancelled 2017 run and "demo glitch" category as well as the 2025 any% run get normal weather. Another reason for the change is the fact they might add some lag during certain rooms in this game.


!__Chain swing system__

Not noticeable when playing this game normally, but the way the chain swings behave… there's a situation: They are timed/controlled from the system rather than during the actual levels where you can find them. They own its global timer too! 

The first real difference is shown when Porky reaches the unavoidable chain swing path from the 1-4 checkpoint: if you find small improvements they won't be enough unless you achieve further timesaves so you can avoid waiting time.

During this TAS I lose some frames just for lag reduction in order to keep the global timer advancing because after the first level, the next time he'll find another chain swing is in the middle of the first level 6 room where the problem is unavoidable at all. In addition, there are another two chain swings in the sixth room (the pool one) that you are forced to wait too - I lost time during the 3/4 of the fourth room on purpose while getting rid of some very stubborn lag frames.


!__Entering / Zipping walls__

By holding the X button while on an ascending platform (in this case, the bubbles from the underwater sections), Porky will ignore the collision when he "touches" the ceiling and continue going up until you release the button. This is included in both 2016 and the cancelled 2017 runs skipping most of the third Atlantis room and for the next room the glitch is also useful during the second half since the game limits the amount of bubbles to 3, likely to prevent potential slowdowns.

If vertical zipping is possible, why not try horizontal too? Yep this is possible thanks to Droodbot who discovered that pressing the down button immediately after releasing X, Porky will zip backwards or the opposite depending on the direction you're facing. During the zip sequence if you press or hold down the button again, he can still zip upwards.

Please note that Porky takes damage during the third Atlantis room sequence and might occur during the next room - fortunately careful optimization prevents it. Be careful.

Fun fact: using a loose platform on a certain location during one room of the Mines level, you can venture "underground" but the camera isn't programmed to follow besides the intended way. There's an "alternative exit" located deeper but this strategy was almost useful because there are solid tiles/walls you can't even see at all, requiring slower routing.


!__Porky’s underwater gameplay and speed preservation (New!)__ 

Please note that this information only applies for the Atlantis level.

For some reason, the jump is affected when you reach the max height every 4 frames (excluding lag frames) -  you may gain 2, 4 or 6 extra height pixels than usual each time you jump. This mechanic is hard to notice without monitoring Porky’s vertical position but there’s one point where the knowledge makes the difference: 

[https://i.imgur.com/BC1RKoO.png]

You are supposed to reach the pipe by landing on the roof then doing another jump… it likely looks possible to reach the actual point without problem at all with a single jump but the game somewhat messes up the logic.

Now about the speed movement: walking underwater normally goes from 0 to 1. However, jumping still gives speed 2 again since the underwater rooms are longer and exploring them requires more time than usual.

Time to explain about speed preservation: every time you jump underwater, if Porky lands while at speed 2, the game will halve to 1 so you should jump again to gain again over and over. However, I discovered a cool new trick while messing with the underwater gameplay back from 2022: if you turn around one frame before Porky lands, the speed halves to 1 then immediately press the opposite direction, and the game will rebuild the max speed with only one frame! At this exact moment you need to jump so the speed loss won’t occur anymore as long as you repeat the instructions every time you land after a jump.

The strategy can be optimized a little further if you wait one more frame before you jump, gaining an extra pixel movement.



!!__Table of improvements (comparison to both 2016 / 2017 any% runs):__

||Levels|||Gameplay optimization|||Lag frames removed|||Room transitions total frames|||Time gained (ignoring lag frames)||
|Level 1 |       230 / 256       |       14 / 20      |             90 / -1¹          |             320 / 255             |
|Level 2 |       176 / 193       |       99 / 121     |             19 / 1            |             195 / 194             |
|Level 3 |      1632 / 1098      |      108 / 117     |             54 / 55           |            1686 / 1153       |
|Level 4 |       221 / 136       |        1 / 6       |              0 / 36²          |             221 / 100             |
|Level 5 |       379 / 494       |       53 / 50      |             35 / 0            |             414 / 494             |
|Level 6 |       696 / 304       |       18 / 62      |             20 / 8            |             716 / 312             |
||Result |      3334 / 2481      |      293 / 376     |            218 / 98           |            3552 / 2508            |

Note 1: one frame lost in the 2025 TAS after finishing the first boss for some reason.

Note 2: Droodbot's 2017 any% run got a different level 4 weather that ended being slower by 36 frames at the end.

!__Level-by-level commentary__

!__Level 1 - The Haunted Woods__ (Good start)


||2016 / 2017||Gameplay optimization|||Lag frames removed|||Room transitions|||Time gained||
|   Intro   |                                    |       |      16 / 0      |   16 / 0    |
|   Room 1  |         0 / 0        |        0 / 1       |      15 / 0      |   31 / 1    |
|   Room 2  |       132 / 151      |        6 / 5       |      15 / 0      |  184 / 156  |
|   Room 3  |        33 / 37       |        3 / 6       |      15 / 0      |  235 / 199  |
|   Room 4  |        64 / 61       |        4 / 3       |      15 / 0      |  318 / 263  |
|   Room 5  |         0 / 0        |        1 / 2       |      15 / 0      |  334 / 265  |
|   Boss    |         0 / 1        |        0 / 3       |       0 / -1     |  334 / 268  |
||  Result  |       230 / 250      |       14 / 20      |      91 / -1     |  334 / 268  |


[https://i.imgur.com/i1na4aD.png]


Before starting the game, the old 2016 run got rainy weather, in addition to the “night vision” variant. While this weather usually adds more loading time between room transitions and getting rid of lag sometimes may fail, the vision variant extends some frames further and only applies for that weather.

For the new project, Droodbot's normal weather choice proved to be faster by 1,5 seconds. Once you open the intro sequence, wait for 4 frames before pressing start to skip it.

The Intro Level is the same as the both previous any% runs:

[https://i.imgur.com/64BcK2K.png]

* __Room 1:__ Collecting more cupcakes will be useful later in the progress. No frames can be gained in this room. Moving on while showing the aforementioned weather change (2016 vs 2017/25):

[https://i.imgur.com/XPj6zia.png] [https://i.imgur.com/ljYYQ4l.png]

* __Room 2:__ Lag in this game is pretty annoying. Slowing down your movement may solve it. The chain swings? Yep there's no problem (at least here) because they are somehow controlled by the global timer - except during lag frames or when pausing the game.


Before reaching the checkpoint path, the camera mechanic is used to reduce the waiting time for the small vertical moving platform, gaining some frames.

During several years, I noticed something about the checkpoint section: between the small platform that leads to a secret room (the giant web with some ant enemies) and the following sequence, the distance looks good enough to achieve a shortcut, using a bat to gain extra height and skipping the second Daffy trap. However, my attempts failed during my 2016 TAS.

Years later, using RAM Watch I monitored both horizontal / vertical position and speed as well while adding another idea: jumping on the leprechaun who goes around in circles. This strategy requires frame perfect timing for everything, including the camera manipulation to set up both the required bat and the leprechaun must walk to the edge of the location as further as possible. Jump on the bat adjusting the jump height for a single pixel, you’ll get some lag frames and if you hit the aforementioned enemy while gaining height, it’s done! Over a second gained after all.

* __Room 3:__ Better optimization and added an extra jump to spawn the bird enemy earlier than usual (required for a small shortcut near the end), reducing some waiting time.

Also, another comparison (same change result):

[https://i.imgur.com/BkpX3e3.png] [https://i.imgur.com/mrMOhnG.png]

* __Room 4:__ That chain swing at the checkpoint location was the first obstacle when I started the new project: you must discover every point to gain more and more frames enough to reach the point just in time so you can avoid waiting time at all. However after implementing the 1-2 shortcut the game still forces you to lose some time in order to grab the chain in the middle point enough to advance to the second half of the room.

* __Room 5:__ Only removed a lag frame at the beginning.

* __Boss (The Ghost):__ The battle has the same result as before but abusing the Sprite Glitch is more interesting. Spooky Sid doesn’t actually spawn at the very first frame and he looks funny when you freeze the hurt animation while he keeps moving around.

When you defeat the boss, sometimes the game adds a lag frame when he leaves the room. The problem is absent in the old run and that was avoided in the new run as well.


!__Level 2 - Dry Gulch Town__ (Light progress)


||2016 / 2017||Gameplay optimization|||Lag frames removed|||Room transitions|||Time gained||
|   Intro   |                                   |        |       2 / 0      |    2 / 0    |
|   Room 1  |        42 / 53       |        5 / 11      |       2 / 0      |   51 / 64   |
|   Room 2  |        36 / 33       |        0 / 6       |       7 / 0      |   94 / 100  |
|   Room 3  |         9 / 18       |        5 / 15      |       8 / 0      |  116 / 133  |
|   Boss    |           0          |         89         |       0 / 1      |  205 / 223  |
||  Result  |        87 / 104      |       99 / 121     |      19 / 1      |  539 / 491  |


[https://i.imgur.com/lbzh7JS.png]

Changed alternative daytime to normal daytime like the 2017 any% run. It only gains a few frames that’s almost unnoticeable here.

The Level Intro is the same as before (from this level until The Alps, they have double resolution):

[https://i.imgur.com/2e9sKL4.png]

* __Room 1:__ More sliding usage thanks to extra slope locations found during the new project. And here's the actual weather difference (2016 vs 2017/25):

[https://i.imgur.com/wMtAqCO.png] [https://i.imgur.com/xzjSBjs.png]

* __Room 2:__ More sliding boosts optimized like the previous room.

* __Room 3:__ Little optimization in addition to removing nearly all lag frames (except one). Color change:

[https://i.imgur.com/B3HCPTz.png] [https://i.imgur.com/gS7lrGM.png]

* __Boss (The Sheriff):__ Using the Sprite Glitch the entire time is necessary because Yosemite Sam easily lags depending on the current animation he is using. Zero lag frames during the first cycle is impossible but I got only 10 this time. Once weakening his gun, freezing this specific animation allows avoiding all remaining lag frames for good.


!__Level 3 - Atlantis__ (Difficult level and more CPU processing)


||2016 / 2017||Gameplay optimization|||Lag frames removed|||Room transitions|||Time gained||
|   Intro   |                                |           |      27 / 28     |   27 / 28   |
|   Room 1  |       526 / 544      |       -4 / 7       |         0        |  549 / 579  |
|   Room 2  |       128 / 136      |        6 / 8       |         0        |  683 / 723  |
|   Room 3  |       836 / 203      |       35 / 26      |         0        | 1554 / 952  |
|   Room 4  |        71 / 131      |       15 / 7       |        27        | 1667 / 1117 |
|   Boss    |           0          |       71 / 84      |         0        | 1738 / 1201 |
||  Result  |      1561 / 1014     |      123 / 132     |      54 / 55     | 2277 / 1692 |


[https://i.imgur.com/wUwTgUB.png]

One more weather change: this time both 2016 and 2017 any% runs got afternoon with mushroom trees while the new run now is morning with palm trees. Less loading time only for the first room and the boss, since most of this level is an underwater adventure.

Level Intro, comparison time (Halloween 2016/17 vs Daytime 2025 run):

[https://i.imgur.com/hPyUrnW.png] [https://i.imgur.com/rbV8U69.png]

* __Room 1:__ Skipping the raft sequence even earlier is possible on Hard difficulty by gaining an extra HP when you collect 25 cupcakes every time. Improved sliding while four lag frames invaded the gameplay as well.

The weather difference is even more notable than the previous two levels:

[https://i.imgur.com/dvjv27j.png] [https://i.imgur.com/ZD1Mt2C.png]

* __Room 2:__ Introducing a new underwater mechanic that prevents losing max speed every time you jump, all lag frames were avoided and I found a mistake at the end of this room: for some reason the ending point won’t trigger early unless you touch the “barrier” one pixel further.

* __Room 3:__ Removed a bunch of lag frames at the start by careful optimization with the help of the new underwater speed trick. Also the zip glitch returns, this time using a horizontal zip which costs one HP but leads directly to the final point. Huge thanks to Droodbot who discovered it!

* __Room 4:__ Better optimization, the first half now can be done using only one bubble through very careful positioning even when you aren’t supposed to progress without having one extra health or using two bubbles. 

The checkpoint path is the most difficult (and tedious) lag optimization of the entire run: By the time you reach this point, there are lots of objects loaded around the room and a single movement mistake will force you to redo the movement at different positions. Keeping some speed before you get another bubble is also important as well. 

The previous runs didn’t use two bubbles because the game limits the max amount to 3, but this time it can be possible because I used one less bubble during the first half so you can load the left one that will allow you to reach the exit point faster.

I wish these walls were really solid because zipping at the start of the second half could allow reaching the exit in no time - tested it via cheating/poking both X and Y positions using the right side of the wall, and some parts of the left wall are open because the developers added some plant enemies.

* __Boss (Sharky):__ The beach balls affect Porky’s controls for some reason, though the Sprite Glitch works well with careful usage. Not all lag frames can be removed but the Willie ‘Great’ White fight looks smoother with all those crabs appearing - they are very prone to cause some lag each time.


!__Level 4 - The Abandoned Mines__ (No items during the fastest route)


||2016 / 2017||Gameplay optimization|||Lag frames removed|||Room transitions|||Time gained||
|   Intro   |                               |            |       0 / 6      |    0 / 6    |
|   Room 1  |         3 / 9        |          0         |       0 / 6      |    3 / 24   |
|   Room 2  |         7 / 21       |          0         |       0 / 6      |   10 / 51   |
|   Room 3  |         0 / 4        |          0         |       0 / 6      |   10 / 61   |
|   Room 4  |         0 / 8        |          0         |       0 / 6      |   10 / 75   |
|   Room 5  |        35 / 47       |        0 / 2       |       0 / 6      |   45 / 130  |
|   Room 6  |        18 / 42       |          0         |         0        |   63 / 172  |
|   Boss    |       157 / 2        |        1 / 3       |         0        |  221 / 180  |
||  Result  |       220 / 133      |        1 / 5       |       0 / 36     | 2498 / 1872 |


[https://i.imgur.com/In8bVGq.png]

Wait 3 frames before pressing start on the map screen = get the same weather setup as before - blue background for the intro and chain stairs for the actual level.

Same Blue Level Intro as before:

[https://i.imgur.com/i6w0uU6.png]

* __Room 1:__ Slope boost optimization.

* __Room 2:__ Better optimization.

* __Room 3:__ Well I almost won a frame even with better control, for nothing. In short, unchanged result.

* __Room 4:__ Same result as the old run.

* __Room 5:__ Less waiting time thanks to global timer while adding extra slope boosts.

* __Room 6:__ Initially I thought the climbing optimization should require keeping speed 4 and 3 for each jump but the strategy was changed very late in the project after I noticed that you can squeeze more frames by only using the max speed 4 even if you add more jumps. Unbelievable!

Well this level is the easiest one to TAS, however, the 2016 and the new project uses the same visuals for the Mine rooms while the 2017 run got different results:

[https://i.imgur.com/sv0ijh4.png] [https://i.imgur.com/UZnVdSc.png]

[https://i.imgur.com/65BS4Iv.png] [https://i.imgur.com/TK4zm0i.png]

* __Boss (Jekyll):__ I didn’t realize Tweety is actually vulnerable before the first cycle actually starts. Strategy discovered by Droodbot.


!__Level 5 - The Alps__ (Long travel, two worlds)


||2016 / 2017||Gameplay optimization|||Lag frames removed|||Room transitions|||Time gained||
|   Intro   |                               |            |      11 / 0      |   11 / 0    |
|   Room 1  |        25 / 66       |        5 / 4       |      11 / 0      |   52 / 70   |
|   Room 2  |       180 / 195      |          0         |         0        |  232 / 265  |
|   Room 3  |        55 / 59       |          1         |         0        |  286 / 325  |
|   Room 4  |        -1 / 41       |       14 / 19      |       1 / 0      |  300 / 386  |
|   Room 5  |        85 / 93       |          3         |       1 / 0      |  389 / 482  |
|   Room 6  |         9 / 19       |        4 / 3       |      11 / 0      |  413 / 524  |
|   Boss    |           0          |       26 / 21      |         0        |  439 / 545  |
||  Result  |       353 / 473      |       53 / 51      |      35 / 0      | 2937 / 2417 |


[https://i.imgur.com/qNDNOVM.png]

Another change: the old run got snow and fog weather while both 2017 any% and demo glitch runs, as well as the new TAS ignore the extra effects for faster loading times. For the 2025 run, delaying one frame during the map screen is enough for nice weather manipulation. Comparison Level Intro one more time:

[https://i.imgur.com/z8SmupX.png] [https://i.imgur.com/RHG4XBu.png]


* __Room 1:__ Found extra sliding points.

[https://i.imgur.com/MHdLnCe.png] [https://i.imgur.com/uSSgJoJ.png]

* __Room 2:__ The autoscroller section can be finished earlier by jumping on another enemy if he appears just in time - just remember: the enemies won’t spawn until the distance reaches closer enough. I used a lua script made by brunovalads so the discovery was possible after all.

* __Room 3:__ Starting from this point, I reused input used from the “demo glitch” run which was very optimized ahead of time: no waiting after the start and improved the camera usage for less waiting time before door skip. More changes in Wackyland:

[https://i.imgur.com/XiaB8VY.png] [https://i.imgur.com/Z3rFpMt.png]

[https://i.imgur.com/BJVoeHr.png] [https://i.imgur.com/AS3M8hA.png]

* __Room 4:__ Better optimization this time but ended up being a frame slower than the 2016 run because I sacrificed frames just to remove 2 hard lag frames: two cupcakes should be dodged because they will add lag - two small jumps, believe or not, worked better than a single big jump due to additional problems.

* __Room 5:__ Same as the demo glitch run: better optimization from the maze skip sequence to the end of this room (most notable improvement is the nice camera usage during the last 1/3 of the aforementioned skip), in addition to gaining 2 more frames in the new run.

* __Room 6:__ Removed all lag frames this time.

* __Boss (The Yeti):__ Sprite Glitch + confused Monster Max = no lag frames for all three cycles in addition to extra entertainment messing with some funny animations. The boss room was supposed to return with the snow weather while using fog in the 2016 run but it failed for some reason:

[https://i.imgur.com/JdhDSf6.png] [https://i.imgur.com/eRcNBL4.png]


!__Level 6 - The Castle__ (That's a very big one for sure)


||2016 / 2017||Gameplay optimization|||Lag frames removed|||Room transitions|||Time gained||
|   Intro   |                               |            |      20 / 8      |   20 / 8    |
|   Room 1  |       348 / 76       |        0 / 1       |         0        |  368 / 85   |
|   Room 2  |         1 / -4       |          0         |         0        |  369 / 81   |
|   Room 3  |           0          |          0         |         0        |  369 / 81   |
|   Room 4  |       -12 / 51       |       10 / 61      |         0        |  367 / 193  |
|   Room 5  |         0 / 3        |          0         |         0        |  367 / 196  |
|   Room 6  |        24 / 15       |        0 / 1       |         0        |  391 / 212  |
|   Room 7  |         1 / 4        |          0         |         0        |  392 / 216  |
|   Room 8  |         3 / 9        |          0         |         0        |  395 / 225  |
|   Room 9  |         1 / 13       |          0         |         0        |  396 / 238  |
|   Boss    |       312 / 119      |        8 / -1      |         0        |  716 / 356  |
||  Result  |       678 / 286    |        18 / 62     |      20 / 8      | 3653 / 2773 |


[https://i.imgur.com/eyKlQrD.png]

Wait 3 frames on the map screen. The weather choice this time is something made from a last-minute change after I found a mistake.

Level 6 Intro never changes:

[https://i.imgur.com/ThjjwmA.png]

For the old run, rain + night vision (the same weather seen at the first level) were included while both 2017 and demo glitch runs used normal ones. I used the same faster setup until I realized the loading time transition for the other rooms were slightly slower than the both old any% runs. I found a good fix replacement, sacrificing the fastest 6-1 loading time for some frames: the new weather now is light rain.

[https://i.imgur.com/rKXtHP2.png] [https://i.imgur.com/bmLV8kU.png] [https://i.imgur.com/gyrIHRQ.png]

* __Room 1:__ The required chain swing is the actual reason why the global timer is so important: removing lag frames + careful choices = you can reach the point without waiting so much. 

Going to the secret room like both 2017 any% and demo glitch runs is faster thanks to a programming error the developers overlooked and likely forgot to test that room: The start point was supposed to have a “barrier” like every other room but there’s nothing and going to the left will transport Porky to the end point so you can go to the second room in no time.

* __Room 2:__ Only one frame gained because the global timer still persists at the beginning room.

Both 2016 and 2017 any% runs included red walls while the demo glitch changed to green and the new TAS originally used green until the new replacement: this time we are seeing brown walls while the aforementioned loading time transition matches the same timing as before. Aligning the result saves 3 frames by the time you reach the last boss.

[https://i.imgur.com/Ol0ckSH.png] [https://i.imgur.com/TZAM6fR.png] [https://i.imgur.com/IntFohW.png]

* __Room 3:__ Same result as the old run.

* __Room 4:__ Getting hit by another chain ball rather than the trio from the beginning = less dodging time. The second damage boost was also optimized as well, this time waiting these three rockets a bit before jumping for precise positioning.

The optimization looks suboptimal on two sections (the chain swings and when you meet those rocket enemies again) because there are three lag frames not normally possible to get rid of, and because of that I refused to implement it until very late in the project. 

* __Room 5:__ Same result as the old run.

* __Room 6:__ Another room where the global timer is so unavoidable that the time lost from the fourth room doesn’t matter anymore. At least you can gain a few frames after that second chain swing by optimizing the available slopes. And more visual differences (2016/17 vs demo glitch/2025 WIP vs Final 2025 TAS):

[https://i.imgur.com/6NYOmZ9.png] [https://i.imgur.com/ElDtKm9.png] [https://i.imgur.com/z2ASPcP.png]

[https://i.imgur.com/p2XNpic.png] [https://i.imgur.com/25TEDBi.png] [https://i.imgur.com/uzxMNwJ.png]

* __Room 7:__ Slightly optimization over all other runs: one frame gained.

* __Room 8:__ Better sliding optimization = 3 frames faster.

* __Room 9:__ Same benefit like the seventh room: one frame faster.

* __Boss (Daffy The Count Duck & The Chaos Machine):__ Droodbot noticed that the Robot can be defeated if you wait some seconds before doing the actual first hit - this strategy is present in the 2017 any% run. When I implemented it during the demo glitch project, I managed to improve the fight even further.

The new run kept the optimized fight until I realized by the very end of the project that 6 frames could be gained by getting damage on the second cycle instead of the fourth cycle - fixed it!

!!__Other comments__

I'm glad the any% run is over, because that run should have finished a long time ago if weren't the fact you must keep in mind about the global timer. If I find a significant timesaver then beat that 6-1 chain swing hurdle... well, better than nothing.

I'd like to thank some people who contributed with this game: __Droodbot__ for his aforementioned 2017 project as well as finding the horizontal zip in Atlantis and discovering the Demo Glitch which motivated me to work on this game for the second time eight years ago.

Further optimization to some rooms would have missed if weren't for __Brunovalads__, who created nice a lua script that not only helped during 5-2 but I also monitored enemies, positioning and even some laggy rooms such as 1-2, 2-1, 3-3, 3-4, 5-4 and 6-4 rooms :)

This is a completely different story, not related to this project, but there's one more reason why I returned to continue this TAS recently until the end: my motivation for this game was renewed when __Frank Gasking__ from __Games That Weren't__ found some nice prototypes of this game that I documented several stuff via footage recordings using the BizHawk emulator! There's a complete proto around the internet for years, but those recent ones have much more differences than I expected.
