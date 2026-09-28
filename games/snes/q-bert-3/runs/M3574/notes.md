> **Imported**
> This run was originally published at https://tasvideos.org/3574M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Streamed TAS Release can be viewed here: https://www.twitch.tv/videos/204649358

! This TAS improves the previous submission from JoshButro by 32033 frames or 8 minutes and 53.883 seconds.

Though Josh created a TAS that runs the game deathless, this submission took a completely different approach to cutting time...which are mentioned in the "Improvement Strategies" section below.%%%

! Special Thanks
Thanks goes out to Eternised Dragon (Aran;Jaeger) and sniq for being there to hear my progress and sharing in my excitement of my major findings and cuts.%%%
Also, a shout out to Binary Dragon for helping make the video commentary a bit more interesting by controlling the questions.

!!! Game Details
Q-Bert 3 is a game that came from the concept of the classic arcade game. Even though this game is classified as a puzzle, it had action qualities as well.%%%
The object of the game is to change the color of each cube to the designated color, noted at the top of the screen. As the game progresses, the coloring patterns change.%%%
During the quest of completing each screen, enemy avoidance is necessary to stay alive. The basic concept of identifying enemies, would be to note their color...which Q-bert 3 veers a bit from. Basically, Purple and Red (Coily, the purple snake, Ugg and Wrong way are bad...with the exception of red fruit. With Q-bert 3, the addition of new enemies include non-purple/red enemies...such as the Frog (which follows you around slowly), Pipes (which shoots tiny red balls) , Hats (which bounce back and forward in a defined/static pattern), and purple kisses (which move around in a defined pattern and then drop off of the cubes).
	
!!! Goals:

* any%
* Real-Time

!!! Tools Used:
* lsnes Emulator rr2-B23

!!! Improvement Strategies:
! Better routing
* Experiemented with different routes to find out which route can complete each screen the fastest
* Planned ahead to know how the appearance of enemies would affect mobility.
* Timed the hops to collect up on Slick/Sam when they fall or allow them to affect cube colors to my advantage.
* Timed the hops to collect up on the freeze ball, where an advantage was possible.
* Manipulated enemies to move in a direction that allowed for me to completed my route faster. (Coily and Frog mainly, all other items run through a static drop pattern; however, their drop determination can be control...but very limited)

! Takes advantage of Slick and Sam to help color in additional cubes and/or change polarity of colors
Mentioned also with routing, these points are made to stress that these green guys (Slick and Sam) are used to help prevent hops and bad polarity patterns.%%%
These green guys that can either change color for the good or bad. Allowing them to perform their destructive effects can dramatically cut time, where Q-Bert would have to do extra work

! Abuses Death to save time (2 different ways to die)

1. Run into enemies%%%
In certain situations, this prevents Q-Bert from being placed in an un-otpimal situation that would waste time waiting for enemies to get out of the way.%%%
Sometimes a large amount of objects can exist and cause lag to increase. Running into an enemy early on, such as the annoying frog, can help eliminate the quick build up of lag.

2. Falling off edge%%%
Instead of hitting an enemy or jumping onto a disc-platform, falling off the edge can get you quicker to the starting position, but without the ability to change the cube color you start on.

	*These techniques didn't always help, but experimentation led to finding which cases saved most time. In fact, this TAS was re-synced twice (after being completed) to abuse even more deaths. It was unclear how many deaths were going to occur for the better, so a count of deaths were taken into consideration at the end of the last level and used to cut more time. The re-visitation allowed for 5 more deaths and approximately 600 frames cut.
		
! Lag management
As previously mentioned, lag can be reduced by keeping the object count low on the screen...thus, preventing wasted CPU processing in the wrong areas.%%%
Sometimes controller inputs can cause lag. In this TAS, one frame inputs are used to control the direction of Q-Bert, instead of holding the direction down continuously.%%%
Kill the Frog Early!!! The frog is a menace and had the ability to introduce lag early on and also cause a routing disaster.%%%
Staying out of the proximity of enemies can keep the collision check algorithm from executing and preventing the possibility of lag.

! Avoidance of bonus tally times
Each object remaining on the screen causes roughly 31-33 frames of delay. You will notice on an number of screens, the last hop is delayed (up to 29 frames in the worst case) to eliminate at least one object and thus preventing roughly 0.0167 to 0.5 second of wasted time.

!!! Level Coloring Patterns

! Note: A is the first color (original starting color), and B & C follow suit. Parenthesis indicates a repeating color changes for when continuous hopping occurs.
Levels 1,3,10,15: AB%%%
Levels 2,4,11,16: ABC%%%
Levels 5,7,12,17: (AB)%%%
Levels 6,8,13,18: A(BC)%%%
Levels 9,14,19,20: (ABC)%%%
	
!!! Unused discovered glitch in this game:
A glitch was discovered on Level 9-1, which I call "Air Q-Bert"...after the phrase "Air Jordan". Initially this glitch was used to save time, but better routing was still discovered and removed the glitch from being seen in this TAS. :(

It is not 100% clear on how to reproduce it, but near the end of Level 9-1, you can jump off of the edge from either the 2 or 3 collection of cubes. Once you have done that, you'll notice that the platforms disappear...but they are actually still there, but with no mobility. This give you the extra room to clear out cube colors without having to travel the excessive amount of time from one area to another. The sad thing is though, that I tried this in later levels and could never get it to occur again.


----------------------------------------- UPDATE -----------------------------------------%%%
Further review of my TAS showed a mistake on 12-3:%%%
* Q-bert falls to his death near the bottom right. The mistake was jumping towards the top, rather than the bottom. This cut 8 frames.%%%

As I went further to sync up the rest of the TAS, I discovered 3 more routing improvements, lag reduction, and the removal of 1 object during bonus tally.%%%

Stage 14-3: Near the end, when dancing around with Coily, I cut the delay out that was used to manipulate his direction by noticing that the path could be done in reverse. The small amount of frames cut, seven, was enough to keep the next object from dropping...which gave me an additional 32 frames cut.%%%
Stage 16-4: Near the end, I changed my double hop pattern near the top left. This caused Coily to stay behind further, as it cut out the delay I previously used to manipulate him. Also, it changed how Sam would come along and recolor more appropriately for the best.%%%
Stage 18-2: At the beginning, I hopped on the 4th cube at the right...instead of the left. This was done to allow Slick to color in that left cube for me...effectively preventing 3 hops near the end.%%%

Lag was reduced on most of the stages a bit further. How this was done, was injecting a frame in random places to see how it would reduce the lag. Of course, this caused a major syncing problem.%%%

8 hours was spent in performing these cuts, which turned out 130 frames less.%%%

Admins...please notify me on how to provide you with the newest input file.%%%
--------------------------------------- END UPDATE ---------------------------------------%%%

[user:Noxxa]: Judging.

[user:Noxxa]: Replaced movie file with a two-seconds improved version.

[user:Noxxa]: Very solid improvement, and nice use of death strategies. Accepting as an improvement to the [2782M|published movie].

[user:feos]: Pub.
