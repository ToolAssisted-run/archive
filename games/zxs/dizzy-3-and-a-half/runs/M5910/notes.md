> **Imported**
> This run was originally published at https://tasvideos.org/5910M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Dizzy Three And A Half is a prequel to/prologue for Magicland Dizzy released exclusively for Crash Magazine. The Evil Wizard Zaks is back from his demise in the original Dizzy, and teleports the Yolkfolk to Magicland, casting evil spells on them to imprison them there forever. Dizzy must free them all... but first, he needs to get there. This time around, he decides to do it in style.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: +2A
* Aims to beat the game as quickly as possible.
* 100% completion. (Technically infinity% completion because it gets a collectible in a game that isn't supposed to have collectibles.)
* Heavy glitch abuse.

!! Comments

This is a tool-assisted speedrun of Dizzy Three And A Half for the ZX Spectrum. It completes the 1-diamond category, beating the game while also collecting a diamond.

TAS timing (power on until last input): 18633 frames, 6:12.511

RTA timing (press SPACE to start the game until WEIRDHENGE appears): 10215 frames, 3:24.218

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Dizzy Three And A Half synchronises its game engine to the screen's refresh rate, and therefore generally runs marginally (~0.1%) faster on 48K than on 128K versions. However, 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds; this means that menuing and room transitions are faster on these models. The +3 is a disk-based system, and Dizzy Three And A Half has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

The game runs at a relatively constant 12.5fps (one in-game frame every four screen refreshes). Menuing and screen transitions take longer than this and are simply processed as quickly as possible ignoring framerate. For the rest of this section, "frame" refers to in-game frame.

Dizzy moves horizontally at four pixels per frame, whether on the ground or in the air. While standing or walking on ground, he can stop and turn around instantly, but he cannot be controlled in the air. A jump can only be performed while standing or walking on ground; this pushes Dizzy upwards at a fixed velocity and sends him into a roll. He cannot be controlled while rolling and will continue rolling until he is both on the ground and on his feet.

Dizzy can pick up and drop items, and the game revolves around his using this ability to solve puzzles. By pressing the menu button, the inventory will open. If an item is within Dizzy's reach, he will also pick it up. Dizzy can initially hold two items at a time, and picking up a third item will cause Dizzy to automatically drop the first. Selecting an item in the inventory will make Dizzy use or drop it. The menu can only be opened while standing still, and items do not act under physics; once dropped, they are stationary and do not move until picked up again.

If an item is dropped within its designated use area, the item will (usually) disappear and some interaction will occur (e.g. opening a bridge). In addition, some items have no purpose and exist as red herrings. The short rope and long rope items are unique, as both must be held at the same time in order to combine them into a new item. The skyboots allow us to walk on clouds while they're in our possession.

All rooms start in a fixed state, but maintain their state between visits. Dizzy starts with three lives and a full health bar; contact with enemies results in a draining of health, with a life lost when health is fully drained. Falling into water is an instant loss of life.

! Item embedding

If we drop an item such that any part of it overlaps a solid tile, the item collision takes priority and "erases" the collision of the solid tile. This isn't particularly useful by itself, but in combination with a few other glitches this is insanely powerful.

! Item warping

If we drop an item during a screen transition, the game places the item in the room we just left, but in our new screen position, i.e. on the opposite side of the screen to where we were. Depending on a number of factors related to collision and Dizzy's state, Dizzy himself can also warp from across the screen.

This is much easier said than done, of course. The menu cannot be opened while moving, so we need to create special conditions to allow us to move between screens without moving. Some staircases can be climbed by walking; should one of these staircases go up between two screens, it's possible to walk into a step and then stop walking and open the menu before it has finished pushing us up to the next screen. This consisently warps the item to the bottom of the screen, but will not warp Dizzy.

Instead, we must also place an item at the bottom of the screen above, embedding it in the ground and erasing the step such that Dizzy repeatedly gets pushed up by the lower screen's step and falls down again. With the collision erased from above, Dizzy will sometimes wrap along with the item.

! Out of bounds

The map outside of boundaries consists of empty screens. Some screens contain garbage data, the title screen itself is a screen in the game world, and one screen is used to store items that have either been removed from the game world or have not yet appeared there.

The map wraps, but the top and bottom do not line up perfectly; after falling through the bottom of the map, Dizzy will wrap to the top, but three screens to the left. The game's title screen and ending screens are located just to the left of the game world, and the diamond is located on the top of the ending screen, so our goal is to find our way here (and back again) via the surrounding garbage.

! Route

[https://i.postimg.cc/wx5JNbWf/Dizzy3-H-map-pos.png]

We start by saying hi to Danny, who has found a pair of skyboots and got himself stuck falling upwards. We grab a starting handle and a long rope, and use the long rope to get Danny down. He gives us the skyboots, which allows us to walk on clouds.

With three items in hand, we begin our out of bounds. The actual items used are unimportant, so we just use the one nearest the cursor. We start by warping the skyboots to the bottom of the forest screen, and then embedding the long rope at the bottom of the hut screen. This puts us in a state where we constantly fall between the two screens and forcing our menu open whenever the menu cooldown timer expires. The menu doesn't stop opening until we regain control of Dizzy.

When the falling and menu opening synchronise to create another item warp, we swap the skyboots for the starting handle and this warps Dizzy at the same time. We keep falling (and closing the menu) until we finally land on something... a garbage room containing multiple copies of Grand-Dizzy's machine, now solid. Unfortunately this is positioned such that it keeps us in the state where we're constantly falling between two screens, but luckily we can embed the skyboots into the machine to create an area we can stand for long enough to regain control of Dizzy.

From there we fall to the right until we reach the ending screen, collect the diamond, and fall to the right again to get back inbounds. We head to Grand-Dizzy's machine, where we take a short rope and tie it to the long rope to make a knotted rope. We tie the knotted rope to the machine and repeatedly use the starting handle on it until it starts, powering the teleporter. We jump in the teleporter, and arrive in Magicland ready for the next game.

!! Other comments

This is just a fun little bonus run to squeeze a lot more life out of Dizzy Three And A Half. Because it's a demo built on Magicland Dizzy's engine, the code for collecting diamonds is still present, and as there's a diamond on the first screen of Magicland, there's a diamond on the ending screen of Dizzy Three And A Half (it's the same screen). It's only natural to find a way to collect it, right?

Special thanks to TwoSpacesSG for finding how to get the diamond in the first place. Further special thanks go to The Oliver Twins for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
