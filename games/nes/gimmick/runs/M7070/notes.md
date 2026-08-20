> **Imported**
> This run was originally published at https://tasvideos.org/7070M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Improvements
The [=6243M|previous movie] was an intermediate product of this collaboration and had relatively barebones submission notes. Thus, we will compare against its predecessor, [3168M].
! Level 1

We managed to find a large new skip in this level - one which feels like a white whale willed into existence. It was known for a while that of all the locations in all of the game’s levels, the wall at the very end of the first room of the game was perhaps the best possible place to theoretically clip inside a wall, as it was accessible, would lead to the right (the one direction you can really go once inside a wall), and was the only thing separating us from the final room. It was also alleged by someone we got in contact with that this had happened to their friend while playing, though details were fuzzy and there was unfortunately no video evidence of this. Through enough experimentation, we were able to find that:

* A jump of just the right height could get very close to colliding with the side of the block sticking out of the wall without actually reaching it;
* Approaching the block sticking out of the wall only once moving down vertically would prevent its ceiling from pushing the player down;
* An object (in this case, a star) could be used for a slight “nudge” upwards, still without being pushed out by the ceiling.

This was sufficient to be able to stand on top of the block diagonally-down from the block sticking out from the wall. From there, the player is properly inside the wall and starts getting pushed out to the right. Unfortunately, there is no path from here to the boss room without dying, but dying to end up at the final checkpoint of the level still saves substantial time over the previous strategy.

! Level 2

This level is very hard to improve on. We managed to save a mere 2 frames on getting on and off the boat despite a lot of time spent optimizing star throws by emulator script.

! Level 3

By looking at simplified renders of the game’s levels showing tile collision properties, we were able to notice that while the top row of tiles in the room atop the waterfall forms a ceiling, there are three gaps theoretically permitting access to the room above. More specifically, these gaps are tiles comprising tree outlines, likely having no collision as they are reused in other places that do not warrant them being solid. Fortunately, one of them is quite reachable with a buggy corner star bounce, and leads directly to a water tile in the room above, allowing for quickly activating the final checkpoint of the level and dying to respawn at it.

[https://i.imgur.com/l8tYvbV.png]

! Level 4

2 frames were saved on the boss fight by ensuring the boss’ projectiles despawn sooner so that it can be killed earlier with an object slot available for its item drop. This level definitely has more potential for movement improvements all throughout, but we did not fully apply them due to the project losing momentum towards the end.

! Level 5

We were able to overhaul movement all throughout the level, saving 68 frames. This excludes a few frames sacrificed to skipping using an item at the first phase of the boss, which helps save a significant chunk of time in the following level.

! Level 6

By getting the dog at the start of the level into position quicker, taking a new star ride out of the first pipe, and skipping a potion in the room leading up to the three bosses, we were able to spawn the first wizard 123 frames sooner. With the wizard only attempting to produce a bubble every 128 frames, this just barely allowed us to use a bubble spawned 128 frames sooner than the previous movie to destroy the star as part of the manouver used to skip the fight. Smaller improvements were also made to the other two wizard fights, totalling 199 frames saved.

!! Small contribution by eien86
I joined the effort by my own request, asking whether the authors needed some part being botted for optimization or finding new tricks. After some work finding the relevant RAM addresses and getting the game to work with [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus], I was able to gain a couple (2) frames in the first level's skip. After that, I was called to see if I could find a skip in one of the subsequent levels, but I wasn't successful with that. Finally, I tried bot the end of the movie to see if I could get a kill on the final boss on a sooner last input. I was pretty successful with that, cutting the movie short by a handful of frames (don't remember how many). Even if this was a very small contribution, I'm pretty happy with the collaboration and the outcome.

!! Comparison Video
The following video compares this submission to [3168M]
[module:youtube|v=88wuLBRK5hM]

!! Software + Hardware

! Rom Information

* Name: Gimmick!
* ROM: Gimmick! (J).nes
* SHA1: 835FEE060B15700163A1F8AD9716A163BF79C8FD
* MD5: D5690F20E4BE9ED870114A248409E8E1

Note to Judge: one author, who has contributed to this effort, has requested not to be included in the author list.
