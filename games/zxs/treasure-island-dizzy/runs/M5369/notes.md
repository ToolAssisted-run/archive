> **Imported**
> This run was originally published at https://tasvideos.org/5369M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Treasure Island Dizzy is the second game in the Dizzy series. Dizzy booked a round-the-world cruise (for a very low price thanks to it being on a pirate ship) and got bored on board, so he stole the captain's spare wooden legs to make cricket stumps. After knocking them overboard the captain makes him walk the plank, and he finds himself stranded on a desert island and has to find a way home.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: 128K
* Aims to beat the game as quickly as possible.
* Heavy glitch abuse.

!! Comments

This is a tool-assisted speedrun of Treasure Island Dizzy for the ZX Spectrum. It completes the any% category, paying the shopkeeper 30 coins as quickly as possible. Using the in-game cheat is prohibited.

TAS timing (power on until last input): 49955 frames, 16:38.701

RTA timing (press SPACE to start the game until the final scroll appears): 32486 frames, 10:49.460

! Model

The run is performed on the Sinclair ZX Spectrum 128K. Treasure Island Dizzy synchronises its game engine to the screen's refresh rate, and therefore generally runs marginally (~0.1%) faster on 48K than on 128K versions. However, 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds; this means that room transitions are faster on these models.

Working out exactly which model is fastest for this game is non-trivial, and the difference is negligible, so I based my choice of model on an entirely different metric. Treasure Island Dizzy has AY music when playing in 128K mode, but not in 48K mode. Due to a bug, the +2A/+3 cannot load the game in 128K mode, so the original 128K and +2 are the only models that can play the game with music. There is no difference between these for the purposes of a TAS, so this run uses the 128K Spectrum.

! General information

The game runs at a relatively constant 12.5fps (one in-game frame every four screen refreshes). Sometimes lag can reduce this, especially when picking up, dropping, or using items. Additionally, screen transitions take longer than this and are simply processed as quickly as possible ignoring framerate. For the rest of this section, "frame" refers to in-game frame.

Dizzy move horizontally at four pixels per frame, whether on the ground or in the air. While standing or walking on ground, he can stop and turn around instantly, but he cannot be controlled in the air. A jump can only be performed while standing or walking on ground; this pushes Dizzy upwards at a fixed velocity and sends him into a roll. He cannot be controlled while rolling and will continue rolling until he is both on the ground and on his feet.

Dizzy can pick up and drop items, and the game revolves around his using this ability to solve puzzles. Dizzy can hold three items at a time, and any attempt to pick up/drop an item scrolls the inventory; picked up items enter at the bottom of the inventory, and when they scroll off the top they are dropped or used. Unlike the first game in the series, items can only be picked up and dropped while standing still. Items do not act under physics; once dropped, they are stationary and do not move until picked up again.

If an item is dropped within its designated use area, the item will (usually) disappear and some interaction will occur (e.g. opening a bridge). There are also items that are used by simply holding them; for example, holding a rubber snorkle (sic) will allow Dizzy to breathe underwater. In addition, some items have no purpose and exist as red herrings.

All rooms start in a fixed state, but maintain their state between visits. Enemies move in fixed patterns and cannot be manipulated. There are no lives in the game; any contact with an enemy of any kind results in an instant game over.

! Intended route

The only requirement for beating the game is talking to the end shopkeeper while holding 30 coins. Of course, there are a few things you have to do before you can get to the end shopkeeper:

[https://i.postimg.cc/q7DNJ6xX/Dizzy2.png]

! Action delay

The action button (pickup/drop/use item, talk to character) is only active while standing still. However, it doesn't take effect until a couple of frames after pressing it, meaning you can walk or jump after pressing the action button but before anything else happens. We do it a lot in the run, leaving items suspended in the air mostly for fun, but it has a few important uses too.

! Talk skip

By jumping immediately after talking to the shopkeeper, it's possible to jump and roll while the text is still showing. This allows you to get a whole screen away while the shopkeeper is still talking, instead of having to wait for him to finish.

! Item warping

If we drop an item during a screen transition (using the action delay), the game places the item in the room we just left, but in our new screen position, i.e. on the opposite side of the screen to where we were. We use this to save a bit of backtracking at times.

! Item embedding

If we drop an item such that any part of it overlaps a solid tile, the whole item will become solid. We use this to save a couple of jumps at the very start of the game - instead of using an empty solid chest as a platform as intended, we instead get a protected species stuck a little higher up the wall where we can jump up the wall much faster.

! Up zip

Dizzy has two hitboxes; the internal hitbox is smaller to allow small slopes and steps to be climbed without jumping; he can walk "into" the terrain by a small amount and then he will be pushed upwards when the external hitbox finds him colliding with it. If we get ourselves into a position where we are standing inside terrain, we will be continually pushed upwards until we escape.

! Bible skip

All of the above glitches come together to make this happen. When taking the cursed treasure out of the tomb, you must normally exit via the grave. If Dizzy is touching the grave while holding the cursed treasure and not holding an old holy bible, he will be killed.

By embedding items into the wall of the tomb, we can up zip our way out of it without taking the normal exit. Due to the way inventory management works, this requires us to make two journeys, but is still much faster than taking the bible. However, there's still a catch - we're on the left side of the grave and we need to take the cursed treasure to the right, and there's no way of getting there without touching the grave. Luckily, we can warp the cursed treasure to the opposite side of the screen and walk harmlessly through the grave instead.

! Final route

We start by embedding a protected species in the wall and using it as a step, taking an empty solid chest with us for later. We go on a coin collecting spree, move the infa red detonator (sic) to a more convenient location, and pick up a sharp glass sword, a rubber snorkle (sic), and a small video camera along the way.

We leave a small video camera and reshuffle our inventory to have the snorkel on the bottom. We take a salt water spade and leave a sharp glass sword underwater, and head back to the surface to reshuffle our inventory and pick up a small video camera again, swapping it with a sharp glass sword and leaving it in a convenient place for an item warp.

We use a salt water spade to gain access to the right side of the map, a sharp glass sword to gain access to the grave, and reshuffle our inventory once again so we can take the woodcutters axe (sic) and sticks of dinamite (sic) back to the left side of the map.

We use the woodcutters axe to gain access to the tomb, and embed the dynamite and chest so we can upzip out of the grave. Reshuffling our inventory once again, we warp the dynamite to the left side of the screen and re-enter the tomb to take the cursed treasure out. We warp the cursed treasure to the right side of the screen and take the dynamite in the process.

We take the detonator we left earlier and use both the dynamite and the detonator to destroy some rocks, clearing our path to a bag of gold coins. We pick up the cursed treasure on the way to the water, and swap a bag of gold coins for a small video camera while we're down there, warping a bag of gold to avoid walking across this screen again.

We give a small video camera to the shopkeeper, and in return he gives us a dehydrated boat. We take it to the dock and rehydrate it, and take a large golden key to get access to a microwave oven. We take a bag of gold coins and the cursed treasure we left earlier and give all three remaining items to the shopkeeper, get our boat running, and visit the end shopkeeper.

Due to a bug, the game crashes when it tries to play the ending jingle. This is normal behaviour for Treasure Island Dizzy.

!! Other comments

Dizzy is one of my favourite 80s/90s videogame series, and after doing the first game it only made sense to do the second as well. It's a big step towards the standard that would be set from Fantasy World Dizzy onwards, with more emphasis on item use and puzzle solving than platforming. Fortunately a lot of the routing work had already previously been done by Faddy and myself among others in the Speedtrum Specrunning community while speedrunning it.

Special thanks go to The Oliver Twins for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
