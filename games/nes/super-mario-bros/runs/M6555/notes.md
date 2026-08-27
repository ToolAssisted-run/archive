> **Imported**
> This run was originally published at https://tasvideos.org/6555M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Super Mario Bros. is a classic game that we've seen multiple TAS goal choices for. But here's a new goal: completing the game with 000000 points.

The only known way to beat the game with 000000 points is by maxing out the score to nearly 9999950 so it rolls over to zero.

It's not a "lowest score" TAS, because a regular "lowest score" TAS would be 400 points, and boring to watch (because Mario can't hit any enemy and has to wait for the timer go to 000). It's not a "maximum score" TAS either. It's a score based TAS of its own.

Note: it's recommended to watch our encode with fast forward during the point-farming loops, because it might be boring for most people to watch Mario stomping a shell for 2 full minutes.
[module:Youtube|v=CeoHC3-0Kg0]
[https://mega.nz/file/zxl21aTY#rO-EfhuHcO8-semDuSJvv40zreqNq-vSnNEPZrpY8b8|Download HD encode (MKV, 34.9 MB)]%%%
[https://youtu.be/qW3de7B-n1I|5-1, 5-2 & 5-3 - Deleted Scenes]%%%
[https://youtu.be/RieOJXPNzRA|7-1 - Deleted Scenes]%%%
[https://youtu.be/w7bq_JCk_js|6-1 ending & 6-2 - Deleted Scenes]

! Game Objectives
* Completing the game with 000000 points in one life (dying is banned)
** Aims for the fastest time

! Route Choice
At first, it was estimated that we need about 8 point-farming levels, so the first route was 1-2 → 3-1 → ...  → 8-4.

[https://i.ibb.co/xSYdS9yd/V1-3-1.png] [https://i.ibb.co/rRtjv1SK/V1-6-2.png]

With more efficient point-farming setups found in 6-1 and 6-2, we estimated that it would take 5 point-farming levels, so the route was changed to 1-2 → 5-1 → ...  → 8-4. In this version, 5-2, 6-2, 7-1, and 8-2 all have clever and unique setups, different than the final version.

[https://i.ibb.co/XZ8DL8WB/V2-5-2.png] [https://i.ibb.co/rKPGPWdr/V2-6-2.png] [https://i.ibb.co/Zzy5DrdY/V2-7-1.png] [https://i.ibb.co/xK4qyFk3/V2-8-2.png]

And then we found solutions with even higher efficiency. Previously, we thought it was only possible to do 6-frame stomps when the Koopa shell is on the left side, but it turns out that it's also possible when the Koopa shell is on the right side, only much more difficult.

So we only need about 4 point-farming levels, which are 6-1, 6-2, 7-1 & 8-2 as shown in the final video.

! Point Farming
Our point farming solutions are way more sophisticated than the classic 1-Up trick.

To get the full score combo, 6-frame stomps are needed. It means there are 6 frames between the shell kick and the shell stomp. The classic 1-Up trick is 4-frame stomps, so a lot of the points would be missing from the shell kick.

Falling loops are usually faster than jumping, because Mario can maintain running gravity.

It's basically impossible to figure out the fastest loop through calculation, because of Mario's Y subspeed and lots of variables, so the optimization of this TAS is only possible thanks to DaSmileKat's shell kick program.

DaSmileKat's program can calculate jumping and falling loops, and with special conditions. The output is a series of frames for shell stomps, and it includes Mario's final Y subpixel and point sacrifice & efficiency.

Although the program is very helpful, we still have to pick the best useful result by hand, because Mario's Y subpixel is crucial for many solutions to work, and some solutions won't be possible because it requires Mario's moving to the correct X position as well.

The point farming solution in 6-2 and 7-1 is very complicated, and only possible on the left side of the screen, because Mario can quickly turn around with the help of the screen edge. The last 2 stomps are 4 frames instead of 6, so Mario can have space to accelerate, and falling loops can happen.

The solutions in 6-1 and 8-2 are hard mainly because Mario has to shoot Spinies along the way. 6-1 took me the most amount of time, because Mario's Y subpixel is different each time, and has to change facing directions to shoot Spinies to avoid getting hurt.

! Efficiency
8-2 loop has the highest efficiency, about 327.2727 points per frame (not including shooting Spinies).

6-1 has the second highest efficiency, about 313.4662 points per frame on average.

6-2 and 7-1 loop has the efficiency of 312.2449 points per frame.

Since the slowest point farming efficiency is about 312.2449 points per frame, anything less than this would be considered not useful. For example, the 1-2 shell kick has efficiency less than this, so it's discarded; but the 8-1 shell kicks have higher efficiency.

! Why 3 Fireworks in 6-1 and 6-2?

We don't need to spend all the remaining time in 6-1, 6-2 and 7-1, so I picked a good chance to get fireworks. You'll get 500 points from each firework.

Getting 3 fireworks are usually slower, but not when the time is less than 53 seconds, because the level has to wait for the music to end anyway. The fireworks in this TAS don't waste any time.

! Why Flagpole Glitch and Why Not Flagpole Glitch in 4-1?

A flagpole glitch usually saves 21 frames, but it's 4900 points less than a 5000-point flag grab.

Since 4900/21≈233.3333, much less than 312.2449 points per frame, getting the top of the flagpole are usually not worthwhile.

But since we happen to need a couple of thousand of points, we chose to grab the 5000-point flag in 4-1.

! Suggested Screenshot (frame #65110):
[https://i.ibb.co/dwvcp1X9/000000-points-TAS-65110.png]

! HappyLee's Comments
I started this project in January 2024. This TAS took hundreds of hours to make. It's not easy to do something new in a 40-year-old game.

My goal was to team up some talented SMB TASers and work on it together. I don't know if it's because the project is too complicated, during the making of this TAS, some members got discouraged and didn't contribute much. So I worked on the point-farming solutions and made the full demo pretty much by myself.

But this TAS couldn't be done without the team members, so I'm thankful for the help from DaSmileKat, Kzwbz, Asumeh & Kosmic. DaSmileKat worked on the point-farming calculating program, and 8-1 final version; Kzwbz finished 6-3; Asumeh finished 7-3 and 4-2 warp zone stage.

This project also got help from Mars608, chatterbox, Kriller37 & Wolf, so special thanks to them.

If you can find an improvement, and would like to work on future versions of this TAS together, please contact me through PM, Discord, or Email HappyLee12@126.com. Thanks.
