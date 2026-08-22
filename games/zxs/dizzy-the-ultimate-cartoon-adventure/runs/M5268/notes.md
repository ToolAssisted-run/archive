> **Imported**
> This run was originally published at https://tasvideos.org/5268M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Dizzy: The Ultimate Cartoon Adventure is the first game in the Dizzy series, which would go on to spawn seven numbered sequels and even more spinoffs. Dizzy was forgaging in the forest when he stumbled across an ancient recipe for a potion which would destroy the evil wizard Zaks, freeing the land of Katmandu from his tyranny. How hard could it be?

!! Game objectives

* Emulator used: BizHawk 2.9
* Model used: +2A
* Aims to beat the game as quickly as possible.
* Uses death to save time.
* Heavy glitch abuse.
* Manipulates RNG.

!! Comments

This is a tool-assisted speedrun of Dizzy: The Ultimate Cartoon Adventure for the ZX Spectrum. It completes the any% category, defeating Zaks quickly as possible. Using the in-game cheat is prohibited.

TAS timing (power on until last input): 43795 frames, 14:35.550

RTA timing (press SPACE to start the game until the final jingle plays after defeating Zaks): 31242 frames, 10:24.590

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Dizzy does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and Dizzy has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

As Dizzy does not attempt to control its framerate, when there is more to process, the game runs slower. Rooms with more enemies, items, moving platforms etc. run slower than rooms with less of these. In best conditions, the game runs at approximately one in-game frame every 0.05 seconds. For the rest of this section, "frame" refers to in-game frame.

Dizzy move horizontally at four pixels per frame, whether on the ground or in the air. While standing or walking on ground, he can stop and turn around instantly, but he cannot be controlled in the air. A jump can only be performed while standing or walking on ground; this pushes Dizzy upwards at a fixed velocity and sends him into a roll. He cannot be controlled while rolling and will continue rolling until he is both on the ground and on his feet.

Dizzy can pick up and drop items, and the game revolves around his using this ability to solve puzzles. Items can be picked up in any state, whether standing, falling, jumping, or rolling, as long as Dizzy is touching the item, and similarly they can be dropped in any state too. If an item is dropped in the air it will fall under gravity, and can even fall out of the room.

If an item is dropped onto an object it can be used with (many objects have a generous definition of "on") then the item will disappear and some interaction will occur (e.g. opening a bridge). There are also items that are used by simply holding them and jumping into an appropriate enemy; for example, holding a plastic raincoat will allow Dizzy to destroy raindrops by jumping into them. Most of these items are optional and serve to make the game easier and add to the player's score.

All rooms start in a fixed state, and the entire room resets to its initial state when re-entering them, or on death. The exception to this rule is items, which maintain their positions between room visits. Spiders, birds, apples, bats, ghosts, and stalactites have a random element to their movement, and all call the same global RNG function. In order to manipulate the RNG, we occasionally spend extra time in rooms with enemies to progress the RNG cycle favourably; the current seed is stored in three bytes from address 42841 to 42843.

! Intended route

The only requirement for beating the game is using the full potion bottle on Zaks (and waiting a while for the game's end jingle to play). Of course, there are a few things you have to do before you can get access to either the full potion bottle or Zaks:

[https://i.postimg.cc/524KMNwf/Dizzy1-Glitchless.png]

That's quite a lot of steps. If only there were some way of skipping some...

! Death jump

On death, the entire room is reset to its initial state, including your position on entering. However, your state is reset to the standing position, even when you entered the room in the air. Normally this will result in falling straight down, but by holding left or right you can fall in those directions instead, and by holding jump you can perform a jump from mid-air in any of the three directions. This can be used in lots of interesting ways.

! Purse skip

By jumping into the graveyard screen, we can die to a raindrop and then jump again on respawning to get enough height to reach the hut and take the clouds silver line. This skips collecting a purse of gold and eliminates a rather long trek from our overall journey.

! Up zip

Dizzy has two hitboxes; the internal hitbox is smaller to allow small slopes and steps to be climbed without jumping; he can walk "into" the terrain by a small amount and then he will be pushed upwards when the external hitbox finds him colliding with it. Interestingly, the external hitbox also includes items in the collision check, which means we can use items as steps - more on that later.

If we get ourselves into a position where we are standing inside terrain, we will be continually pushed upwards until we escape. This is primarily done by standing on the edge of a rising lift such that it pushes us upwards into a wall, at which point we start rapidly climbing the wall. It also allows us to skip navigating around the minecart when going to collect a bottle of dry ice.

! Bolt cutters skip

The intended use of a bottle of dry ice is on the waterfall blocking the entrance to the crazy labyrinth; however, it can actually be used on any flowing water in the game, including the two areas we normally need to cut a raft loose to cross. Even among contemporary players, it was well known that you could complete the game by using it on the water in the ice caves to take a protective amulet; this skips collecting a jewelled dagger, a rusty old pick, and a gleaming emerald.

However, we use this to get across the water in the mine and take a leprechauns wig. This skips collecting the rusty bolt cutters (as well as the gardeners spade) and eliminates another rather long trek from our overall journey.

Isn't this slower? And don't we need the bottle of dry ice to eventually get a protective amulet? About that...

! Screen warp

The game makes a number of checks to make sure you can't walk through walls:
* Store Dizzy's current X position.
* Add/subtract 4 to his X position (depending on if you're moving right or left).
* Does this make him leave the bounds of the room? If yes, set his X position to the opposite edge and load the next room in that direction.
* Is his internal hitbox inside solid terrain? If yes, load the stored X position.

There is a major flaw in this: if we can move between rooms in such a way that after the transition we would be inside terrain, the game would revert our position to where it was before - on the opposite side of the room, allowing us to traverse the entire room in a single frame. Generally the game is designed such that whenever there is solid terrain at the edge of a room there is matching solid terrain in the adjacent room so this is rarely possible.

! Out of bounds and fast cauldron return

However, one room in the castle has a floor without a matching ceiling in the room below. We can get ourselves inside this floor with a precise death jump in the castle, after which we move right. The game updates our position, sees we've left the room to the right, sets our position to the left edge of the screen, and loads the screen to the right. It then notices that we're (still) inside solid terrain and loads our original position, on the right edge of the screen.

We up zip for a bit and then move right again to a completely empty room - the castle is on the far right of the map, and rooms outside of the map are (usually) empty. We keep falling right until we wrap around and land in a screen on the far left of the map - we up zipped for a short period to land on a portion of the screen where we're not fully embedded in the terrain, and therefore don't screen warp back to being inbounds. We immediately move left again, back out of bounds and falling left until we wrap around, this time landing in the fragile bridge room. This saves a lot of time over getting there the normal way, as the game runs much faster in the empty rooms.

! Amulet skip

Another application of the screen warp is to get within range of being able to use the full potion bottle on Zaks without needing to get rid of the lightning bolts; we perform the same steps as before, but instead of the up zip and out of bounds we use the full potion bottle; however, Zaks' hitbox changes during his defeat and this results in a few deaths before we can escape via the out of bounds again.

This skips collecting a protective amulet entirely, and therefore also a jewelled dagger, a sharp diamond, a rusty old pick, a broken heart, and a gleaming emerald that are normally needed to collect a protective amulet. Given that most of the steps require traversing from one side of the map to the other, this massively reduces the amount of work we can do. And of course, this means that the dry ice is no longer necessary, leaving us free to use it for the bolt cutters skip.

! Actual route

With the above glitches in mind, a large portion of the "necessary" items can be skipped:

[https://i.postimg.cc/VLBZTb07/Dizzy1-any.png]

We start by greasing the minecart and taking the graveyard key. We drop it in the cauldron room for a brief period to shift a burning torch - by dropping it slightly higher up the rock, we can use it as a platform to traverse the room more quickly in both directions. While we're here, we pick up the empty potion bottle and drop it on the cauldron where it continually bounces (speeding up the bridge room, and also it's funny).

Taking the graveyard key again, we use it on the door in the graveyard and then perform the purse skip to take the clouds silver line back to the cauldron. We juggle the ghost hunters laser and a plastic raincoat to get the latter in position for later, and then take a can of 3 in 1 oil back to the mine entrance (doing an up zip on the chimney along the way) where we leave it on the lift for our next visit, with just barely enough time to take a plastic raincoat again.

In order for a can of 3 in 1 oil to stay on the lift when we re-enter the screen, we must allow the lift to reach its starting position before leaving the room. This is the perfect opportunity to use the up zip out of the mine and destroy the raindrops with a plastic raincoat; we then drop it on the ice sheet to use it as a step to get to a bottle of dry ice more quickly, and again on the way back to reduce our rolling.

We swap it for a can of 3 in 1 oil and immediately head straight to the drawbridge to use it, before taking the vampire dux feather back to the cauldron using the fast cauldron return. On the way, we collect two eggs (extra lives) that will be needed for the remaining skips. We then repeat the journey, using the can of insecticide to clear a few spiders out of the way, and collecting the flask of troll brew this time around instead. As this is the last time we visit the right side of the map before we have the full potion bottle, we also take a burning torch and light the cauldron with it.

We take a bottle of dry ice and use it for the bolt cutters skip, taking a leprechauns wig and finishing our potion. Taking the full potion bottle, we make our final journey to the castle, performing the amulet skip to defeat Zaks and escape from the room. Defeating Zaks triggers a timer that waits a certain number of in-game frames before playing the ending jingle; in a real-time speedrun we would navigate to a fast-moving room to make this happen as quickly as possible, as the player still has control until the jingle plays. However, in this TAS we end inputs as soon as Dizzy is safe, and we get a nice long look at the amulet we would've used if we weren't too busy breaking the space-time continuum with the screen warp.

!! Other comments

Dizzy is one of my favourite 80s/90s videogame series, and while the first game doesn't have the same polish or dialogue-driven focus of the later games it's still a great entry. It's my first TAS with significant RNG, and while there are almost definitely improvements that can be made I tried my best to manipulate enemies favourably.

Special thanks go to The Oliver Twins for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.

Last, but most definitely not least, extra special thanks to Faddy for finding most of these skips and routing (and re-routing) the game to include them in the run, as well as pointing out areas of improvement in each iteration of the run. Faddy's contributions alone have halved the length of this run, and it would not have been nearly as optimal otherwise.

Suggested screenshots: 24646, 29321, 30743
