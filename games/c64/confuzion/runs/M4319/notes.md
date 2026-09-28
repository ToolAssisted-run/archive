> **Imported**
> This run was originally published at https://tasvideos.org/4319M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! Confuzion
This is a puzzle game in which players must explode all of the bombs in each level using a spark. The spark flows along a fuse, which is made up of a series of tiles. These tiles can be moved in the manner of a sliding puzzle. In other words, there is only one unoccupied space and adjacent tiles can be moved into that space, freeing a new space in the process. The aim is then to move the tiles so that the fuse forms a path from the spark to each bomb. There is a time limit, however, and extra time is knocked off if the spark reaches a dead end. Some levels also contain water droplets that extinguish the spark if they touch it.

!!TAS Objectives/Notes
*Beat the Game as quickly as possible
*There are 64 unique levels in the game. After that the level number changes to 65 and it repeats Levels 33 through 64...only faster. After the completion of 96 levels, it returns back to 65, where the same level of difficulty exists.
*BOTing was performed on a cut scene that occurred between Level 63 and 64.

!!Tools used 
*Emulator: Bizhawk 2.4 (Because I needed to do some lua script BOTing, which fails on version afterwards).
*Ram Watch: was used to determine when the level changes.
*Lua Scripting: Used to create a BOT that ran RNG combinations for a cut scene that varies in time for the random explosions.

!!Controls
In this game, you only have 4 directions to move. A direction will move a block into an empty spot. Just like a slide puzzle. The only control that can make a speed difference is the fire button...which speeds up the spark, when pressed. When level 65 is reached, this button no longer has any control...where the game then runs at full speed.

!!Why PAL?
I noticed, when performing the load of the TAP image, the length of load time was well into the 10K frames. When the game finally loaded, it appeared that NTSC was performing input adjustments to add one frame for every 5 frames. The game didn't seem to run faster, but the length of the movie was much larger than I wanted to deal with. So...I stuck with PAL.

!!BOTing
One past submission (I'm not saying which), was partially BOTed...but not in the normal sense. This will be my first submission where BOTing was done that was accounted for actual cuts. In this game, RNG is not part of game-play. I could have wrote an algorithm to BOT the main parts, but it could have been months of writing. So, I manually TASed the game-play and BOTed the only part that has RNG...the Explosion Cut scene after Level 63. Why was this necessary? The game seems to play a certain amount of explosions; however, each explosion had a specific length of time for its detonation...which was derived by use of the RND function in ML. This RND provides a number, based off of CPU "Ticks". This was enough to warrant a pseudo brute force between Level 63 and 64 to speed this section up. In fact, the result was around 3 seconds cut. So, if a frame was found before this area...the BOT would have to be ran again to find the shortest time.

!!Be on the lookout. This is just a prelude to a huge project that I'm working on where 99% of a game is being BOTed against predefined inputs. The results so far are showing a MASSIVE reduction against human effort. :) My prediction is that it will be finished by the beginning of 2022!!
