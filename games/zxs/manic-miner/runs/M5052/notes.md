> **Imported**
> This run was originally published at https://tasvideos.org/5052M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Manic Miner is well-known for being an influential part of the early platformer genre, spawning many clones and inspiring countless developers. Miner Willy falls down an abandoned mineshaft and navigates a series of rooms to collect treasure and make his way back home, avoiding a whole ton of weird stuff along the way. This time, he's late for his favourite TV show so he needs to do it as quickly as possible.
 
!! Game objectives

* Emulator used: BizHawk 2.8
* Model used: +2A
* Aims to beat all 20 caverns as quickly as possible.

!! Comments

This is a tool-assisted speedrun of Manic Miner for the ZX Spectrum. It completes the 1 loop category, jumping into the exit at The Final Barrier as quickly as possible. Using the in-game level select cheat is prohibited as this would not only trivialise the run, but also prevents the swordfish from appearing at the end of the game.

TAS timing (power on until last input): 47025 frames, 15:40.124

RTA timing (press ENTER to start the game until entering the final gate): 37361 frames, 12:26.921

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

The Software Projects version changes the graphics of the items and nasties in Processing Plant (no effect on gameplay) and the vertical guardians in Amoebatrons' Revenge (changes timing on a jump but does not affect the completion time of the cavern). However, the change to the vertical guardian in The Warehouse allows us to make a jump one in-game frame earlier and keep this one frame saving throughout the rest of the cavern. As a result, the Software Projects is one frame faster than the Bug-Byte version, so this is the version the run uses.

! General information

As mentioned previously, Manic Miner does not attempt to control its framerate. When there is more to process, the game runs slower. As a result, the first action of the run proper is to turn off the in-game music, as this provides a considerable speed boost to the game. (In RTA runs, runners often turn off the music prior to starting their run, but this is slower under TAS timing.) The run also attempts to minimise jumping, as the game slows down a little while in the air. When on the ground, the game runs at approximately one in-game frame every 0.07 seconds. For the rest of this section, "frame" refers to in-game frame.

Each frame, inputs are read twice: once for movement (checking left, right, and jump keys) and once for other actions (pausing, turning music on/off, and quitting). While in the air, the movement checks are skipped as Willy cannot be controlled while airborne.

Willy moves horizontally at two pixels per frame, whether on the ground or in the air. This means he travels across a cell in four frames. If this movement would cause him to enter a cell which contains a wall, it will be skipped and he will not move horizontally. Willy can turn around at any time while on the ground, but will not move that frame (and a jump performed that frame will result in a stationary jump).

Willy's jump carries him in a fixed arc, unless interrupted by a wall or floor. A jump lasts 18 frames, reaching a peak of 20 pixels above his starting position, allowing him to collect any item up to five cells above the ground he's standing on. This jump can be performed while stationary or while walking, the latter landing him 36 pixels away on flat ground. If he hits a ceiling during the jump, the jump will be cancelled and all movement, both vertical and horizontal, will stop, leaving him to start falling the next frame at 4 pixels/frame. If his horizontal movement is impeded during the jump, the jump will continue as normal without the horizontal movement until either the wall is no longer in the way or the jump ends. If Willy lands on solid ground before the jump is fully completed, the jump will be cancelled and he can continue walking without stopping. If he lands on completing the jump, there is a single frame in which he cannot move. If he is still in the air on completing the jump, he starts falling at 4 pixels/frame.

Every frame Willy is on a collapsing platform it will collapse. After eight frames (not necessarily consecutive) the platform will completely disappear. As Willy is always on two cells (when standing or walking) and Willy's actual position within the cells is irrelevant, a few levels have some unusual routing to make the most of these platforms.

When Willy is standing on a conveyor, the game will internally press the movement key corresponding to the conveyor direction. In most cases this will force him in the direction of the conveyor. However, if both left and right inputs are pressed together, he will continue moving in whatever direction he is currently moving. This means if he walks onto a conveyor, or jumps onto it from below, he can walk against the direction the conveyor is moving. However, if he falls onto it from above, he can only stall movement before being forced in the direction of the conveyor. Some later ports (including the GBA version) changed this to be dependent on Willy's facing direction rather than his movement direction. As the conveyor behaviour is more restrictive on the Spectrum version, some routes possible on later ports are not possible here.

Willy can safely walk off a floor and land up to four cells (32 pixels) below; when jumping he can land up to two cells (16 pixels) below the starting point of the jump. Falling any further will cause him to die on landing. He will also die on entering a cell which contains a nasty (static enemy), if his sprite touches that of a guardian (moving enemy), or if he runs out of air (effectively time in all but Solar Power Generator).

All caverns start in a fixed state; none of the enemies are affected by Willy's actions, except by flipping switches in the Kong Beast caverns. As such, there is no RNG and no enemy manipulation in the run. On death, the entire cavern resets back to its initial state, so there is no death abuse either.

!! Stage by stage comments

! Loading
The first three minutes of the run consist of loading. The +2A accepts menu input from frame 55, so a single ENTER press is used here to start loading the game immediately.

! Central Cavern
Jumping from the conveyor to the higher platform directly saves a jump. A lot of levels have a bottleneck in the form of enemy cycles and for this level, the yellow robot prevents us from immediately taking the conveyor so we have to wait until it's in a convenient position.

! The Cold Room
It's possible to adjust your position to do a walking jump to the upper platform with the penguin on it, but as we have to wait for the lower penguin cycle anyway I opt for a cleaner-looking (albeit slower) route beforehand. In some versions of the game it's possible to enter the end gate walking behind the penguin, but on the Spectrum we have to wait for it to come back and jump over it.

! The Menagerie
In terms of raw movement time, it makes no difference whether you collect the lower left key first or last, but the enemy cycles mean the latter is slower as we have to wait for them. Stopping one cell before the last key and walking into/out of the cell saves two frames over walking directly above the key and waiting for that ground to collapse.

! Abandoned Uranium Workings
The enemies in this level can be entirely ignored, as can the fact that the collapsing platforms collapse, it's just pure straightforward platforming.

! Eugene's Lair
We can skip the entire bottom right section by running right along the conveyor and collecting the item from there. After all items are collected Eugene starts moving down to block the exit, so we wait for him to raise up a bit before collecting the final item. Then we clip through a wall (by jumping into the corner perfectly, the frame prior to collision Willy is both above and to the left of the wall, so neither the horizontal nor vertical checks detect the solid block) to cut down on both height (so we can jump earlier) and time.

! Processing Plant
Much like The Menagerie, we get the central items from the left instead of the right simply because of enemy cycles. The Software Projects version leans a bit more heavily into the Pac-Man references by replacing the generic plant nasty with a ghost.

! The Vat
Because collapsing platforms are cell-based, when falling through a large number of collapsing platforms like those found here you can move one cell to the right each time you drop with zero time cost. Unfortunately it makes no difference as we have to wait for the yellow kangaroo anyway.

! Miner Willy meets the Kong Beast
The left switch opens a hole in the wall to access the right side, and also changes the purple barrel cycle. We collect the left-most banana first as the cycles line up better that way. The right switch removes the platform under the Kong Beast and dunks him into the exit, scoring 2500 points, but isn't required and takes much longer than not doing it.

! Wacky Amoebatrons
By walking to the right immediately, you can squeeze under the green amoebatron. Some of the platforms are completely skipped with pixel-perfect jumps.

! The Endorian Forest
The key to optimising this level is managing the collapsing platforms. After waiting for the yellow Ewok we make our way to the right and then jump on the collapsing platforms as early as possible and spend as much time on them as possible before jumping off.

! Attack of the Mutant Telephones
It looks like the drop beside the magenta phone is too far to survive, but it's one cell short of deadly. We run under the yellow and red phones with pixel- and frame-perfect accuracy, then do the same jumping over the red and magenta phones.

! Return of the Alien Kong Beast
Much the same as the first Kong Beast level. A moving jump onto the conveyor lets us reach the exit without waiting for the barrel to move.

! Ore Refinery
Fairly straightforward level. It's quicker to pick up the left-most ore on the way up the ladder than picking it up later, as unlike later ports of the game Willy can't collect items one cell below him, so the lower items require dropping to the lower level to collect.

! Skylab Landing Bay
The enemies in this level move differently to other enemies in the game. Despite that, they're still the same every time. We can't cross this conveyor from left to right, but we can hold our position on it when we first land on it which is wholly unnecessary but looks a little surprising.

! The Bank
A brief wait for the yellow ATM and we collect an item from below. A relatively easy level given its place in the game.

! The Sixteenth Cavern
This level starts off with nine pixel- and frame-perfect jumps. Fortunately, when trying to pull them off in an RTA run the first one sets up the next seven without needing to worry about them, so really it's only two. We collect the last key while inside the exit gate, so we immediately leave the level before the game has a chance to redraw things with the key gone.

! The Warehouse
Lots of collapsing platform management here. The different shape of the vertical guardians in the Software Projects version means we can jump earlier over the blue triangle and reach the exit earlier.

! Amoebatrons' Revenge
This level is all about waiting. So many of the cycles are tied together so tightly that there's nothing to do but wait for things to open up, especially at the very start.

! Solar Power Generator
The yellow light beam saps Willy's air, reducing the amount of time he has in the level. To make matters worse, it bounces off every enemy in the room. However, to merely complete the level you can ignore it and just be fast. This level is also highly dependent on cycles, especially the yellow and red mirror balls. We use both of these facts to *maximise* our time in the yellow beam, and therefore end the level with only a few frames to spare, skipping the bonus score countdown at the end.

! The Final Barrier
An easy and simple final level, whose only notable feature is that it has the top half of the title screen in it.

!! Other comments

This is my first TAS and one of my first speedrunning games. I played the game as a child and didn't especially like it then, but after learning to speedrun it I found a new appreciation for it. It's designed around score attacking (which for 17 of the 20 levels is the same as speedrunning it), and is more fun when you play it that way. I don't fully understand all of the complexities of TASing, so this was nice to ease into as it has no RNG or enemy manipulation to deal with.

Special thanks go to Matthew Smith for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.

Last, but most definitely not least, this would definitely not have been nearly as efficient without crem, who had previously used a heuristic algorithm to find the maximum score for each cavern and how to reach that score. While his inputs weren't used (and in fact I managed to beat his Endorian Forest score by a point!) they were very helpful in both determining the optimal route as well as checking that I've done it as efficiently as I can. In a few caverns, including Central Cavern, The Warehouse, and the aforementioned Endorian Forest, my initial attempt scored less than he did, so I knew there were definitely still some improvements to be made. So an extra special thanks to crem for making this TAS as optimal as it is.
