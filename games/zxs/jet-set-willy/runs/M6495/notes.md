> **Imported**
> This run was originally published at https://tasvideos.org/6495M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Jet Set Willy is the sequel to Manic Miner and the second game in the Miner Willy series. It's also the first "modern" game - it's open world, it has DRM, and the original release had many game-breaking bugs rendering the game impossible to complete. Willy wakes up in a bathtub with the tap still running after a party he's too hungover to remember, and has to tidy up the entire house in order for his housekeeper Maria to let him go to bed. This time, he has the ability to teleport at will.

!! Game objectives

* Emulator used: BizHawk 2.10
* Model used: +2A
* Aims to get to bed as quickly as possible.
* Uses an in-game code.

!! Comments

This is a tool-assisted speedrun of Jet Set Willy for the ZX Spectrum. It completes the WRITETYPER category, collecting all items and touching the bed and then the toilet to end the game as quickly as possible. Using the in-game room select cheat is allowed.

TAS timing (power on until last input): 12560 frames, 4:11.100

RTA timing (press ENTER to start the game until entering the final gate): 3697 frames, 1:13.910

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Jet Set Willy does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and Jet Set Willy has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! Version

There are two versions of Jet Set Willy; the original release had four bugs that rendered the game impossible to complete. Even with the in-game room select cheat, it's still impossible to complete. Software Projects issued a "patch" in the form of four POKEs that did the bare minimum required to make the game consistently completable. The patch changes:
* address 42183 from 28 to 11, which moves an unreachable and invisible item from First Landing to The Hall... where it's still invisible, but is almost impossible to avoid en route to the item in The Front Door.
* address 56876 from 8 to 4, which replaces a wall cell with a floor cell in The Banyan Tree, giving access to the items in Conservatory Roof.
* address 60231 from 12 to 0, which removes a nasty cell in Conservatory Roof, allowing the item next to it to be collected.
* address 59901 from 213 to 82, which fixes a misplaced arrow in The Attic, preventing it from flying off the screen and through the game code, corrupting everything and making many rooms kill you instantly on entering them. Amazingly enough, this bug doesn't prevent the game from being completed, as you can save the attic run until your last few items and there is a safe path back to Master Bedroom - but it does prevent it from being completed twice, as restarting the game doesn't fix the corrupted rooms.

This patch was incorporated into the loader for the later release, usually dubbed "PCG Bugfix" due to the POKEs first appearing in the Personal Computer Games magazine. The run uses this version as it's faster than typing in the fixes manually.

! General information

As mentioned previously, Jet Set Willy does not attempt to control its framerate. When there is more to process, the game runs slower. As a result, the first action of the run proper is to turn off the in-game music, as this provides a considerable speed boost to the game. (In RTA runs, runners often turn off the music prior to starting their run, but this is slower under TAS timing.)

The game also runs slower when there are more lives available. However, the short length of this run means losing lives takes longer than the time it would save, because this change in speed is not as dramatic as that from turning off the music: https://www.youtube.com/watch?v=gkcMWIaPLAg

In addition, the run attempts to minimise jumping, as the game slows down a little while in the air. In best conditions, the game runs at approximately one in-game frame every 0.07 seconds. For the rest of this section, "frame" refers to in-game frame.

Each frame, inputs are read twice: once for movement (checking left, right, and jump keys) and once for other actions (pausing, turning music on/off, quitting, and in this run, cheats). While in the air, the movement checks are skipped as Willy cannot be controlled while airborne.

Willy moves horizontally at two pixels per frame, whether on the ground or in the air. This means he travels across a cell in four frames. If this movement would cause him to enter a cell which contains a wall, it will be skipped and he will not move horizontally. Willy can turn around at any time while on the ground, but will not move that frame (and a jump performed that frame will result in a stationary jump).

Willy's jump carries him in a fixed arc, unless interrupted by a wall or floor. A jump lasts 18 frames, reaching a peak of 20 pixels above his starting position, allowing him to collect any item up to five cells above the ground he's standing on. This jump can be performed while stationary or while walking, the latter landing him 36 pixels away on flat ground. If he hits a ceiling during the jump, the jump will be cancelled and all movement, both vertical and horizontal, will stop, leaving him to start falling the next frame at 4 pixels/frame. If his horizontal movement is impeded during the jump, the jump will continue as normal without the horizontal movement until either the wall is no longer in the way or the jump ends. If Willy lands on solid ground before the jump is fully completed, the jump will be cancelled and he can continue walking without stopping. If he lands on completing the jump, there is a single frame in which he cannot move. If he is still in the air on completing the jump, he starts falling at 4 pixels/frame.

Internally, staircases are cells which teleport Willy up or down a cell when you walk into/off them in the correct direction. His visual position is then lowered depending on his horizontal position to create the appearance of a smooth ascent/descent. Collision detection with guardians is done using his visual position, but everything else uses his internal position, most notably jumps (which can cause him to instantly shoot upwards six pixels before even starting the jump). If jumping onto a staircase means he lands on a cell having already moved partway into the next cell, he won't be warped upwards but instead will be able to walk through the staircase (this is an intended mechanic). It's also possible to jump through a staircase without landing on any of the cells that make up the staircase, in which case Willy will just continue his jump as normal; the run usually does this as it is faster than landing on it and falling.

Ropes swing in rooms in a fixed pattern; if Willy touches a rope he will grab onto it. Moving in the direction the rope is currently swinging climbs down the rope, and moving in the opposite direction climbs up it. Some ropes allow him to climb to the top of the screen and enter the screen above, and others... shouldn't, but a well-timed jump can make that happen anyway, which usually results in re-entering the screen at the bottom of the room and resetting the room cycle as a result.

When Willy is standing on a conveyor, the game will internally press the movement key corresponding to the conveyor direction. In most cases this will force him in the direction of the conveyor. However, if both left and right inputs are pressed together, he will continue moving in whatever direction he is currently moving. This means if he walks onto a conveyor, or jumps onto it from below, he can walk against the direction the conveyor is moving. However, if he falls onto it from above, he can only stall movement before being forced in the direction of the conveyor. Many conveyors are disguised as normal platforms, and even some staircases are conveyors.

Willy can safely walk off a floor and land up to four cells (32 pixels) below; when jumping he can land up to two cells (16 pixels) below the starting point of the jump. Falling any further will cause him to die on landing. He will also die on entering a cell which contains a nasty (static enemy), or if his sprite touches that of a guardian (moving enemy) or arrow.

All rooms start in a fixed state, and none of the enemies are affected by Willy's actions. As such, there is no RNG and no enemy manipulation in the run. On death, the entire room resets back to its state on entering the room, including Willy himself. The exception to this rule is items, which remain collected even after death; this allows for death abuse by collecting items earlier than they should be able to by dropping onto them from far above, or by dying after collecting the item to warp back to the room entrance; however, this is slower for this particular run.

There is a time limit in the game - it will instantly exit to the title screen when the time hits 1am, regardless of the state of the game at the time. As the in-game clock runs about three times real-time speed, this gives about six hours real-time to beat the game.

! Goal choice

Normally, using an in-game room select cheat would trivialise the run, as it becomes as simple as repeating "select a room which has an item, and then go to the item". However, this particular cheat has two properties which make things much more interesting and entertaining:
* room changes are instant. The room Willy jumps to depends on which number keys are held down, and every room is accessible at any time without any menuing.
* Willy's on-screen position, velocity, and state does not change. If Willy is in the bottom right corner jumping to the left when a new room is selected, then he will still be in the bottom right corner jumping to the left in the new room. Fall distance is also preserved between rooms when using the cheat.

As a result, far from trivialising the run, it introduces a whole new set of challenges in both routing and execution.

In order to enable the cheat, "WRITETYPER" must be typed while standing on the floor in First Landing. When running WRITETYPER RTA, we start the run with the code already active, as it persists between attempts, but in the TAS we must do this as part of the run. In spite of that, we still easily halve the RTA record.

!! Other comments

This is a wild run, and the existence of this TAS tells us nothing of how to run it RTA for multiple reasons, not least of all that we can't press the buttons fast enough to copy the route. RuffledBricks and myself both gave it a good few attempts back in the day, but with the help of scripting and without the burden of having to physically enter the codes in real time this route is entirely different to anything we did and probably can't be replicated RTA. But that just makes it more fun.

Special thanks go to Matthew Smith for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
