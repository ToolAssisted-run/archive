Manic Panic is a unofficial game in the Manic Miner series, written by one of the original Jet Set Willy II developers in 2020. Miner Willy is trying to remember if he ever turned the robots off, and goes to investigate.

## Game objectives

* Emulator used: BizHawk 2.11.1
* Model used: +2A
* Aims to complete the game as quickly as possible.
* Takes damage to save time.

## Comments

This is a tool-assisted speedrun of Manic Panic for the ZX Spectrum. It completes the Training category, completing Training mode as quickly as possible.

TAS timing (power on until last input): 59949 frames, 19:58.500

RTA timing (press a button to start the game until entering the final gate): 48610 frames, 16:11.811

# Model

The run is performed on the Sinclair ZX Spectrum +2A. Manic Panic does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and Manic Panic has never been officially released on disk, so the run uses the +2A and loads the game from tape.

# General information

As Manic Panic does not attempt to control its framerate, when there is more to process, the game runs slower. In best conditions, the game runs at approximately one in-game frame every 0.04 seconds. For the rest of this section, "frame" refers to in-game frame.

Willy moves horizontally at two pixels per frame, whether on the ground or in the air. This means he travels across a cell in four frames. If this movement would cause him to enter a cell which contains a wall, it will be skipped and he will not move horizontally. Willy can turn around at any time while on the ground, but will not move that frame (and a jump performed that frame will result in a stationary jump).

Willy's jump carries him in a fixed arc, unless interrupted by a wall or floor. A jump lasts 18 frames, reaching a peak of 20 pixels above his starting position, allowing him to collect any item up to five cells above the ground he's standing on. This jump can be performed while stationary or while walking, the latter landing him 36 pixels away on flat ground. If he hits a ceiling during the jump, the jump will be cancelled and all movement, both vertical and horizontal, will stop, leaving him to start falling the next frame at 4 pixels/frame. If his horizontal movement is impeded during the jump, the jump will continue as normal without the horizontal movement until either the wall is no longer in the way or the jump ends. If Willy lands on solid ground before the jump is fully completed, the jump will be cancelled and he can continue walking without stopping. If he lands on completing the jump, there is a single frame in which he cannot move. If he is still in the air on completing the jump, he starts falling at 4 pixels/frame.

Every frame Willy is on a collapsing platform it will collapse. After eight frames (not necessarily consecutive) the platform will completely disappear. As Willy is always on two cells (when standing or walking) and Willy's actual position within the cells is irrelevant, a few levels have some unusual routing to make the most of these platforms.

When Willy is standing on a conveyor, the game will internally press the movement key corresponding to the conveyor direction. In most cases this will force him in the direction of the conveyor. However, if both left and right inputs are pressed together, he will continue moving in whatever direction he is currently moving. This means if he walks onto a conveyor, or jumps onto it from below, he can walk against the direction the conveyor is moving. However, if he falls onto it from above, he can only stall movement before being forced in the direction of the conveyor.

Willy can safely walk off a floor and land up to four cells (32 pixels) below; when jumping he can land up to two cells (16 pixels) below the starting point of the jump. Falling any further will cause him to lose a large amount of air. He will also lose air on entering a cell which contains a nasty (static enemy), if his sprite touches that of a guardian (moving enemy), or if he touches the solar beam in Ultra Violent Cleaner. More importantly for us, the game pauses while draining air so these actions also slow the player down. In many cases it's still much faster to take the hit than wait, but still it's often faster to wait.

All caverns start in a fixed state; none of the enemies are affected by Willy's actions, except by flipping switches in the Kong Beast caverns. As such, there is no RNG and no enemy manipulation in the run. On death, the entire cavern resets back to its initial state, so there is no death abuse either.

There are multiple difficulty modes:
1. Trainer - played here; the easiest difficulty, slow air drain, air loss on fall or touching enemy, two guardians removed in each room.
2. Normal - normal air drain, air loss on fall or touching enemy, one guardian removed in each room.
3. Expert - fast air drain, death on fall or touching enemy, all guardians present.
4. Ace - the hardest difficulty, as Expert with very fast air drain, requires the game to be completed once first to unlock.
5. Lantern - as Normal, but the cavern is darkened and Willy has a light attached to his helmet to illuminate his way.
6. Torch - as Hard, but the cavern is almost completely black and Willy has a light attached to his helmet to illuminate his way.

As the hardest difficulty requires completing the game once first, I opted to use the easiest difficulty instead.

## Other comments

Manic Panic is an interesting take on the Manic Miner formula, especially with the lantern mechanic, and the way the original Manic Miner's levels are vertically extended to fill 23 cells of height (from the original's 16) is done very naturally. But I didn't personally enjoy playing it - it's just a touch too fast for the style of platforming.

Special thanks go to Norman Sword for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
