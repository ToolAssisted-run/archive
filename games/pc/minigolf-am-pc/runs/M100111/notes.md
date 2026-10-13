Same general information as in [M100095]. Because all the scripts and solvers were already set up, 90% of making this TAS consisted of waiting for the solvers to finish and spit out the fastest solution. Again, millions of rerecords that are not reflected in the final project file because the solvers are running in WSL2 / Ubuntu 26.04.

!! Course notes

Here's an overview of the duration of each of the 18 London courses, counted from the frame on which the left click happens until the frame on which the "Hole" byte increases by 1:

| Course | Duration (frames) | Shots |
| 1 | 71 | 1 |
| 2 | 39 | 1 |
| 3 | 60 | 1 |
| 4 | 82 | 1 |
| 5 | 52 | 1 |
| 6 | 35 | 1 |
| 7 | 248 | 2 |
| 8 | 251 | 2 |
| 9 | 32 | 1 |
| 10 | 73 | 2 |
| 11 | 73 | 1 |
| 12 | 39 | 1 |
| 13 | 77 | 1 |
| 14 | 41 | 1 |
| 15 | 37 | 1 |
| 16 | 269 | 2 |
| 17 | 68 | 2 |
| 18 | 52 | 1 |

Instead of a slowed-down video like I did for the Berlin levels, this time I made a looping GIF for each of the courses at 25% which you can see by clicking on the "+ GIF" button beneath. Most of the courses are self-explanatory because they are self-explanatory, but some of them necessitate some more context which I added before the GIF.

! 1

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/1.gif
%%TAB_END%%

! 2

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/2.gif
%%TAB_END%%

! 3

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/3.gif
%%TAB_END%%

! 4

At first I did not understand how the optimal shot could go backwards instead of forwards, but indeed, the fastest forwards shot is 4 frames slower. From what I found there are two reasons for that: 
* When looking at the RAM values I noticed that the ball's Y position starts at 273 and ends at 279, and the backwards shot has a better angle meaning that the ball goes in center (and not from the side like the forward shot, which takes longer)
* The backwards shot has more overall speed, and for reasons I'm not entirely sure about, if any more speed is added to the forward shot then it overshoots the hole and leaves the course

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/4.gif
%%TAB_END%%

! 5

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/5.gif
%%TAB_END%%

! 6

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/6.gif
%%TAB_END%%

! 7

This should not be possible but here we are. Also I compared the fastest shots which open the gate (via the blue-ish circle with the four arrows around) to the fastest shots which do not, and the gate path here is a lot slower because it takes forever for the ball to be playable again (which is also true for the shot you see in the TAS, but that one ends a lot closer to the hole so it finishes much quicker)

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/7.gif
%%TAB_END%%

! 8

There are shots which end on top of the wooden bridge, but those are too slow to be viable (those take 254 frames to complete, whereas the fastest shot that ends in front of the ramp finishes the course in 251 frames

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/8.gif
%%TAB_END%%

! 9

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/9.gif
%%TAB_END%%

! 10

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/10.gif
%%TAB_END%%

! 11

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/11.gif
%%TAB_END%%

! 12

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/12.gif
%%TAB_END%%

! 13

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/13.gif
%%TAB_END%%

! 14

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/14.gif
%%TAB_END%%

! 15

%%TAB Minimize tab%%
%%TAB GIF%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/15.gif
%%TAB_END%%

! 16

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/16.gif
%%TAB_END%%

! 17

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/17.gif
%%TAB_END%%

! 18

%%TAB Minimize tab%%
%%TAB GIF%%
https://raw.githubusercontent.com/toca-1/minigolf-am-pc-tas-optimizers/refs/heads/main/coursegifs/london/18.gif
%%TAB_END%%

!! Reproduction & Verification Steps

Reproduction is the same as in [M100095]. Also on frame 790 you can see that I'm selecting the "London" course set
