> **Imported**
> This run was originally published at https://tasvideos.org/4759M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Emulator used: Bizhawk 2.7
* Primary goal: speed (no time-entertainment trade-offs)
* Takes damage and uses deaths to save time

!! Game mechanics and route discussion
I've tried to document as much as I could of speedrunning-related information about this game: https://kb.speeddemosarchive.com/Addams_Family_(NES) . 

I will mention one additional thing here, since it's TAS-only. The number of frames to load a room (or splash screen) can differ. This can often (but not always?) be manipulated by adding e.g. a small jump before. That's the reason for some of the seemingly random jumps in the movie (the others are probably to manipulate bats, birds or hop along with the music). I found this just as I was about to submit. I went through the movie again and saved a few more frames, but it's possible there are some left that I didn't find since I don't know how to tell what the minimum number of frames to load a given room is. Instead of spending too much time on jumping around in every room, I decided to document it here. In case someone decides to work on an improvement in the future, hopefully they can use this knowledge from the start instead.

!! Comments
There aren't any major new tricks or other discoveries since [4557S]. This movie is essentially just several improvements over the previous one that add up. Below, I will list what I consider to be the more noteworthy changes.

* Skipping Thing and two money bags reduced the time spent in the right Landing by 1142f. The two money bags were compensated by picking up two extra in the blue bone room (cost 594f). Not having Thing is 22 frames slower in the kitchen/freezer/furnace and 171 frames slower on the roof. Overall, a time save of 355f. Note that this comparison is made based on using Thing once in the freezer and twice on the roof, which is different from what the previous TAS did (but the fastest option when having Thing that I've found).
* A new death abuse while collecting a money bag in the gallery (after giving the right music manuscript to Lurch). This made the room 122f faster than jumping to the top and collecting the money bag at the end. However, as a result, a 1-up had to be picked up in the freezer (8-12f, depending on the cycle of $45A) and going after a more out-of-the-way money bag while waiting for Lurch to play the left music manuscript (79f). Overall, a time save of not more than 33f, but visually noticeable.
* Death abusing in the kitchen after the furnace saves 106f compared to walking through the room. It's also generally better from a health management perspective, allowing more damage to be taken elsewhere, saving even more time.
* The swim mechanics were puzzling at first, to say the least. But I feel that I now have a good understanding of them, which made more optimal movement in the pond possible. The new movie is 368f faster.
* Skipping a death abuse in the green bone room. While it's 28f faster to leave the room by dying at the top (while collecting the bone), like the previous TAS did, the next death in the garden outside the crypt will be much slower because of the full lifebar and the invincibility period from the death in the green bone room still being active. Overall 117f saved.
* 64f saved by a more direct route in the tree.

Some comparisons above are with the fastest alternatives I could think of and not directly with the previous TAS and some comparisons are a bit uncertain due to not being able to synch the previous input file (I couldn't find Bizhawk 1.9.1 and none of the other versions I've tried managed to play it back correctly). That being said, these points add up to 1039f out of the total improvement of 1395f. The remaining time save just consists of many small things.
