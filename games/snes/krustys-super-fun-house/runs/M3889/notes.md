> **Imported**
> This run was originally published at https://tasvideos.org/3889M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! Krusty's Super Funhouse

To start off, further investigation in some troubled places (of my original attempt) finally showed new ideas, strategies, and concepts that led to big and unexpected cuts. This game has turned out to be like chess, in the approach of strategies that led to better efficiency of completion. My original thought that 5 to 15 seconds could have been cut, but it led to around 50 seconds. As I further invested more ideas...I cut 1 minute. Eventually it lead to an unbelievable 2 minutes cut...which I never would have believed. But it never stopped there and cuts continued on past 3 minutes. In fact, this is roughly 3:14 cut...what worsel started calling the time cut PI. So we ended up cutting a Krusty Pi. :)

! TAS Recording and Commentary
The link below is a Twitch Stream of the TAS with Commentary from Binary Dragon, Worsel (who did the stream but his mic wasn't captured), Iceplug (WR Holder), EZGames, and myself.

https://www.twitch.tv/videos/343287450

!! Game Description
Krusty's Super Funhouse is a puzzle based game that is often related to Lemmings. The object is for a player to redirect small rats to an extermination area through complicated maze-like levels. The player controls Krusty the Clown, who must navigate through his Krusty Brand Fun House. Each level is a puzzle in which a number of rats must be exterminated. Using different objects and obstacles, Krusty must create a path for the rats to follow and guide them towards an extermination device. Other creatures such as snakes and flying pigs attempt to hinder Krusty's progress by injuring him; he must throw pies in order to defeat them.

In each stage the extermination devices are run by a different character, including Bart, Homer, Corporal Punishment and Sideshow Mel.

!! Goals
* Any%
* Abuses Death to save time
* Takes damage to save time

!! Tools Used
* lsnes rr2-B23 Emulator
* Ram Watch
* Lua Scripting

!! Addresses discovered
* Active: 7e00d2 (To determine when the activity of a room starts)
* Bonus Timer: 7e002e
* Health: 7e11a4
* Lives: 7e11a3
* Area: 7e0033
* Room: 7e0032
* Remaining Rats: 7e0048
* Speed (X Direction): 7e030d
* Speed (X Acceleration): 7e030c
* Speed (Y Direction): 7e030f
* Speed (Y Acceleration): 7e030e
* Krusty's X Position: 7e0056
* Krusty's Y Position: 7e005A

!! Tricks and Techniques

Block Jumping: The ability to use obstacles to help boost your jump by 16 pixel in one frame. Additionally, if you were to press down while jumping (frame perfect), you will also take the block with you.

Turn-Around Glitch: If you were to place a block at the correct frame, you can force a rat to turn around. Unfortunately, it seems to only work when the rats are moving right.

Bridge Building: By taking the block with you on every jump, you can use two blocks to build a stair way. This was extremely useful for directing the rats much more quickly to the death chamber.

Clipping: Used 5 times, but clipping was performed to gain a huge advantage. Basically, clipping requires the release of a block so that you can get pushed off to the right or left of your position...where you will notice that you are now in the area of where a block can be placed. This can be viewed on one particular level where I lock myself into the door area for entertainment.

Death: By killing Krusty at the beginning of a room, the game takes away the advantage of getting bonus time on reentry. Due to large amounts of bonuses (for a number of rooms), this death time is much shorter and prevents the tallying time...often saving anywhere from 5 to 17 seconds (depending on the remaining bonus)

Elbow Manipulation: This piece has turned out to be one of the most robust pieces to obtain. There are a number of ways to use this piece: 
     *The trivial use of connecting pipes 

     *Redirecting rats towards an opposite direction. (Especially useful for when rats are moving left where the "Turn-Around" cannot affect direction change.) 

     *Slowing rats down.

In essence...this piece can be used to slow down rats so that some tight situations can become possible. This will be evident in "The Long Room" for Area 3, where I have reduced the amount of pieces used and was able to accomplish a task that I couldn't before. In this case, slowing down the rat included blocking the opposite end so that I can prepare my next move without the lack of time to pull of a stairway climb. 

     *Speeding up rats. 

When a rat enters a pipe or elbow, they immediately are captured for quick forward movement. With correct timing, you can speed up horizontal movement of rats. Additionally, this step can be repeating multiple times to keep up the fast forward movement of the rats. One draw back...you cannot do it more than twice in a row, without resetting your position ahead by one block. 

     *Turn around glitch. 

As with any piece. the elbow can also be used to perform the "Turn-Around" glitch...which is still only possible for right moving rats. 

     *Building Acceleration: 

An important part of optimizing Krusty's movement was to fully understand how the acceleration value can be played with in order to make Krusty perform optimized tricks and be able to change directions quickly. There are too many places to describe how this was used, but the important thing to note is that you can bring down the acceleration to a point where one frame can change your speed instantly so that tricks can be performed faster.

!! Room Details
*The rooms are listed in order as they are played through this TAS. 

|| Area-Room || Frames cut from original TAS ||
| 1-1 | 0 |
| 1-2 | 0 |
| 1-3 | -8 |
| 1-8 | -1 |
| 1-4 | 0 |
| 1-7 | -237 |
| 1-6 | -335 |
| 1-5 | -35 |
| 2-10 | 2 |
| 2-9 | -24 |
| 2-8 | -944 |
| 2-6 | 0 |
| 2-3 | -25 |
| 2-4 | -125 |
| 2-5 | -112 |
| 2-2 | -148 |
| 2-1 | -155 |
| 2-7 | -40 |
| 3-3 | -414 |
| 3-10 | 21 |
| 3-14 | -256 |
| 3-8 | -8 |
| 3-1 | 0 |
| 3-2 | 0 |
| 3-4 | -8 |
| 3-11 | -64 |
| 3-12 | 2 |
| 3-6 | -2157 |
| 3-5 | -104 |
| 3-13 | -208 |
| 3-9 | -233 |
| 3-7 | 10 |
| 4-1 | -167 |
| 4-8 | -53 |
| 4-7 | -296 |
| 4-12 | -12 |
| 4-13 | 2 |
| 4-14 | 0 |
| 4-3 | -252 |
| 4-4 | -84 |
| 4-5 | -1870 |
| 4-11 | -186 |
| 4-10 | 4 |
| 4-9 | 0 |
| 4-2 | -168 |
| 4-6 | 149 |
| 5-3 | -14 |
| 5-10 | -53 |
| 5-7 | -56 |
| 5-12 | -13 |
| 5-2 | 23 |
| 5-6 | -933 |
| 5-1 | -314 |
| 5-11 | -30 |
| 5-13 | -80 |
| 5-4 | -56 |
| 5-5 | -284 |
| 5-8 | -1019 |
| 5-14 | -97 |
| 5-9 | -192 |
| 5-9 | -17 |

*RTA Conversion of the 1:10:47.617 TAS time can be achieved by subtracting 908 frames, which it where humans start their speedrun. To get a rough idea, just subtract 15 seconds (1:10:47) and this TAS is over 29 minutes faster than the WR (1:39:55.00).
