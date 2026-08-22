> **Imported**
> This run was originally published at https://tasvideos.org/5113M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Jet Set Willy is the sequel to Manic Miner and the second game in the Miner Willy series. It's also the first "modern" game - it's open world, it has DRM, and the original release had many game-breaking bugs rendering the game impossible to complete. Willy wakes up in a bathtub with the tap still running after a party he's too hungover to remember, and has to tidy up the entire house in order for his housekeeper Maria to let him go to bed.

!! Game objectives

* Emulator used: BizHawk 2.8
* Model used: +2A
* Aims to get to bed as quickly as possible.

!! Comments

This is a tool-assisted speedrun of Jet Set Willy for the ZX Spectrum. It completes the any% category, touching the bed in Master Bedroom as quickly as possible. Using the in-game room select cheat is prohibited.

TAS timing (power on until last input): 59841 frames, 19:56.341

RTA timing (press ENTER to start the game until entering the final gate): 37361 frames, 17:11.008

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Jet Set Willy does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and Jet Set Willy has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! Version

There are two versions of Jet Set Willy; the original release had four bugs that rendered the game impossible to complete. Software Projects issued a "patch" in the form of four POKEs that did the bare minimum required to make the game consistently completable. The patch changes:
* address 42183 from 28 to 11, which moves an unreachable and invisible item from First Landing to The Hall... where it's still invisible, but is almost impossible to avoid en route to the item in The Front Door.
* address 56876 from 8 to 4, which replaces a wall cell with a floor cell in The Banyan Tree, giving access to the items in Conservatory Roof.
* address 60231 from 12 to 0, which removes a nasty cell in Conservatory Roof, allowing the item next to it to be collected.
* address 59901 from 213 to 82, which fixes a misplaced arrow in The Attic, preventing it from flying off the screen and through the game code, corrupting everything and making many rooms kill you instantly on entering them. Amazingly enough, this bug doesn't prevent the game from being completed, as you can save the attic run until your last few items and there is a safe path back to Master Bedroom - but it does prevent it from being completed twice, as restarting the game doesn't fix the corrupted rooms.

This patch was incorporated into the loader for the later release, usually dubbed "PCG Bugfix" due to the POKEs first appearing in the Personal Computer Games magazine. The run uses this version as it's faster than typing in the fixes manually.

! General information

As mentioned previously, Jet Set Willy does not attempt to control its framerate. When there is more to process, the game runs slower. As a result, the first action of the run proper is to turn off the in-game music, as this provides a considerable speed boost to the game. (In RTA runs, runners often turn off the music prior to starting their run, but this is slower under TAS timing.)

The game also runs slower when there are more lives available. Death abuse in general save more time than can be gained from this, but items are collected in an order which puts these deaths as early as possible, to maximise the benefit from both the death abuse and the increase in game speed. This change in speed is not as dramatic as that from turning off the music, but is still significant: https://www.youtube.com/watch?v=gkcMWIaPLAg

In addition, the run attempts to minimise jumping, as the game slows down a little while in the air. In best conditions, the game runs at approximately one in-game frame every 0.07 seconds. For the rest of this section, "frame" refers to in-game frame.

Each frame, inputs are read twice: once for movement (checking left, right, and jump keys) and once for other actions (pausing, turning music on/off, and quitting). While in the air, the movement checks are skipped as Willy cannot be controlled while airborne.

Willy moves horizontally at two pixels per frame, whether on the ground or in the air. This means he travels across a cell in four frames. If this movement would cause him to enter a cell which contains a wall, it will be skipped and he will not move horizontally. Willy can turn around at any time while on the ground, but will not move that frame (and a jump performed that frame will result in a stationary jump).

Willy's jump carries him in a fixed arc, unless interrupted by a wall or floor. A jump lasts 18 frames, reaching a peak of 20 pixels above his starting position, allowing him to collect any item up to five cells above the ground he's standing on. This jump can be performed while stationary or while walking, the latter landing him 36 pixels away on flat ground. If he hits a ceiling during the jump, the jump will be cancelled and all movement, both vertical and horizontal, will stop, leaving him to start falling the next frame at 4 pixels/frame. If his horizontal movement is impeded during the jump, the jump will continue as normal without the horizontal movement until either the wall is no longer in the way or the jump ends. If Willy lands on solid ground before the jump is fully completed, the jump will be cancelled and he can continue walking without stopping. If he lands on completing the jump, there is a single frame in which he cannot move. If he is still in the air on completing the jump, he starts falling at 4 pixels/frame.

Internally, staircases are cells which teleport Willy up or down a cell when you walk into/off them in the correct direction. His visual position is then lowered depending on his horizontal position to create the appearance of a smooth ascent/descent. Collision detection with guardians is done using his visual position, but everything else uses his internal position, most notably jumps (which can cause him to instantly shoot upwards six pixels before even starting the jump). If jumping onto a staircase means he lands on a cell having already moved partway into the next cell, he won't be warped upwards but instead will be able to walk through the staircase (this is an intended mechanic). It's also possible to jump through a staircase without landing on any of the cells that make up the staircase, in which case Willy will just continue his jump as normal; the run usually does this as it is faster than landing on it and falling.

Ropes swing in rooms in a fixed pattern; if Willy touches a rope he will grab onto it. Moving in the direction the rope is currently swinging climbs down the rope, and moving in the opposite direction climbs up it. Some ropes allow him to climb to the top of the screen and enter the screen above, and others... shouldn't, but a well-timed jump can make that happen anyway, which usually results in re-entering the screen at the bottom of the room and resetting the room cycle as a result.

When Willy is standing on a conveyor, the game will internally press the movement key corresponding to the conveyor direction. In most cases this will force him in the direction of the conveyor. However, if both left and right inputs are pressed together, he will continue moving in whatever direction he is currently moving. This means if he walks onto a conveyor, or jumps onto it from below, he can walk against the direction the conveyor is moving. However, if he falls onto it from above, he can only stall movement before being forced in the direction of the conveyor. Many conveyors are disguised as normal platforms, and even some staircases are conveyors.

Willy can safely walk off a floor and land up to four cells (32 pixels) below; when jumping he can land up to two cells (16 pixels) below the starting point of the jump. Falling any further will cause him to die on landing. He will also die on entering a cell which contains a nasty (static enemy), or if his sprite touches that of a guardian (moving enemy) or arrow.

All rooms start in a fixed state, and none of the enemies are affected by Willy's actions. As such, there is no RNG and no enemy manipulation in the run. On death, the entire room resets back to its state on entering the room, including Willy himself. The exception to this rule is items, which remain collected even after death; this allows for death abuse by collecting items earlier than they should be able to by dropping onto them from far above, or by dying after collecting the item to warp back to the room entrance.

There is a time limit in the game - it will instantly exit to the title screen when the time hits 1am, regardless of the state of the game at the time. As the in-game clock runs about three times real-time speed, this gives about six hours real-time to beat the game. This run takes less than twenty minutes.

!! Detailed comments

! Loading and pre-game

The first three minutes of the run consist of loading. The +2A accepts menu input from frame 55, so a single ENTER press is used here to start loading the game immediately. After the game has loaded, there is a DRM check to make sure we haven't copied this game illegally - every Jet Set Willy game came with an cassette inlay with a grid of colours; the game will ask for a random part of this grid as proof you have this inlay. We definitely have this inlay. Interestingly even this is bugged - there's a 1/256 chance it will ask for grid location 'D>', which doesn't exist.

! Main House (items 1-14)

We immediately head right to collect the tap. Collecting the light in Top Landing first saves a few in-game frames but is much slower in real-time due to life count, so instead we go straight to The Chapel. The staircase here is a conveyor, but even if it wasn't it would still be faster to jump through the staircase to collect the item. The monk always faces away from the altar for some reason. We then die to the demonic face to instantly warp back to where we entered the room.

We go down and collect both items in Main Stairway and enter our first room duo in the form of The Kitchen/West of Kitchen. This pair of rooms is similar to the Amoebatron caverns in Manic Miner; a long winding upward path with lots of vertical enemies. The conveyor tiles in West of Kitchen are corrupted, something that will become a common theme throughout the game. We reach the top and collect the item in The Banyan Tree, before heading right into The Nightmare Room where we turn into a flying pig and dodge flying Marias and a foot in order to collect a beer mug. The staircase and conveyor tiles are corrupted due to some misaligned data, but this doesn't affect gameplay. We then die to pink Maria #2 to instantly warp back to where we entered the room.

Back into The Banyan Tree, the patched version allows us to climb upwards into A bit of tree; we briefly clip into the wall on the way up to cancel our jump early. After some more corrupted graphics in A bit of tree we reach Under the Roof, where another bug prevents you from going back down as you collide with the plane at the top of the room, instantly killing you. We head left into Conservatory Roof where more graphics corruption hides the fact that there's a conveyor in the room, and collect the four items in there (it's impossible to collect the left-most item without dying).

We drop down into Orangery and collect the three items in there before jumping down into Swimming Pool. There's an item in the Swimming Pool, but it can't be seen in normal gameplay. In order to determine whether an item should be collected, the game checks to see if anything white is touching it - in this room, the rope is white, and technically fills the whole room, so the item is collected as soon as you enter the room. We use the rope to save us from fall damage and head to the West Wing.

! West Wing and Rear (items 15-28)

The West Wing is a fairly self-contained area; it can only be completed clockwise, so we do just that collecting the one item in Above the West Bedroom and the four items in West Wing Roof in the process. We head down Back Stairway and then jump through it to get to Cold Store.

Cold Store is the first "interesting" room of the game when it comes to the TAS; there are a lot of different ways to approach it due to the items that can only be collected by jumping between the rope and the platforms, all of which have enemies on with their own cycles. The strategy used to involve entering from the top (saving time in Back Stairway) and collecting all items in three rope cycles by jumping over the pink ice cream a couple of times, but then it was discovered that it could be reduced down to two by entering on the lower platform, using the first rope swing to collect the third item from the top on the way to the rope and the second item from the top on the way back; we then drop down to the floor collecting the lowest item, and then quickly make our way to the rope, climb up it, and jump when we're just high enough to make the upper platform, collecting the top item on the way out.

We leave via Back Door, the emptiest room in the game, and temporarily ignore items in The Tool Shed and The Beach as it's faster to collect them on the way back, instead opting to head straight to The Yacht/The Bow, another duo of rooms that form their own unit, and the leftmost point of Willy's mansion. The floor of the yacht in The Bow is another disguised conveyor, but fortunately we weren't planning on stopping anyway.

We try to collect the item in The Yacht, but are delayed a little. Remember how the Swimming Pool item was auto-collected because the rope was white? The same principle applies here but in reverse - due to the Spectrum only being able to display two colours in the same cell, when Willy and a guardian share a cell, Willy will have the guardian's colour in that cell, meaning he's no longer white and not able to collect the item until the guardian moves away. After that we collect the item in The Bow as normal.

Coming back to The Beach, we execute our first wrongwarp - by jumping on the rope at the right time, we can get higher than we're supposed to be able to, which allows us to jump and exit the room from the top of the screen. The room that's above The Beach is... The Beach, so we reappear at the bottom of the screen but with the rope cycle reset. This allows us to jump over to the item (or items - the sandwich is actually two items, presumably each slice of bread counts separately?) and jump onto the rope sooner than we otherwise could have done.

We then enter the Tool Shed, look at all of the platforming required to collect the item legitimately and get back out, and decide it's better to just let gravity do the work, falling to our death on the corrupted conveyor tiles to skip it all. A quick clip through the stairs to the lower part of Back Door saves some more walking in Back Stairway and takes us into the basement.

! Basement (items 29-37)

The basement section of the game is one of the hardest, and represents a gruelling one-way gauntlet. We start with six items in The Wine Cellar; after dropping down a level there's no way to get back up without taking a death, so we must collect items on both sides before dropping. Enemy cycles determine the most efficient route here, and we clip through the stairs and the once again corrupted conveyor to access The Forgotten Abbey.

Another room driven by enemy cycles, we time our jump onto the conveyor so we can follow behind the upper green monk as closely as possible. The intention is that you jump onto the wall that sticks out to collect the item, and then drop down back onto the conveyor and then the ground; by timing the jump exactly right you can clip into the wall  (by jumping into the corner perfectly, the frame prior to collision Willy is both above and to the right of the wall, so neither the horizontal nor vertical checks detect the solid block), allowing us to collect the item and fall straight downwards. Normally this distance would be too far to fall, but when we finish our jump arc and the game realises we're inside the block it pushes us down by a cell, keeping us safe.

We then make our way over what are affectionately known as the Teletubbies, into The Security Guard, over a hole that leads us to Entrance to Hades and a deathloop that ends the game, and into Under the Drive/Tree Root. The main feature of these rooms is the conveyor they share; we can hold our position on it when we first land on it which is wholly unnecessary but looks a little surprising, and we have to wait for the razor cycle to let us through anyway. After entering Under the Drive we have a required frame-perfect jump with little warning (and there's no way of avoiding it!). 

! MegaTree and Front (items 38-60)

We jump into At the Foot of the MegaTree to collect the first item immediately, then place another jump to collect the next two without touching the deadly... ropes? We go Under the MegaTree and over The Bridge (which seems to be missing its titular feature) into The Off Licence, the rightmost room in the game. Because of its dead-end nature it's very suitable for a deathwarp, and some experimentation lead us to the route shown in the run, which allows us to catch the green alarm while it's still heading right, after collecting all twelve items in the room.

Back to Under the MegaTree, we take another item and another deathwarp, before visiting Cuckoo's Nest. The combination of the arrow and the blue egg asks us to wait for a while before we can grab the cuckoo, so we sit and watch the saw going backwards for a little while. Up to Tree Top, collecting the three items clockwise is faster than anti-clockwise even though it looks as though that shouldn't be the case, due to the cycle on the red flying pig.

Out on a limb allows us to abuse death for the final time by collecting both items with a single jump, and then we drop down into On a Branch Over the Drive. Normally a fall this distance would be deadly, but unless you've already fallen too far to survive the fall counter is reset between rooms; the distances before and after the screen transition are both exactly the maximum survivable distance, so this is the longest fall you can survive in the game. We collect the item in On a Branch Over the Drive, and then climb down the tree and go home.

! East Wall and Roof (items 61-75)

After a short trek to Ballroom East, we go to the top level and then head back to the right. We collect an invisible item in The Hall, and then a visible one in The Front Door, before retracing our steps to climb the East Wall. The guardian in Halfway up the East Wall is quite restrictive in when we can pass it, and the slope there is another sneaky conveyor; failure to jump off it immediately results in being sent off the edge of the wall and into an infinite death loop. We collect the item in Priests' Hole and go through Emergency Generator, with another disguised conveyor; through Dr Jones will never believe this, collecting the item there; through The Attic, now with an arrow that doesn't corrupt the game; and to the roof.

On the Roof is our second wrongwarp, and works similarly to The Beach; it's not possible to jump up the rope quickly this time, so we simply climb to the top and wait for the rope to swing high enough to let us reach the top of the room, resetting both the rope and ballerabbit cycles, allowing us to collect the item and jump on the rope earlier than we otherwise could have done.

We then enter a set of rooms inspired by Hunchback - three rooms that take the form of battlements with a bell item to be collected on the right, plus Rescue Esmerelda. The most famous of these is We must perform a Quirkafleeg, a room with a large gap and a rope swing to get over it; this rope also doubles as the access point to Watch Tower, where enemy cycles once again dictate we collect the four items from left to right. We head back down and ignore the Hunchback finale in favour of collecting the end of the flagpole On top of the house. We walk back down the flagpole and through the wall (because the wall is below Willy's actual position) and finally rescue Esmerelda by collecting the two items that make up her prison door.

! Going to bed (items 76-83)

From here, we're expected to drop down into Emergency Generator and traverse the attic again, but instead we jump and take the top exit, which isn't intended and instead wrongwarps us to Ballroom East, all the way at the bottom of the East Wall again.

We jump on another disguised conveyor in Ballroom West, timing our approach to jump over both the ballerabbit and the head bug while collecting all seven items on the way. Finally, we go back to the Top Landing to collect the light as our last item, as it's right next to the Master Bedroom, our final destination. We jump before the bed to end input early; as soon as we touch the bed the endgame cutscene kicks in, and Willy goes on a short trip spoiled by the cover art for the game.

Here the game gets the last laugh on oddities; after idling for a while the game enters pause mode, and BizHawk decides this is a good time to load the tape again.

!! Other comments

After doing Manic Miner it only made sense to do Jet Set Willy as well. The games are fundamentally the same from an engine perspective, so I didn't have to learn too much, but the exploration-based nature of the game made it much more complicated in terms of routing. Fortunately a lot of the work had been done by RuffledBricks, crem, and myself among others in the Speedtrum Specrunning community while speedrunning it.

As a game, this is much easier to get into than Manic Miner, mainly due to the exploration aspect; but once that wears off I still feel Manic Miner is the better game, with much tighter design in every room.

Special thanks go to Matthew Smith for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
