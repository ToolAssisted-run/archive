> **Imported**
> This run was originally published at https://tasvideos.org/3984M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Emulator used: Bizhawk 1.13.1
* Primary objective: speed
* Uses death to save time

!! Background
After [5562S|5562], I thought of a new movement pattern that should save time in certain parts. I didn't feel it warranted to redo the whole TAS, but it was admittedly itching a bit. A year later (autumn 2018), I picked up this game again for console speedrunning. I looked a bit more into the game mechanics this time around and got a better understanding of what happens during the flying glitch. It turned out that the diagonal movement in the helicopter in area 1 in my previous submission was completely unnecessary and 20 frames had been wasted. I decided to add an update on my to-do list...

!! Improvements
There are many differences with the previous submission, but most of them are small. I will not comment on every single change, but instead give an overview of the improvements:
* Better understanding of the flying glitch. 20 frames saved in area 1.
* Use of a new diagonal movement method. 8 frames saved in area 1, 36 frames in 2 and 20 frames in 3
* Death abuse in area 4, combined with a trick to extend the respawning invincibility period to end input earlier at the last boss. The death abuse lost 8 frames compared to no-death, but 172 frames were saved by using the extended invincibility period.
* Various minor route improvements. 80 frames in area 2, 12 frames in 3 and 12 frames in 4.
* Various minor optimizations (aka cleaning up slop). It's difficult to exactly define what's a minor optimization and what's e.g. a route improvement. I would still say that 16 frames in area 2 and 16 frames in 3 were pretty obvious time losses in the previous submission.
* Better luck manipulation. 12 frames in area 1, 4 in 2, 28 frames in 3 and then 8 frames lost in 4.

Overall a time save of 40 frames in area 1, 136 in 2, 76 in 3 and 168 in 4.

!! Game mechanics
The comments in [5562S|5562] are still valid, so I refer to that submission for more background. I will only add two things here.

! Additonal notes about the movement
The game has three different types of movement frames. 'Straight' (S), 'half-diagonal' (HD) and 'diagonal' (D). The first and last frame in a chain of diagonal movements will always be HD. When not limited in either direction, HD is the more efficient diagonal movement. The distance covered is very close between D and HD. However, HD's smaller angle means that it's better from a geometrical perspective when moving between two points that require diagonal movement. The previous submission used the following two methods.

1. Without constraints in X or Y, the most efficient diagonal movement method is:%%% 
Controller input [[Up-Right-U-R-U-R-...-U-R]], which results in a movement of [[HD-S-HD-S-HD-...-S-HD]] (up and right just used for the example, but the same is true regardless of the movement direction)%%%
The problem here is that half of the movement frames will be S, which in many cases is not sufficient to reach the target position without running into an obstacle. 

2. Continuous diagonal movement%%% 
Controller input [[UpRight-UR-UR-...UR-UR]], which results in a movement of [[HD-D-D-...-D-HD]]%%%
Since you want to keep D movements at a minimum, this method is less efficient than above, but is many times the only option to avoid getting stuck on obstacles or to avoid explosions.

There is however a third diagonal movement method. 

3. Controller input [[UpRight-UR-U-R-U-R-...-U-R]], which results in a movement of [[HD-D-HD-D-HD-D-...-D-HD]]%%%
This provides a middle-ground between the two methods described above. It doesn't waste any frames on straight movement and at the same time it doesn't go over to a long chain of D movements. 

All three methods for diagonal movement are used extensively throughout the run. The time difference between these methods for a single diagonal movement is small, but selecting the optimal diagonal movement method does add up over the course of the run.

! Extending the invincibility period
There is an invincibility period when respawning after a death and also at the start of a new area. The timing for this period can be reset by getting hit by an explosion (but not e.g. by gun fire). This way you can extend the invincibility period indefinitely in certain parts of the game. The conditions are too specific for this to be any major game changer during normal game play, but it can be used to save time against the last boss.
