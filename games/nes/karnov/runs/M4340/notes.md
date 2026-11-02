> **Imported**
> This run was originally published at https://tasvideos.org/4340M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Intro

Karnov was one of the most successful arcade releases of 1987. An NES port launched in North America early in 1988. The game and character of Karnov are widely associated with Data East (now Paon DP), but Sakata SAS was also involved with the NES port’s infamous programming. The plot is that Jinborov Karnovski—a fire-breathing Russian—seeks the Treasure of Babylon, which has been taken by the evil dragon Ryu. The game has 9 stages, and there is a boss battle at the end of each stage.

[https://i.imgur.com/cTlOOWn.png]

Karnov is a run-and-gun platformer that stands out in a few ways. Karnov can collect Options that give him different abilities, such as reaching higher places, stronger attacks, or flying. Options usually can be stashed in the inventory across multiple stages until the right time to use them. The game also has some routing choices, rather than being a pure left-to-right walk.

But the game mostly stands out for its notorious camera, which can scroll in only one direction at a time and only one pixel per frame. The camera does not keep Karnov in the center of the screen. Whenever there’s vertical scrolling, Karnov’s X-position on-screen gets pushed forward. When he reaches the right edge of the screen (X-position 240) and the screen needs to scroll vertically, Karnov can’t move forward any further until the vertical panning is completed. Please do not confuse the technical quality of the programming with the technical quality of the movie. Speedrunning tactics take the camera issue into account. Also note that all jumps are the same height, but Karnov can change direction mid-jump.

!! Timing

This movie is 1176 frames / [module:frames|amount=1176] seconds faster than the former movie. Improvements come from better resource planning, routing changes, and optimization. I worked on it for about 2 months. I didn’t convert the movie from FCEUX 2.2.3 to BizHawk 2.5.2 because the NESHawk core doesn’t seem to emulate Karnov correctly.

RTA timing goes from when Karnov starts walking in stage 1 to when the screen starts to fade to black after beating the final boss. This timing cuts 257 frames from power-on but adds 546 frames to the ending. Therefore, RTA timing is 4.81 seconds longer than TAS timing. The published TAS had fallen well behind the RTA record, and this movie barely beats it (3.5 seconds faster). You might wonder why. The first reason is that the game has almost no RNG, and so it is possible to memorize the movements. The second reason is that the broken camera and pre-determined bomb timers create a sort of frame rule, neutralizing some gains. The third reason is that hirexen and DragonDarch are very skilled speedrunners; the next closest RTA time is 10 seconds behind them.

||Player||Type||Date||RTA timing||TAS timing||
|[349M|Arc] (v1)|TAS|26 May 2005|9:09.06|9:04.25|
|[1225M|adelikat]|TAS|2 Nov 2008|9:03.31|8:58.50|
|[https://www.speedrun.com/karnov/run/y81grjnz|hirexen]|RTA|21 Jan 2020|8:47.22|8:42.41|
|__Arc (v2)__|__TAS__|__17 Nov 2020__|__8:43.72__|__8:38.91__|
󠛡

!! Stage Notes

||Stage||Theme||Frames (Stage)||Frames (Total)||Notes||
|1|Village|-18|-18|This stage is actually 1 frame faster. But I needed 19 extra frames to pick up a wing near the end of the stage. Getting the wing now will save more time on stage 8. This stage is fairly straightforward aside from the decision to get the wing.|
|2|Ruins|32|14|I had theorized that the top route might be faster than the bottom, because the top is more of a straight walk and it doesn't have the mini-boss. The top route also has a wing. But a lot of time is lost during the big fall near the end of the stage. There are also no bombs on the top route. The top route is for sure slower. And so I took the bottom route, and I was surprised that I saved 27 frames in the tunnel. The other 5 frames are on the walk to the boss (Lion Keeper) because there is no need to duck.|
|3|Forest|212|226|Normally it's not possible to do a single jump onto the tree and then cross the big gap, but firing a shot at the right time extends the jump distance slightly. I get a ladder to use on stage 4. In the middle of the stage, the important thing is to try to minimize the camera's shifting up or down. The camera is quite difficult to deal with on this stage.|
|4|Ice|13|239|Near the start there's a bomb spawn trigger that would waste about 10 frames, but it's avoidable. I saved 13 frames overall on the stage even though I picked up 2 boomerangs using ladders. The stage-end trigger waits until Karnov is on solid ground, and so it is 16 frames faster to force the camera to scroll down closer to the floor rather than fight the boss (Snake Woman) up near the ceiling. Note that Karnov cannot stock ladders, meaning that you have to use one before you can pick up another one. The 2 boomerangs will be major timesavers on later bosses (stages 5 and 7).|
|5|Ocean|60|299|The ocean took the most effort to solve. A wide variety of combinations using the bottom route somehow all ended up exactly 6 frames slower than the previous movie. It's a camera issue. The top route is faster even without a boomerang. But since I got a boomerang on stage 4 to fight this boss (T-Rex refight), the end result is a huge improvement. Also, even if there were an easy way to get a scuba mask, it wouldn’t help, because the game camera will still limit how quickly the screen scrolls horizontally.|
|6|Town|58|357|The town is a straight walk with no camera issues. The bomb detonates on a pre-determined frame, and unfortunately this bomb timer serves as a sort of universal frame rule, because it neutralizes some frames saved on previous stages (see the Bomb Cycles section). The main difficulty is the boss (Snake Woman refight), because again the stage-end trigger doesn't start until Karnov's feet are on solid ground. The boomerang will not insta-kill her. I use the boots (which double jumping height) for an innovative improvement. It's definitely the most interesting boss fight in the movie.|
|7|Pyramid|259|616|This stage is improved by more than 4 seconds because of 3 major timesavers. The low route is approximately 100 frames faster than the high route. The mini-boss has 21 HP, but a perfectly placed bomb makes it easy to deal with. And the boomerang that I got on stage 4 kills the dragon boss instantly (actually the boomerang hits it 3 times in a row). This stage isn't the prettiest, but I don't see a way to do it any faster. I avoided a lag frame in the rock-chucker part.|
|8|Sky|193|809|The long-term planning finally pays off here. I used 19 frames on stage 1 to have another wing to use on this stage, and I ended up with a 10x return on investment. The time saved comes from minimizing vertical camera movement. The boots, which I get to use on stage 9, are actually optional because of the bomb cycles, but it takes no time to get them.|
|9|Lair|367|1176|The previous movie used a sub-optimal route. With either a ladder or boots, it's possible to jump across a gap near the start of the stage. After using the bomb on the wall, I have used every item in my inventory, demonstrating full-game pre-planning. Again, the bomb goes off on a pre-determined frame and again it takes a bit longer than necessary. I had thought that using boots after the last bomb might save frames because they would let Karnov get up the final ladder faster, but the camera's X-position neutralizes the improvement. The game won't let you use a boomerang on the final boss (Ryu); the game resets you to only the single fireball shot. Ryu is strange because it allows a maximum of only 10 hits each time it pops out of a hole, and so only the third cycle really matters. I improved the third cycle by 2 frames over the previous movie.|
󠛡

!! Bomb Cycles (Very Important!)

After initially completing the movie, I had to go back and do a second playthrough to examine the bomb cycles to see if I could gain any more cycles. Fortunately, the lack of RNG makes it easy to go back and edit previous stages. The three bottleneck points of the movie are the bomb timers on stages 2, 6, and 9. For example, on stage 6, the bomb detonates on frame 18343, 18407, 18471, etc. In other words, there is a bomb cycle that serves as a frame rule every 64 frames. But the bomb has to be placed a minimum of 67 frames (3+64) before the bomb-cycle frame. And so ideally Karnov would reach the position he needs to be in to place the bomb exactly 67 frames before it detonates, but a bad bomb cycle could last as long as 130 frames (66+64) if Karnov arrives just 1 frame too late. 

My bomb cycles were 95 frames on stage 2 (neutral), 71 frames on stage 6 (magnificent), and 119 frames on stage 9 (horrible). For the first cycle, there would need to be 39 frames saved before the end of stage 2 to improve the movie’s overall time. Getting the wing on stage 1 took 19 extra frames, but because of this bomb cycle, it actually lost no time overall. The bomb timer in the previous movie detonates on the exact same frame (6611) as my movie, but I am temporarily 14 frames ahead after stage 2 because the previous movie needed to shoot a few more fireballs after the bomb detonation to kill the boss. Ideally, the bomb detonation would be the final hit on the boss. I need to be at least 64 frames faster than the previous movie before the next bomb cycle (mid-stage 6) to actually improve the movie.

I made some major improvements on stages 3-5 though, and so when I got to the bomb cycle on stage 6, I was 320 frames (5 cycles times 64) ahead of the previous movie. From here, there would need to be at least a 60-frame total improvement between the bomb at the end of stage 2 and the bomb at mid-stage 6 to further improve the overall movie time. Such an improvement would trigger a 6th cycle saved, or 384 frames instead of 320. But I don’t know how I could save even a frame or two, and so 60 frames seems unlikely.

The last bomb cycle is near the end of the game, but I cannot directly compare it to the previous movie because that movie used a different, sub-optimal route. I was 809 frames ahead at the end of the stage 8, and so using the same input on stage 9 would actually be only 768 frames ahead overall (12 cycles times 64). But the previous movie’s sub-optimal route made it 367 frames slower on this stage. This bomb cycle is disappointing because if I saved a total of only 12 more frames between the mid-stage 6 and mid-stage 9 bombs, it would result in an additional 64-frame (1 cycle) improvement to the movie. Getting the boots on stage 8 did not cost any frames.

||Bomb Cycle||Frames of Segment||Segment Length||Savings Needed||
|Stage 2|1-6611|6611|39|
|Stage 6|6612-18279|11668|60|
|Stage 9|18279-29687|11409|12|
󠛡

!! Conclusion

After the last bomb cycle very late in the game, it’s back to being a normal movie where every frame matters. My goal is to end the input as early as possible. I tried a lot of crazy things at the end but I don’t see a way to optimize any more. I improved the final boss by 2 frames. Although I focused on explaining bomb cycles, I want to repeat that the game’s odd camera is a strong inhibitor of any potential savings via optimization throughout the whole movie. Thus, it’s possible that this movie has reached the absolute limit of this game. I believe that a potential improvement would require a major glitch or radical new idea. 

Overall, Karnov is another game that is almost good. The premise is fairly similar to Contra. The resource planning is an excellent mental challenge because it is not only a question of whether to pick up an item or not; it is also essential to choose the right time to use the item.

!! Screenshot

[https://i.imgur.com/cJYkrjy.png]


!! Credits

*hirexen and DragonDarch - real-time speedrunners
*rainwarrior - lua script
*fusoya - maps
*ThunderAxe31 - inspired improvement to stage 3
