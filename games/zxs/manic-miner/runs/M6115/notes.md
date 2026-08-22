> **Imported**
> This run was originally published at https://tasvideos.org/6115M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Manic Miner is well-known for being an influential part of the early platformer genre, spawning many clones and inspiring countless developers. Miner Willy falls down an abandoned mineshaft and navigates a series of rooms to collect treasure and make his way back home, avoiding a whole ton of weird stuff along the way. This time, he's trying to build a second mansion so he'll need as much money as possible.
 
!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: +2A
* Aims to reach the maximum score attainable without deaths.

!! Comments

This is a tool-assisted superplay of Manic Miner for the ZX Spectrum. It completes the max score category, reaching the maximum score attainable without deaths. Using the in-game level select cheat is prohibited.

TAS timing (power on until last input): 422958 frames, 2:20:55.777

RTA timing (press ENTER to start the game until the final score is reached): 413351 frames, 2:17:43.715

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Manic Miner does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and Manic Miner has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! Version

There are two versions of Manic Miner, commonly referred to by the publishers of each version: Bug-Byte (BB) and Software Projects (SP). There are a number of minor differences between the two:
* the scrolling message on the title screen is different
* the controls have been slightly changed; 7 is jump in the Bug-Byte version, but the Software Projects version maps it to right and adds 6 as a left key to support the Sinclair joystick (which maps left and right to 6 and 7 respectively)
* the in-game cheat is changed from "6031769" (BB) to "TYPEWRITER" (SP)
* the key to activate the cheat is changed from 6 (BB) to 9 (SP)
* changes to graphics in Processing Plant, The Warehouse, and Amoebatrons' Revenge

The change that is most important to the run is, somewhat surprisingly, the graphics changes. This is because collision detection between Willy and guardians (moving enemies) is done per-pixel. All other collisions in Manic Miner are done per cell (8x8 pixel block), so changes to other graphics are not important.

The Software Projects version changes the graphics of the items and nasties in Processing Plant (no effect on gameplay) and the vertical guardians in Amoebatrons' Revenge (changes timing on a jump but does not affect the completion time of the cavern). However, the change to the vertical guardian in The Warehouse allows us to make a jump one in-game frame earlier and keep this one frame saving throughout the rest of the cavern. Completing a cavern one frame faster awards one extra point; therefore the Software Projects version allows us to complete a loop with a single point more than the Bug Byte version. This difference is negated by a lives cap that prevents us from completing both Return of the Alien Kong Beast and Skylab Landing Bay with too many lives. As a result, the maximum score attainable without deaths in the Software Projects is the same as in the Bug-Byte version; however, as it's possible to earn one point more each time around it's slightly faster to use the Software Projects version.

! General information

As mentioned previously, Manic Miner does not attempt to control its framerate. When there is more to process, the game runs slower. As a result, the first action of the run proper is to turn off the in-game music, as this provides a considerable speed boost to the game. (In RTA runs, runners often turn off the music prior to starting their run, but this is slower under TAS timing.) The run also attempts to minimise jumping, as the game slows down a little while in the air. When on the ground, the game runs at approximately one in-game frame every 0.07 seconds. For the rest of this section, "frame" refers to in-game frame.

Each frame, inputs are read twice: once for movement (checking left, right, and jump keys) and once for other actions (pausing, turning music on/off, and quitting). While in the air, the movement checks are skipped as Willy cannot be controlled while airborne.

Willy moves horizontally at two pixels per frame, whether on the ground or in the air. This means he travels across a cell in four frames. If this movement would cause him to enter a cell which contains a wall, it will be skipped and he will not move horizontally. Willy can turn around at any time while on the ground, but will not move that frame (and a jump performed that frame will result in a stationary jump).

Willy's jump carries him in a fixed arc, unless interrupted by a wall or floor. A jump lasts 18 frames, reaching a peak of 20 pixels above his starting position, allowing him to collect any item up to five cells above the ground he's standing on. This jump can be performed while stationary or while walking, the latter landing him 36 pixels away on flat ground. If he hits a ceiling during the jump, the jump will be cancelled and all movement, both vertical and horizontal, will stop, leaving him to start falling the next frame at 4 pixels/frame. If his horizontal movement is impeded during the jump, the jump will continue as normal without the horizontal movement until either the wall is no longer in the way or the jump ends. If Willy lands on solid ground before the jump is fully completed, the jump will be cancelled and he can continue walking without stopping. If he lands on completing the jump, there is a single frame in which he cannot move. If he is still in the air on completing the jump, he starts falling at 4 pixels/frame.

Every frame Willy is on a collapsing platform it will collapse. After eight frames (not necessarily consecutive) the platform will completely disappear. As Willy is always on two cells (when standing or walking) and Willy's actual position within the cells is irrelevant, a few levels have some unusual routing to make the most of these platforms.

When Willy is standing on a conveyor, the game will internally press the movement key corresponding to the conveyor direction. In most cases this will force him in the direction of the conveyor. However, if both left and right inputs are pressed together, he will continue moving in whatever direction he is currently moving. This means if he walks onto a conveyor, or jumps onto it from below, he can walk against the direction the conveyor is moving. However, if he falls onto it from above, he can only stall movement before being forced in the direction of the conveyor. Some later ports (including the GBA version) changed this to be dependent on Willy's facing direction rather than his movement direction. As the conveyor behaviour is more restrictive on the Spectrum version, some routes possible on later ports are not possible here.

Willy can safely walk off a floor and land up to four cells (32 pixels) below; when jumping he can land up to two cells (16 pixels) below the starting point of the jump. Falling any further will cause him to die on landing. He will also die on entering a cell which contains a nasty (static enemy), if his sprite touches that of a guardian (moving enemy), or if he runs out of air (effectively time in all but Solar Power Generator).

All caverns start in a fixed state; none of the enemies are affected by Willy's actions, except by flipping switches in the Kong Beast caverns. As such, there is no RNG and no enemy manipulation in the run. Deaths are prohibited by the goal choice, so there is no death abuse either.

Every 10000 points, the game awards an extra life. A single Willy is drawn for each life you have, every frame. When you have a lot of lives, this slows the game down - compare the game speed at the start of the run with the speed at the end of the run to easily visualise this.

! Goal choice

[Forum/Topics/25278|This run and its discussion] shows a game which would be infinite (or at least incredibly long until the score overflows), but having too many lives causes the game to crash, and lives are earned through score; as such, there's a more reasonable score limit if you add the restriction that it must be deathless.

The same situation exists in Manic Miner. While it's possible to overflow the visible score counter by scoring more than a million points, this would take more than six hours and twenty loops of the game; on top of that, the game continues to store an extra four digits of score internally, and overflowing these would take over seven and a half years!

However, you earn an extra life every 10000 points, and the game attempts to draw every single life you earn to the screen. This works perfectly for the first 16 lives, but the second set of 16 is drawn overwriting the first, causing some glitchy flickering behaviour. The third set of 16 is drawn past the end of the pixel data into the attribute data, changing the colours drawn into the cavern itself on rows 0, 8, and 16. Manic Miner's tile collision detection is based on attribute data, meaning that this corruption actually changes the cavern layout.

What attributes are drawn depends on which life sprite is being drawn, which is based on the current music position. By pausing the music, we can set a static set of attributes to better control the layout we want. What effect each attribute has varies by cavern, but in all cases except one, the set of attributes we get by pausing the music while the first life sprite is being drawn is the most helpful, creating a set of black and white squares that act as an additional platform.

Unfortunately, the black square in Skylab Landing Bay acts as a nasty tile, killing Willy on contact, and every other set of possible attributes overwrites an item, making it impossible to collect. As a result, it's impossible to complete Skylab Landing Bay when entering with 34 or more lives, and this creates a lives cap, eventually leading to a killscreen. In a deathless run, this is equivalent to 320000 points; if we enter Skylab Landing Bay after reaching this score, we must take (or have taken) a death to proceed.

A second killscreen in Return of the Alien Kong Beast is possible to reach, and is actually the one we lower our score to avoid. At 37 lives, the attribute corruption covers so much of the screen that it's impossible to safely get from the top to the bottom of the level, which is required to both collect the leftmost item and open the path to the right side of the level. In a deathless run, this is equivalent to 349900 points (as 100 points are awarded from collecting the item); if we enter Return of the Alien Kong Beast after reaching this score, we must take (or have taken) a death to proceed.

As a result, this run aims to enter Return of the Alien Kong Beast with exactly 349899 points as quickly and as early as possible (the tenth loop), and then achieve the maximum score in every cavern from that point onwards.

This goal choice allows me to show both the maximum score attainable in the first loop without dying (39532; truncate at frame 47710), as well as the maximum score attainable in general without dying (356359). In doing so it also shows the disintegration of the game due to excessive life count, which wouldn't be shown in optimal score attacking gameplay that allows deaths, as well as keeping the movie at a reasonable length.

!! Stage by Stage comments

This run is built on top of the [7913S|1 loop TAS] - 17 of the 20 levels there are already maximum score, as time bonus is the only source of score in those levels (apart from collecting the items), so only three levels are changed for the first nine loops. A timestamp in the temp encode is included for ease of viewing.

! Loop 1 - Miner Willy meets the Kong Beast - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=4m7s|0:04:07]
The right switch removes the platform under the Kong Beast and dunks him into the exit, scoring 2500 points. This only costs 145 frames (= 145 points) to do, with a net profit of 2355 points.

! Loop 1 - Return of the Alien Kong Beast - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=6m56s|0:06:56]
Much the same as the first Kong Beast level. Dunking the Kong Beast only costs one frame, so here it's an extra 2499 points.

! Loop 1 - Solar Power Generator - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=11m01s|0:11:01]
In the 1 loop TAS we spend as much time as possible sunbathing in order to minimise the score bonus for speed purposes. Here, we avoid the beam as much as possible and still complete the level in the same time, scoring 1137 points instead of 500.

! Loop 1 - The Final Barrier - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=12m7s|0:12:07]
This TAS has a bonus TAS contained within it - if you truncate at frame 47710, you get the "1 loop, max score, deathless" run. This doesn't have to be the case - in fact it means the full max score run is a few seconds slower than it would otherwise be due to extra lives being earned a little earlier, which slow the game down - but it seemed rude not to.

! Loop 2 - Miner Willy meets the Kong Beast - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=17m5s|0:17:05]
We... don't dunk the Kong Beast? If we score the maximum amount in every level every time, we arrive at the score cap with too many points and end a loop sooner with 344662 points instead of the maximum possible 356359. The fastest way to "lose" the excess points is to not dunk the Kong Beast on a few loops. It's slightly faster to save the dunking for the end of the run than the start, so apart from the first loop exception we made before our remaining dunks happen towards the end of the run.

! Loop 5 - Abandoned Uranium Workings - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=54m48s|0:54:48]
On frame 175779, the score surpasses 150000 and an extra life is awarded, adding a 17th Willy sprite to the score display. This overlaps the first sprite drawn so two heads are shown instead. (The lower sprite's legs are not shown because the attribute of the bottom row is set to black-on-black - but they're still drawn.) This almost looks intentional, but the flickering shows this isn't the case. It hasn't affected gameplay yet, though.

! Loop 7 - Return of the Alien Kong Beast - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=1h29m13s|1:29:13]
We start dunking the Kong Beast again - we need the points from now on.

! Loop 8 - Solar Power Generator - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=1h49m16s|1:49:16]
In order to line up the score exactly, we have to be slow in some levels. Fortunately, Solar Power Generator has a unique mechanic where your air drains faster when you're standing in the sunbeam, allowing us to lose "time" (air) without actually losing any time. We still need to be a few frames slower to get the right score but we go from 1137 points down to 747 points, which lines us up very nicely with our target score.

! Loop 9 - eturn of the Alien Kong Beast - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=1h59m59s|1:59:59]
On frame 369481, the score surpasses 310000 and an extra life is awarded, adding a 33rd Willy sprite to the score display. This sprite is drawn partially off-screen, writing into the attribute data for the screen and the buffer, which actually changes the level layouts. In most cases this results in added platforms at the top of and halfway down the screen, which also has the side effect of erasing any wall tiles there. At the moment these are too small to be useful, though.

! Loop 9 - The Sixteenth Cavern - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h2m51s|2:02:51]
The attribute corruption overwrites the topmost item in this level, which would make it impossible to collect; fortunately, with the life sprite on the right frame it draws a black-on-black attribute over that item, marking it as an air tile instead of a floor tile and allowing the item to be collected.

! Loop 9 - Solar Power Generator - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h4m59s|2:04:59]
The additional platform in this level actually hinders our progress, making descent down the left side a bit slower. Fortunately, it doesn't prevent earning maximum score as there's lots of waiting anyway. Even more fortunately, we're actually looking to earn the minimum score possible here, so we sunbathe whenever we can and jump into the portal with exactly zero frames of air remaining.

! Loop 10 - ndoned Uranium Workings - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h9m21s|2:09:21]
The additional platform in this level allows us to scale the left side slightly faster, earning an extra 2 points here.

! Loop 10 - Eugene's Lair - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h10m2s|2:10:02]
This level is again a little more difficult because of the additional platform restricting our jumps, but there's normally a little waiting required for Eugene anyway and we can just match our normal score.

! Loop 10 - Processing Plant - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h10m54s|2:10:54]
The additional platform this time around pretends to help us but in reality the enemy cycles prevent us from completing it faster despite being given a big head start.

! Loop 10 - The Vat - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h11m40s|2:11:40]
It's possible to have enough lives to earn extra points in this level; however, we need fewer in order to avoid the killscreen in Return of the Alien Kong Beast, and enemy cycles once again prevent us from completing it faster otherwise.

! Loop 10 - lly meets the Kong Beast - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h12m24s|2:12:24]
The attribute corruption overwrites an item in this level with a purely white cell. The game only checks to see if something white touches an item in order to mark it as collected, so it's automatically collected as the level starts. Because of this, we don't need to collect it ourselves, saving enough time to earn an extra 95 points here.

! Loop 10 - Wacky Amoebatrons - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h13m17s|2:13:17]
The attribute corruption overwrites a wall tile next to the exit, which allows us to jump a frame early and earn a single extra point here.

! Loop 10 - f the Mutant Telephones - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h14m54s|2:14:54]
The attribute corruption overwrites the wall tiles next to the exit, so when we jump towards the exit we don't bonk and earn a single extra point here.

! Loop 10 - of the Alien Kong Beast - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h15m48s|2:15:48]
We enter the level with 349899 points; a single point more and we wouldn't be able to complete it, as it would be impossible to proceed after collecting the leftmost item.

! Loop 10 - Ore Refinery - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h16m39s|2:16:39]
The additional platform in this level allows us to avoid worrying about the eye for a bit and earn an extra 18 points.

! Loop 10 - lab Landing Bay - [https://www.youtube.com/watch?v=1nu6gQg7Bpo&t=2h17m22s|2:17:22]
We finally made it. We enter the level with 356059 points; this is a little more than the 319999 maximum we can actually complete the level with. The middle platform overwrites the leftmost item, and there is no set of Willy sprites that write an air tile in this level, so that item will remain uncollectable. We collect the items we can, turning on the music to change the Willy sprite to at least remove the black squares (which kill Willy on contact in this level), and end the run with 356359 points.

!! Other comments

Special thanks go to Matthew Smith for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.

Last, but most definitely not least, this would definitely not have been nearly as efficient without crem, who had previously used a heuristic algorithm to find the maximum score for each cavern and how to reach that score. While his inputs weren't used (and in fact I managed to beat his Endorian Forest score by a point!) they were very helpful in both determining the optimal route as well as checking that I've done it as efficiently as I can, especially when it comes to Solar Power Generator's madness. So an extra special thanks to crem for making this TAS as optimal as it is.
