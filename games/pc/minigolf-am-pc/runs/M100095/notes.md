Some of the shots in this TAS may be a bit difficult to see due to them happening so quick, so I created an edit where only the courses (without transitions) are shown at 25% speed:
[module:youtube|v=1vbT-00wOmc]

!! About

[https://www.mobygames.com/game/139995/minigolf/|Minigolf am PC] is, as the name says, a Minigolf game developed in 1997 by Software Brokers GmbH for the German-speaking market – although the game can be installed in English, as is the case for this movie. It features 7 sets of 18 courses each, all labeled by some European capital. I played this game a ton as a kid on my father’s Windows 98 PC, and I recently found it again online which filled me with nostalgia and made me revisit it. But as I played it, I realized that old Windows TASes are now a thing through DOSBox-X so I got the idea of TASing the first 18 courses (the “Berlin” set) to see how fast it could be beaten.

!! Game mechanics

The gameplay is quite simple: you position your mouse somewhere, and the game will draw a line from the ball in the direction of your cursor, thus setting the direction as well as the power of your shot; beware that the shot strength caps out at some point. You click, and the game executes the shot.

!! Relevant RAM Values

The following list is certainly not exhaustive, it’s just the RAM values that I looked for because I needed them for scripting:

** The number of the current course
** A bool that says whether the ball can be played (value 1) or not (value 0)
** X and Y position of the ball

While these values are tracked in the RAM watch file attached to this submission, beware that some of them may break if used on anything but this project because of pointers. At the very least, they are stable throughout this movie.

!! Botting

There are two methods of optimization I used; everything that follows is also [https://github.com/toca-1/minigolf-am-pc-tas-optimizers|documented on GitHub], cf. also the [https://forum.toolassisted.run/t/minigolf-am-pc-pc-minigolf-am-pc/1540|overview forum post].

First, there’s a Lua script which optimizes locally: given some on-screen coordinates and a radius, the script would interpret that as a list of mouse-positions before clicking and out of them, it would find the fastest shot into the hole. Once I optimized all solutions that I found by hand using this local optimizer, I put all courses through a global optimizer which simply tries all possible shots and outputs the fastest one (viable mainly through [https://github.com/ToolAssisted-run/chimera-common-minibox|Minibox] as well as parallelizing runs on different cores, brought the search time per course down to a few hours each).

15 out of the 18 Berlin courses turned out to have a hole in one, while the remaining three (courses 12, 14, and 17) are confirmed to need more than one shot to clear. These latter courses were then optimized using a version of the global script which -- instead of looking for hole-in-ones -- tried all shots and ranked them by distance to the hole as well as time until a shot is possible again. This combined with the local optimizer for the final shot of each of these courses led to a movie which I strongly believe to be optimal; or at the very least can only be improved by a couple of frames (but feel free to prove me wrong)!

With all of that in mind, while I don’t have a reliable number for the rerecord count, my rough estimate for the bruteforcing alone is 5-6 million, which makes for quite the rerecord ratio per frame (would be second or third place on [https://tasvideos.org/MovieStatistics/LargestRerecordRatio|this list]).

!! Course notes

As for the course-specific notes, what follows is based on this [https://docs.google.com/spreadsheets/d/16ibWOvpne81oFvygaI51V2YN6B2dC2H_gdb_vnf7SOw/edit?gid=0#gid=0|spreadsheet] of mine (note the second tab). For an overview, the final version where I used the solvers was 707 frames (10.1s) faster than the first version which I made entirely by hand; that’s roughly 20% of the original runtime cut!

! 1

You’d think this course is straightforward, but the global solver found that the straight shot is 31 frames slower than this zig-zag one. This seems counterintuitive at first, but what’s happening here is that taking the edge of the ramp means the ball doesn’t fly as high, meaning there’s less air-time and it gets to the hole quicker.

! 2

The fact that this is possible is stupid (I feel like this is not the only time I’ll say this throughout these notes). Originally, I took a straight shot, but the global solver found that using the corner of the ramp saves 24 frames.

! 3

Finally an intuitive shot. The local solver found a solution that was 34 frames faster than what I found by hand, and this was confirmed by the bruteforce script. 

! 4

Another straightforward shot: local solver saved 1 frame, global solver verified it.

! 5

This course was an emotional rollercoaster. My solution by hand was a hole in one in 172 frames with 4 wall bounces. The local solver brought that down to 70 frames by finding a slightly better angle. I didn’t think this could be improved upon because I didn’t expect a “direct shot” (using the wall twice) to be possible; luckily, the global solver didn’t care about what I thought and found a 33 frame shot.

! 6

Curiously, the 51-frame shot I found by hand was verified by both solvers. Hooray for my luck!

! 7

You’d think finding -- or at least getting close to -- the best shot by hand isn’t difficult, but no… the local (and global) solution got the shot down from 78 to 45 frames.

! 8

I found a decent 94-frame shot by hand; the route was similar to what you see in this movie, really all that changed is that the global solver found a solution that touches the sand less so the ball loses less speed, resulting in 15 saved frames.

! 9

I couldn’t find a “direct” (1 wall bounce) shot by hand, but the global solver could, thus saving 21 frames.

! 10

The fact that this is possible is stupid (see, I said it again). The route I found by hand was to take the ramp directly, but in doing so I hit the wall three times. When I saw the coordinates in the solver I didn’t know what kind of shot that should be, until I tested it and realized that you could use the top corners of the course to finish with just one bounce. Down from 100 to just 50 frames.

! 11

The fact that this is possible is stupid. Same idea as in course 1 where using the edge of the hill reduces the airtime, but the reason this reduces the time of the shot by more than half (from 74 to 33) is that at the end, the ball also bounces over the sandpit so there’s no slowdown either.

! 12

The first course where a hole-in-one is impossible. As explained before, I used a modified version of the global script to find a first shot which gets as far as possible, and then optimize the second shot as usual. Interestingly, there exists a 2-shot solution in 228 frames (so a lowest-shot-TAS would use that one); however, it turned out to be faster to finish the course in 3 shots because the sand made it such that the second shot ends quickly and with the hole in line of sight. Overall, the fastest 3-shot solution was roughly half a second faster than the hole-in-two, and a staggering 133 frames faster than what I had found by hand in the first version of this TAS.

Here is the overview of the second shots as well as their stats. I tested all the feasible ones and the one in 40 frames finishes fastest:

| frames until shot possible | ball pos (X,Y) | mouse pos (X,Y) | notes |
| 44 | 306, 336 | 26, 1546 | ends on frame 2085 (57f) |
| 41 | 306, 337 | 14, 1546 | ends on frame 2081 (53f) |
| 40 | 319, 337 | 1221, 1623 | ends on frame 2079 (51f) |
| 39 | 335, 337 | 1293,  1623 | ends on frame 2080 (52f) |
| 38 | 363, 337 | 1417, 1623 | too far from the hole |
| 37 | 373, 337 | 1465, 1623 | too far from the hole |
| 36 | 393, 337 | 1553, 1623 | too far from the hole |

! 13

I couldn’t find the direct shot by hand, but the local solver could, which brought the course down from 102 to just 52 frames. The best one

! 14

The second course without a hole-in-one. Like with course 12, I had the global solver try all shots and rank them by time and distance to the hole, and I tried all the feasible ones by hand. The best one ended roughly 117 units of distance from the hole, while still allowing for a direct shot (that the local solver could then optimize) which overall made it the fastest solution. Because the solution I found by hand was not that bad, this “only” saved 41 frames.

! 15

The fact that this is possible is stupid. Once again the global solver cut the course time in half, from 111 to just 55 frames.

! 16

While straightforward, I didn’t think the shot I found (only took 46 frames) could be made much faster. However, while I took the direct path the global solver used the wall to use the edge of the ramp in order to reduce airtime. Saves 11 frames

! 17

To cite Dimon: ''“The pre-last course is disappointing. It's like "almooooooost thereeeeee"“''. This is the course where I thought a hole-in-one had to be possible and that I just couldn’t find it. However, the bruteforcer found no such solution either so I had to settle for the fastest hole in two. Here is the overview of the best first shots as well as their stats:

| frames until shot possible | ball pos (X,Y) | distance to hole | mouse pos (X,Y) | notes |
| 245 | 525, 203 | 5.831 | 770, 1167 | teasing, found by hand |
| 238 | 529, 208 | 8.062 | 814, 890 | goes straight through the grey obstacle lol |
| 233 | 530, 178 | 22.000 | 866, 643 | fastest |
(everything slower had no direct line of shot)

Because I had found the closest shot (which, to be clear, is not the fastest shot) by hand already, the solvers “only” saved me 12 frames here.

! 18

Second time the solution I found by hand has been verified by the solvers -- let’s go, me!

!! Reproduction Steps

''__Beware that the installation needs a different Chimera version than the actual movie__'': Chimera (Nightly 2026-09-16, ddcac8a4); but the DOSBox-X core version is the same as for the run (Nightly 2026-09-17, 70919ddc -- beware that the GitHub release is called Nightly 2026-09-''18'', but the version hash is still 70919ddce8445932671cd3032ad4ece6ce76e45d)

## Create the image file win98.hdd with Windows 98 installed, according to the [https://tasvideos.org/Bizhawk/DOSBox#Windows98|TASVideos instructions]. (Tip: Google may recognize SHA1 hashes)
## Download the provided installation movie (install.chimeraProject)
## Download the "Minigolf am PC" CD (Minigolf_am_PC_970605_1911.ISO, SHA1: 0B93CF5F92FBFABF17687E732177C03C5EB47839)
## Put ''"install.chimeraProject"'', ''"Minigolf_am_PC_970605_1911.ISO"'', and ''"w98.hdd"'' all in the same folder.
## Open and play the installation movie
## After the installation movie finished select Emulator > Export Save Data and save the hard disk as ''install.''__hdd__ (either directly, or just rename the file afterwards). The resulting install.hdd should have the SHA1 hash F1BB3175F01F2CB4AD52C3DBA261DA1C3D9415C9, resp. the MD5 hash 9FA9273112A190E93F3901EA72B57DB0
## Download the submission movie and put install.hdd in the same directory
## Open and play the movie

Install encode:
[module:youtube|v=dBTB09vUe60]
