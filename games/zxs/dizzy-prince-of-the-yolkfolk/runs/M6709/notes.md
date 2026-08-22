> **Imported**
> This run was originally published at https://tasvideos.org/6709M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Dizzy: Prince of the Yolkfolk is the sixth core game in the Dizzy series. Dizzy and Daisy want to bake a cherry pie to cheer up Grand Dizzy, but their pet Fluffle, Pogie, ate all the cherries and ran off. Looking for him, Daisy catches herself on a mystic spinning wheel and falls into a deep sleep, while Dizzy gets caught and locked up by Rockwart the troll. Dizzy must free himself, wake up Daisy, and gather more cherries to bake that pie.

!! Game objectives

* Emulator used: BizHawk 2.10
* Model used: +2A
* Aims to beat the game as quickly as possible.
* Heavy glitch abuse.

!! Comments

This is a tool-assisted speedrun of Dizzy: Prince of the Yolkfolk for the ZX Spectrum. It completes the any% category, collecting 20 cherries and waking up Daisy as quickly as possible.

TAS timing (power on until last input): 38122 frames, 12:42.135

RTA timing (press SPACE to start the game until "UP UP AND AWAY!" appears): 23119 frames, 7:42.195

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Dizzy: Prince of the Yolkfolk synchronises its game engine to the screen's refresh rate, and therefore generally runs marginally (~0.1%) faster on 48K than on 128K versions. However, 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds; this means that menuing and room transitions are faster on these models. The +3 is a disk-based system, and Dizzy: Prince of the Yolkfolk has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

The game runs at a relatively constant 12.5fps (one in-game frame every four screen refreshes). Menuing and screen transitions take longer than this and are simply processed as quickly as possible ignoring framerate. For the rest of this section, "frame" refers to in-game frame.

Dizzy moves horizontally at four pixels per frame, whether on the ground or in the air. While standing or walking on ground, he can stop and turn around instantly, but he cannot be controlled in the air. A jump can only be performed while standing or walking on ground; this pushes Dizzy upwards at a fixed velocity and sends him into a roll. He cannot be controlled while rolling and will continue rolling until he is both on the ground and on his feet.

Dizzy can pick up and drop items, and the game revolves around his using this ability to solve puzzles. By pressing the menu button, the inventory will open. If an item is within Dizzy's reach, he will also pick it up. Dizzy can initially hold three items at a time, and picking up a fourth item will cause Dizzy to automatically drop the first. Selecting an item in the inventory will make Dizzy use or drop it. The menu can only be opened while standing still, and items do not act under physics; once dropped, they are stationary and do not move until picked up again.

If an item is dropped within its designated use area, the item will (usually) disappear and some interaction will occur (e.g. opening a bridge). In addition, some items have no purpose and exist as red herrings.

All rooms start in a fixed state, but maintain their state between visits. Enemies move in fixed patterns and cannot be manipulated. Dizzy starts with three lives and a full health bar; contact with enemies results in a draining of health, with a life lost when health is fully drained. Falling into water is an instant loss of life. Health can be restored by collecting cherries.

! Intended route

In order to beat the game, you must wake up Daisy and talk to her while holding 20 cherries. Of course, you can't do that immediately from the start of the game:

[https://i.postimg.cc/3NcrVKdW/Dizzy6-Glitchless.png]

! Item embedding

If we drop an item such that any part of it overlaps a solid tile, the item collision takes priority and "erases" the collision of the solid tile. This isn't particularly useful by itself, but in combination with a few other glitches this is insanely powerful.

! Up zip

Dizzy has two hitboxes; the internal hitbox is smaller to allow small slopes and steps to be climbed without jumping; he can walk "into" the terrain by a small amount and then he will be pushed upwards when the external hitbox finds him colliding with it. If we get ourselves into a position where we are standing inside terrain, we will be continually pushed upwards until we escape.

! Dialogue skip

In most cases, the trigger to talk to characters is smaller than the trigger to use items on characters. As such, you can use items on characters without triggering their dialogue first. Even with characters where this doesn't apply, by dropping an item on the edge of their dialogue trigger you can walk into the use trigger and have it take priority due to picking up the item first. This can be done to skip dialogue from St. Peter, the strange mechanism, and the ferryman.

! Vertical item warping

If we drop an item during a screen transition, the game places the item in the room we just left, but in our new screen position, i.e. on the opposite side of the screen to where we were. Depending on a number of factors related to collision and Dizzy's state, Dizzy himself can also warp from across the screen.

This is much easier said than done, of course. The menu cannot be opened while moving, so we need to create special conditions to allow us to move between screens without moving.

Some staircases can be climbed by walking (using the up zip for its intended purpose); should one of these staircases go up between two screens, it's possible to walk into a step and then stop walking and open the menu before it has finished pushing us up to the next screen. This consistently warps the item to the bottom of the screen, but will not warp Dizzy.

However, a single screen has a conveniently placed rock at the very top of the screen, and by jumping on it at the right spot Dizzy is put into a state where performing the item warp also warps Dizzy.

! Out of bounds

The map outside of boundaries generally consists of empty screens. Some screens contain garbage data, the title screen itself is a screen in the game world, and one screen is used to store items that have either been removed from the game world or have not yet appeared there.

The map also wraps, but the top and bottom do not line up perfectly; after falling through the bottom of the map, Dizzy will wrap to the top, but three screens to the left. This allows us to skip many events by going far out of bounds around them.

! Rockwart skip

Rockwart the troll is intended to block entry to the left side of the map. However, by vertically item warping we can fall and arrive a few screens to his left, skipping the need to bring a caged fluffle to him. Unfortunately, we still need to capture Pogie as he is hiding a cherry behind him, but this can be done when inventory management is much more convenient.

! Tweezers skip

Getting a sharp thorn normally involves getting some tweezers and pulling the thorn from the lion. This would require an extra trek from the castle to the lion and back again, so instead we pick it up from the out of bounds item store while we're there for the...

! Early prince

Daisy can't be woken up until you have been knighted (princed?) by the king, which is intended to be one of the last actions taken in the game. However, because the king only appears after his prerequisites have been met, he's stored in the item store, and he only needs to be touched in order for Dizzy to become a prince. As a result this can be done almost immediately, skipping the need to get the bugle, give it to the bugler in exchange for a joke book, give the joke book to the princess in exchange for the regal flag, and raising the flag to summon the king.

Unfortunately, most other steps are required to reach cherries, but importantly a number of dependencies are broken, which turns the game from being relatively linear to being much more open and allowing us to perform multiple tasks at the same time.

! Actual route

With the above glitches in mind, most of the "necessary" items can be skipped:

[https://i.postimg.cc/hvjP2J4H/Dizzy6-any.png]

The initial room is a tutorial; we pick up the items in reverse order to their use to save a few frames of menuing.

We take a heavy pickaxe and use it on the rock to get a gold nugget to give the ferryman, even though it's no longer necessary, simply because it's faster than going out of bounds to get past him. We also take a small cage and leave it with the ferryman, and an acme bridge kit for later.

We jump onto the conveniently placed rock and use a heavy pickaxe to perform a vertical item warp, falling out of bounds and heading left directly into the item store. In here we pick up a sharp thorn and become a prince, before continuing our out of bounds journey, wrapping all the way around to the right side of the map.

We drop a sharp thorn ready for Evil Dizzy to stand on it, allowing us to take a greasy spanner. We take a golden harp and use an acme bridge kit to give it to St Peter in exchange for some holy cheese before performing another vertical item warp. This time we use it to reach the left side of the map and collect a rusty old key before using a greasy spanner to open the drawbridge.

Now we have access to the whole map, we do a full sweep of the world collecting cherries. On the way we take an outboard motor and give it to the ferryman in exchange for a scythe, and trap Pogie in a small cage using some holy cheese. Pogie hides a cherry, as do the bushes we cut down with a scythe. Finally, we head to Daisy, unlock her door with a rusty old key, and wake her up to let her know we have all the cherries.

!! Other comments

Dizzy is one of my favourite 80s/90s videogame series. Dizzy: Prince of the Yolkfolk is an enjoyable, by-the-books Dizzy game. It's shorter and more linear than Fantasy World and Magicland, but that makes it more accessible for beginners.

Special thanks to TwoSpacesSG for routing basically the entire run. Further special thanks go to Big Red Software for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.

Suggested screenshot: 19507
