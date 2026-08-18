> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/3749M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

After 4 months of extensive work and revisions, here comes another update to the "First 500" project for me (for the third time)! The current run was published on 2006-02-21, but was originally submitted on 2005-07-07. So, technically is an 2005 run ([708M|like] [566M|a few] [554M|others])

This run is an improvement of 22907 frames (actually 22931 frames due to emulation differences) over the [481M|published run] by using 2 players, new tricks and glitches, better boss fights, and greater movement precision.

!!__Game objectives__

* Emulator used: BizHawk 2.2.1 (also syncs on latter versions)

* 2 players

* Uses death to save time

* Takes damage to save time

* Heavy glitch abuse 


!!__About the game__

Cadash is a sword and sorcery video game which combines elements of both the role-playing video game genre of games and the platform genre of games. The game was originally an arcade game released by Taito in 1989, later ported to home video game consoles such as the TurboGrafx-16 in 1991, and the Sega Mega Drive/Genesis in 1992. Isn't the most straightforward of platformers, seeing how you can actually gain levels and buy items in this one. There are also mandatory items to fetch and quests to complete in order to advance.

!!__Development of this run__

2 months after my [3271M|first contribution], I saw nifboy's published run on this site, watched this, and since I never played before, I liked this game and found interest to verify some research for improvements. At the time, I found on Github, several Sonikkustar's unfinished stuffs, including a 1p WIP and 2p WIP, as well as a RAM watch of this game!

These finds were great, but still not enough to start a new run, because first of all, mage has slower movement than fighter, but can collaborate for faster boss fights. Second, routing, studying the mechanics of both players and optimizing this game a lot. Starting the research, I transferred that RAM Watch to BizHawk, found much more addresses, and discovered how magic does much more damage than every weapon of this game.

When a new Cobra Triangle TAS was published (the previous run was also part of "The First 500"), I decided to [Forum/Posts/449907|announce] my future work on this game. Days before I also watched the PCE version of this game, and the current RTA run has included some nice skips, including a way to reach the village of "stage 4" bypassing the whole cave. Sometime ago, Aqfaq pointed on the First 500 topic: 
* There might also exist some shortcuts by dying on air and respawning on the same spot. You can "double-jump" from air when respawning.

With this hint, I tried to find a way to get a similar "stage 4" skip on the Genesis version, but since the screen won't scroll upwards in any of the places where this could be used for a very effective shortcut, my only option could be using 2 players. I formulated a certain [https://www.youtube.com/watch?v=Q7SAzsxMqA4|strategy] to do the skip, but only tested on November 2017 - 8 months later - most because of my laziness, and for my involvement with other projects.

What a great find! So, I started this run days later but soon stopped at the end of first (but very big) cave room. TASing 2 players again (at the time) was a big challenge to optimize, but returned to this game on February 2018 with improved "skills" acquired thanks for 2 Kenseiden runs - I used TAStudio most of the time.

By better improving that cave, I continued this game using "traditional input" for most of the progress (1/4 of the time) until Balrog phase 2, when I realized how coordinating 2 players to attack Balrog is extremely awful. So, the rest of the progress were entirely done with TAStudio.

Balrog, that bastard! Another 1/4 of the time only to optimize these 3 phases - needs very precise timing and positioning, in other words, was a nightmare to optimize - but the "multi-hit" glitch discovered on the dragon balrog's head (during half of the time) reduced these efforts.

After finally finishing this bastard, 2/4 of the time were for revisions - several timesavers, changes, and some new trick were found.

Cadash was painful to optimize after all. The rerecord count is __real__ (roughly 210k are "bot" rerecords)! I can't remember precisely how much rerecords were added between stages since I never considered a long time of redos and revisions (much more than all of my runs I've done before).

!!__General notes__

* First of all, this game reads input every 2 frames as opposed to every frame. So, menuing, continuing dialogues (with 2p input) and the doors can be advanced/inputted a frame earlier.

* With an extra player, there are several rooms where I stop/turnaround or even jump sometimes to avoid lag.

* Jumping stops you for a frame when landing.

* Taking damage increases horizontal speed (to always 131072 value) until he lands - one of main keys of this run. 

__Mage speed stats per level__                              

||lev 1|96768 ||lev 6 |105472||lev 11|109568||lev 16|112640|
||lev 2|98304 ||lev 7 |106752||lev 12|110336||lev 17|113408|
||lev 3|100352||lev 8 |107264||lev 13|111104||lev 18|114176|
||lev 4|101888||lev 9 |107776||lev 14|111616||lev 19|114944|
||lev 5|103424||lev 10|109056||lev 15|112128||lev 20|115200|

__Fighter speed stats per level__

||lev 1|109824||lev 6 |118528||lev 11|127744||lev 16|135936|
||lev 2|111616||lev 7 |120320||lev 12|129536||lev 17|137216|
||lev 3|113408||lev 8 |122368||lev 13|131584||lev 18|138240|
||lev 4|114944||lev 9 |124160||lev 14|133376||lev 19|139264|
||lev 5|116992||lev 10|126208||lev 15|134912||lev 20|140032|


* Because of less level up for fighter, I lost some frames nearly every room of this game (considering how leveling up needs a lot of exp). 

* About the ropes: Performing a downwards attack while in air can result of a new trick: if you intend to climb down, you can grab a rope on a pixel lower; And if you intend to climb up, you can raise some pixels before grabs a rope.


!!__Stage-by-Stage Comments__

__Power-on__

* 13 frames saved on the title screen (could be only 10 frames, but since 2p input also works here, +3 frames were saved).

* Mage is selected because when the game starts, the 2nd player is a bit farther to the left than player 1. So, mage assumes 1p stats while fighter assumes 2p stats.

* No "renaming" this time, but doesn't count as an improvement.


!!__Stage 1__

 
* Fighter picks a medicinal herb (but costs ~3 seconds). Reason will be revealed later!

* Could be entered that door (which leads you to cave) a frame earlier, but after my lastest castle revision, I ended with some added lag in the cave. Reason: Like I explained before, this game reads input every 2 frames as opposed to every frame - but this "way" can result an input desync if I enter the next room with a single different frame. This is one a few rooms of this game to sacrifice a frame just to avoid desync.

__Cave__

* First objective: Leveling up mage until level 3, to gain the most important key of this run: flying dagger's spell, which does 40 HP (each dagger) for every enemy/boss. 

* Can't avoid those falling rocks this time because of slower mage and to avoid lag. 

__Boss: Black Pudding__ (Life: 288 HP)

* With that spell, both players can attack without waiting at all.



* On the portal room: I used mage to talk while fighter still moves - so, the door is opened a few frames earlier, and during the opening, a mid-air turnaround trick is used to gain a few pixels that only works with fighter.


!!__Stage 2__

* I bought an extra continue (but costs a lot of time) which is necessary for the last 2 stages.

__Cave__

* Like the published run, you can bypass this stage without the need of Mermaid Scale (which allows players to bypass waters safely)

* Weapon shop skipped, no fire sword this time.

!!__Stage 3__

* Without fire sword for fighter, flying daggers replaces this, as well as optimizing movement while avoiding lag as much as possible. 


__Boss: Worm__ (Life: 10 hits?)

This boss has 65535 HP, but actually can be defeated with only 10 hits no matter what spell/weapon damages him. Also for some reason, if you attack using the second player, he recieves damage every frame. Destroyed with only 2 sword attacks (first attack = 7 hits; second attack = 3 hits). Since I don't understand about debugging at all, I asked Alyosha (author of the "first 500" topic) to understand how this bug works. He wrote this: 

%%QUOTE Alyosha

So what happened here is an error in the way player 2's damage is calculated. 

To see what happened, first let's look at player 1. Player 1's damage is calculated like this: 

 01446C:  5268  addq.w  #1, ($9C,A0) ....

A0 is the base offset for which enemy the game is checking if damage is being dealt to. For the worm boss, A0 is FF10C0. 

$9C is the offset, so that line of code is adding 1 to FF10C0 + 9C, which is FF115C, the bosses health. 

Once this is done, the game will check other memory locations for enemies there, the next A0 would be FF11C0 and so on. 

Now for some reason, player 2 is calculated differently: 

 014594:  5279  addq.w  #1, ($FF115C) ...

It adds damage directly to the boss. 

This is fine for the first loop at A0 = FF10C0, since this is indeed the bosses head. Once you hit the boss, the invincibility timer starts and you can no longer deal damage. 

But, the game also adds this damage when in contact with the second segment at A0 = FF11C0! Since the game isn't using the offset to add the damage to the correct location, the boss takes the damage every frame.

%%QUOTE_END

Now, backtrack...(and using our remaining MP...)

* Reaching the end of the roon, mage is killed to fighter gain some "boost" when starting the next screen. Mage jumps before dies so the next screen will scrolls only forward.

* Since I have a weaker sword, nearly all enemies during the remaining of the cave were skipped.

* On the second-to-last room before the village, sprite limit abused so one of the plants fails to vomit, allowing me to bypass safely instead to wait so much. 

* On the next room, I killed a few enemies since I used only one medicinal herb and still need to keep these continues.

* A [https://www.youtube.com/watch?v=JKsS91kj-K4|shortcut] could be possible, but all continues are necessary to skip most of the next stages.

* In the village, fighter (when small) uses 65536 speed value. Small mage also uses the same value. How interesting.

__Stage 4__

* In the first cave room, our first shortcut of this TAS: By dying, respawning and jumping on mid-air, if you respawn the other player on the very top of the screen, this game pushes the player to left and you must wait until the other player lands - so you can move again. 

* In the village, I bought a new weapon for mage, to save time on the next battles.

* Back to the shortcut room, I could return to the graveyard a frame earlier, but...

* ...graveyard lags so much that was the second hardest path of this run to optimize. 

* Unavoidable thief during the way to the boss (since I haven't bypassed that side before)

__Boss: Fire Elemental (a.k.a "Satan")__ (Life: 896 HP)

* Strategy:

- Mage attack (with a new weapon): 21 damage, and spell again.

- Fighter attack (same weapon as published run): 22 damage this run (level 6, strength 37) while the published run does 26 damage per hit (level 8, strength 41)

Cycles: 

__published run:__ 1 - 286 damage, 2 - *260 damage*, 3 - 286 damage, 4 - remaining HP (64)

__new run:__ 1 - 713 damage, 2 - remaining HP (183)


* normally you must dodge that fire (which forces you to delay the first attack), but I recently found a better way to avoid this (and without the need to jump), allowing fighter to deliver an extra attack - frame perfect and reaching 286 damage 1 frame before he splits into flames.


* During the return, mage is killed again (also level up for him) because the slower movement doesn't contribute at all.

* Depending of your overall timing, during the brigde cutscene, you can gain 2 frames, or nothing, or even lose 2 frames. So I used this "problem" to avoid a lag during the path with several zombies. 

!!__Stage 5__

* Skipping enemies, again.

* Since the jump height isn't enough to reach the very top, mid-air jump + reviving mage to skip directly to golden key path - also skipping Jelly Giant boss.

* Since Balrog is located "in the other side" of this castle, and I skipped the golden key, I need to kill a player (fighter because he has less than 100 HP so he can die earlier than mage) to revive later (on the path with hidden platforms) at the same time for skip that backtracking (normally you must return to the very first door of the castle, then open the golden door to continue the rest of stage) directly to the last path of castle from the third path of doors. 

* No weapon shop this time.


__Boss: Worm__ (again, but his life is now 20 hits)

Strategy: Same from stage 3.


* Worm could be [https://www.youtube.com/watch?v=2kIIQrkN2Cc|skipped] (this video uses a different glitch which wasn't used in this run), but I haven't continues anymore.

__Boss 2: Balrog__


* Phase 1: HP value starts with 34412 and can be defeated starting with 32767 HP (1645 HP).

Strategy: Mage spell, attack with turnarounds to manipulate his position, since you need to avoid lighting, as well as defeating on the lowest position as possible, because the phase 2 loads...

* Phase 2: ...when he lands. Dragon Balrog continues to use the HP value of phase 1! So, we must continue to attack until he reaches 31231 HP or lower.

Strategy: Hitting Dragon Balrog's head normally does a bit more damage than the body, but the multi-hit glitch also works here! Since the glitch only works by the second player, fighter uses this while mage...same strategy - with a lot of careful timing and manupulation of flying daggers - 5 hits per cycle.


__Castle (return)__

* A dialogue between Princess Salassa and "Fake King" are skipped by entering the door. 

__Boss: Dragon Balrog__ (again)

* Starts with 34816 HP, loses his wings starting with 32767 HP and ends starting with 31231 HP.

Strategy: Similar as phase 2, (with a few differences), and ending input with the last multi-hit set. Balrog dies at 31229 HP with a last flying dagger at the end of magic timing.

__Table__
|-Stage-||Improvements|
||Stage 1|  449 frames|
||Stage 2|    3 frames|
||Stage 3| 1348 frames|
||Stage 4| 4994 frames|
||Stage 5|16104 frames|
|-Total-||22898 frames|

__In detail__ (but the "total" result looks different - probably could be due of more lag/and emulation accurracy between screen transitions)

Note: Less level-up fighter = frames lost nearly every room of this game.

|Stage 1||Frames saved/lost|
||Castle |123 frames lost  |
||Outside| no frames saved |
||Cave   |210 frames slower|
||Boss   |794 frames saved |
||Portal | 3 frames saved  |
||Exit   | 5 frames slower |
|-Total-||459 frames faster|

|Stage 2||Frames saved/lost|
||Village|1303 frames slower|
||Cave   | 2 frames slower |
||Portal |1312 frames saved|
|-Total-|| 7 frames faster |

|Stage 3||Frames saved/lost|
||Room 1 | 12 frames slower|
||Room 2 |270 frames saved |
||Boss   |820 frames saved |
||R2 redo| 80 frames saved |
||R1 redo| 39 frames saved |
||Room 3 | 25 frames saved |
||Room 4 |144 frames saved |
||Village| 4 frames slower |
||Weapon | 2 frames slower |
||To shop|  1 frame saved  |
||Portal | 2 frames slower |
||Exit   | 5 frames slower |
|-Total-||1354 frames saved|


|Stage 4||Frames saved/lost|
||Outside| 12 frames slower|
||Cave R1|partially skipped|
||Cave R2|skipped this one...|
||Cave R3|skipped...and now|
||Village|5610 frames saved|
||Pendant| 52 frames saved |
||To cave|1637 frames lost |
||Return | 9 frames faster |
||Grave  | 24 frames saved |
||To Boss|163 frames slower|
||Boss   |1205 frames saved|
||Return | 22 frames slower|
||Brigde | 32 frames slower|
||Entered| 6 frames slower |
|-Total-||5028 frames saved|

|Stage 5||Frames saved/lost |
||Room 1 |New room, big skip|
||Room 2 |...boss skipped...|
||The key|gained 7170 frames|
||Return*| 79 frames slower |  
||Again  |big skip once again...|
||Ditto  |...no backtracking...|
||Room 3 |at all...and resulting|
||Middle |...4583 frames saved|
||->Go->*|1112 frames faster|
||Balrog1| 400 frames saved |
||Balrog2| 735 frames saved |
||Castle | 266 frames saved |
||Balrog3|1925 frames faster|
|-Total-||16112 frames saved|

* Skips calculated after entering door.

__Memory addresses__%%%
[UserFiles/Info/637936906504271402]

!!__Other comments__

Well this project was the hardest I have worked on, and despite how several paths and revisions were frustating to optimize, I'm satisfied with this big result and glad to finally put another old run to obsolete (although nifboy's 1p route is very well planned and executed - So, the published run isn't much outdated in terms of optimization). 9 left (Hey! we reached 1/4 of the list).

Hope to see another "First 500" run obsoletion someday :)


I have one more project to still finish this month if possible, and after this, I'll stop my projects for months, but I'll still collaborate with some stuff if possible.


Suggested screenshot

[https://i.imgur.com/5M5k32M.png]

Just kidding :p 

Here's the real suggestions:

[https://i.imgur.com/sPNjtuu.png] [https://i.imgur.com/lBzSMVR.png] [https://i.imgur.com/6ryxLqD.png]

!!__Special thanks__

* __nifboy__, for the published run.

* __Aqfaq__, for mentioned some useful things to a 2p run, including more about the mid-air jump glitch, which could be useful to do possible shortcuts.

* __Sonikkustar__, for the WIP of 1p, 2p, and for a RAM watch - were one of main keys to find improvements.

* __Alyosha__, not only for the "First 500" topic but for the help about how "that glitch" works on the worm boss (mentioned before).

* I also d'like to thanks __The8bitbeast__ for his tutorial video about finding RAM addresses in Bizhawk. Helped me so much that I also used Sonikkustar's RAM Watch to find much more addresses and research for this game.
