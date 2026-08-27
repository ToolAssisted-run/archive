> **Imported**
> This run was originally published at https://tasvideos.org/4313M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This run aims to collect every mushroom/flower, star, and 1UP in Super Mario Bros. This beats [5836S] by 83 frames (1.38 seconds).

Note: The ROM name indicated in the fm2 is “SMB.nes”, but this is not the actual ROM name because I rename all my ROMs to an acronym of the game.

!! About this run

One day, I decided to see if the 1-1 in the old all items TAS was optimal, with no expectation to even save a frame over it considering that the old TAS was made by Mars608 and HappyLee. However, I was actually able to save 9 frames. Although it didn’t save a framerule, this motivated me to make a new all items TAS. Most levels had been optimized more, some had new strategies, and exactly 5 of them had improvements that were not eaten up by framerules. Overall, I’d say this project went pretty well. Now, I admit that this is a bit less entertaining than the old TAS. Maybe I’ll do better if I ever get to improve this run.

Special thanks to:%%%
Kriller37, for helping me test 1-3%%%
Periwinkle, for telling me how the bullet bills that come from the right in 5-3 and 6-3 works, and also the address for level load phase ($71F)%%%
MrWint, for finding the 4-4 improvement%%%
HappyLee and Mars608, for making the old all items TAS and the warpless TAS, which I copied some inputs from

!! Level-by-level commentary

;1-1: Grabbing the mushroom from the right is faster than grabbing it from the left because of the goomba. It is possible to hit the corner of the third powerup block with a precise duck-jump, but it doesn’t push you far enough to the left to grab the powerup with running speed.
;1-2: I couldn’t grab the star as fast as the old TAS did, so I copied some inputs from the start to the star grab. It is faster to grab the 1UP from the left, because you can get running speed much earlier and the brick block on the left immediately stops your momentum.
;1-3: Although it is not shown in this run, it is possible to finish this level 1 frame away from the next framerule. At first, the framerule was pretty far away, and after I redid the level for some reason that I forgot, I got within about 5 frames of the next framerule. So I tried to optimize the level some more, and I saved 1 frame at the powerup grab, but I wasn’t able to save any more time. Kriller37 saved another 2 frames at the powerup grab, and then I saved another frame at the full FPG from using a 3-frame jump instead of a 1-frame jump. I tried hard to save the final frame, but I wasn’t able to do it. As shown in this TAS, it is faster to grab the left 2 coins instead of the right 2 coins in the section with the low platform and the 3 coins. That is because you have running speed when jumping up.
;1-4: By getting pushed 4 pixels out the corner of the powerup block, it is possible to grab a powerup 3 blocks above the ground with running speed. The optimal subspeed when hitting the powerup block is 84, after some testing.
;2-1: I copied some input from the old all items TAS near the vine because I can’t get the teleport to work. Grabbing the powerups at these locations forces you to lose some on screen position, so I did a corner clip at the final powerup. I slowed down at the end to wait so that I don’t get 3 fireworks, which wastes a lot of time.
;2-2: Corner clip for entertainment, similar to the old all items and warpless TASes. I don’t know how to manipulate water enemies, so I did not kill every enemy.
;2-3: The entire level is copied from the old all items TAS because there is no time difference before 2-3, and I don’t want to go through the tedious process of manipulating cheep cheeps. The old TAS kills every enemy that appears on screen, too.
;2-4: Like in 1-4, the powerup is grabbed with running speed.
;3-1: The underground section was copied from the old TAS because I can’t do it that fast. I bonked the right side of the powerup blocks when grabbing powerups to push myself right to do the shell glitch.
;3-2: The koopa near the powerup must be killed, or else I must stomp it after collecting the powerup, delaying running speed. It isn’t possible to grab the powerup with running speed because I can’t get the powerup block to push me 4 pixels. However, it is possible to grab the star with running speed, like I did in this run.
;3-3: It doesn’t seem to be any faster to grab the powerup with running speed. The timing for the last paratroopa kill is timed so that it gives a good y subpixel for the final platform. Using the final platform to ground clip doesn’t save time in warpless, but it does in all items because of how the framerules line up.
;3-4: Just grab the powerup.
;4-1: Lakitu throws a spiny when 128 frames had passed since the last throw or when an item disappears. It is not possible to catch the previous 128 frame cycle even if you don’t slow down at all after the 1UP grab. So the goal is to reach the 1UP as soon as possible, then push yourself far enough right while still catching the 128 frame cycle. I discovered that it is possible to corner clip through the first pipe by delaying all input by 1 frame to manipulate cointoss. This would save a framerule, if it was not for fireworks will go off if I incorporate this improvement. I also tested some other strats, but they either didn’t catch the 128 frame cycle or was slower. The inputs for the first section was copied from the old TAS because I can’t catch the 128 frame cycle for some reason when redoing the corner clip strat. It missed it by a few frames.
;4-2: The clip through the tall pipe requires a precise y position when bouncing off of the koopa, because the bounce height is just barely high enough to make the clip.
;4-3: It is not possible to grab the coin under the platform by jumping under the platform, and standing on the platform to drop it down is slower. The final platform doesn’t move low enough for a ground clip to be possible.
;4-4: The part from the start to the wall clip was copied from the warpless TAS, because it included an improved wall clip my MrWint, which saved a framerule over the old all items TAS.
;5-1: Because of how the framerules line up, BBG, which saves time in warpless, doesn’t save time in all items, so I didn’t bother to test it.
;5-2: This is the only level in which I saved 2 framerules. The old TAS had to hit the flagpole normally because FPG makes you hit the flagpole 6 frames later, which resulted in 3 fireworks. However, I saved enough time to be able to perform FPG and still avoid fireworks. At first, I reached the second powerup fast enough to reach the previous powerup rule (the 4 frame intervals for items appearing, similar to the 21 frame rule for level ending), but wasn’t fast enough to press l+r before hitting the powerup block. So I revisited the star grab, and saved a few subpixels there from a slightly different strategy of pressing left a frame later. Now, I was exactly 1 subpixel away from being able to use l+r and then still getting the faster powerup rule. I did some more tests on the first powerup grab and the star grab, and I still couldn’t save another subpixel. I eventually gave up and just used the slower powerup rule. But because I had more space to slow down than the old TAS because of better optimization before, I grabbed the powerup with more speed. I also did a backwards jump right before the powerup grab for fast acceleration. This was just enough to save 2 framerules with no frames to spare.
;5-3: I had a crazy idea for this level, and that is to use a bullet bill to reach the high platform with the 4 coins faster. Periwinkle told me about the mechanics for the bullet bills. Their height is dependent on previous bullet bills and their spawning time. Also, a bullet bill spawns when the last one despawns, and by stomping bullet bills at correct times, I can control the times and heights in which later bullet bills spawn. Unfortunately, the first bullet bill is too low, making it impossible to delay a bullet bill enough for me to be able to use it. If an improvement is found to a previous level, my idea might work. I still manipulated the bullet bills to make the most entertaining pattern in my opinion.
;5-4: Shooting fireballs to the background music would cause lag, so I jumped instead.
;6-1: I saved 1 framerule in this level. Not pressing left after hitting the corner of a powerup block is apparently faster because it gives you a higher jump height for the jump afterwards. I saved 2 frames from better optimization at the 1UP grab, and another 6 frames from a new strategy for the second powerup. I’m surprised that the old TAS didn’t use my strategy for the second powerup, since it appeared obvious to me. These improvements saved the framerule, again with no frames to spare.
;6-2: It is possible to perform FPG and get the screen wrap if your on screen position is 237 or 238 (but not 239). However, the timer won’t count down if you wrap into the middle of a solid block.
;6-3: I saved 1 framerule with 2 frames to spare from a much faster strategy for the powerup grab. Letting the powerup block push you 4 pixels to the left gets you just as far to the left after landing on the moving platform as holding left right when you bonk, but gives you less leftwards momentum. This allowed me to stop right when landing on the moving platform.
;6-4: Sadly, I was forced to lose a framerule here due to horrible RNG. I tried hard to get past the firebar, including manipulating the spawn time of the podoboo and firebar and changing my on screen x position with a walljump, but it just doesn’t work. I considered losing a framerule in a previous level, but that also gave bad RNG. The fastest solution that I found was clipping into the wall right beside the first pit and getting to on screen position 132, which makes it so that the firebar doesn’t spawn before bonking the powerup block. At first, I lost 2 framerules, but I then found that the initial subpixels are good enough for the clip without slowing down. I didn’t consider this method at first because you need 2 jumps instead of 1 for this to work, but as it turns out, this was the key to saving a framerule. Bowser was killed with 4 fireballs for lag reduction, but I still encountered 2 unavoidable lag frames, one near the powerup grab and the other at the Bowser fight.
;7-1: It is very slightly faster to land on the ground instead of the pipe after collecting the 1UP. I was lucky to get double bullet bills for the ending. BBG is faster than shell glitch because there is a powerup after the bullet cannons.
;7-2: Like the old all items and warpless TASes, I slid into the castle instead of corner clipping. The sliding suddenly stopped when I almost reached the castle, which is very strange. This time, I was able to kill almost every enemy except for a few cheep cheeps that weren't at a killable position.
;7-3: Manipulating the cheep cheep was easier than I expected. You need your y subpixel position to be within a certain range for the ground clip to be possible. I killed every enemy except for a flying cheep cheep that will alter the enemy patterns if I kill it.
;7-4: The corridor after the section with the platforms and podoboo until the Bowser fight was copied from the warpless TAS. It is more entertaining, and the maze loops for me even if I take the intended path for some reason. Bowser was again killed with 4 fireballs for lag reduction.
;8-1: I’m not sure if it is faster to grab the star from the left.
;8-2: You can clip through the ceiling after jumping off a springboard because of the high vertical speed it gives. The springboard is treated like a solid ground, so I can get running speed on it. The clip doesn’t seem to work if I jump onto the springboard with running speed.
;8-3: Grabbing the second powerup at the top is faster.
;8-4: The old TAS lost a frame to bad cheep cheep RNG in turnaround room, but I saved that frame. 21+42+21+21-21-2+1=83 frames saved in total.

!! Potential improvements

* Maybe there’s a way to save 1 more frame and the framerule in 1-3.
* It might be possible to save a framerule in 2-1 if I get a better understanding of how vine teleport works.
* If the RNG is good enough, my bullet bill idea in 5-3 would work.
* 6-4 can be improved with better RNG.
* If I can get the paratroopa under the powerup in 8-2 to the correct position, I could potentially be able to grab the powerup faster by bouncing on the paratroopa.

!! Suggested screenshot

Frame 44106 (going through the wall in 6-1) or frame 48482 (grabbing the powerup in 6-3).
