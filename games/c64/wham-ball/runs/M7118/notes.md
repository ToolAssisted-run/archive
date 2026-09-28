> **Imported**
> This run was originally published at https://tasvideos.org/7118M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Wham Ball (Compute's Gazette)
"Wham Ball" is a one player pinball game where you control the action. It features 26 screens, 32 speeds, and up to 40 randomly placed Whammies per screen.

The article for this game can be found on page 22 of [https://archive.org/details/1989-09-computegazette/page/n23/mode/2up|Compute's Gazette Issue 75 (September 1989)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 105th TAS from this series. 

Never played this game, because I missed purchasing the issue. This was after my subscription ran out and I had to resort to buying an issue from "Reid-A-Book" in Anderson, SC. I would have loved this game, as it is a top 10 of all Compute's! Gazette games.

!!Game Difficulty and Ending
The only thing you can control here, is the speed. When you finish each round, the speed gets faster and faster. So, I decided to put the speed all the way up to the 31st fastest selection. Why? It saved me 2 frames and the round played out in the same amount of time, without any input changes. The next level, speed is maxxed out and remains that way throughout the rest of the game. After completing Screen Z, it starts all the way back over on Screen A...thus ending all unique content.

!!Effort In TASing (Partially BOTed)
*Heavy Rng Manipulation: Forces the placement of Whammies.
*Heavy Tilt Abuse: Used to force route changes.

This was a tough game to optimize. At first, I had no idea about the "tilt" function. When I found out about it, I had to go back and see if it helped to cut frames. WOW, it made a huge difference...forcing me to start all over again.

In terms of BOTing, the only method that I could come up with was forcing Whammie locations (RNG manipulation) and recording the collection route. So this method used two scripts...one to record locations that the "Ball" was traveling, and a second one to control RNG. The second script had a secondary function to check and see if the whammie locations fall within the route recorded by the first script. If so, then notification was provided...thus allowing me to manually test out the BOTs findings. It was kinda complicated to come up, but this method helped out until about screen K or L (could be because the higher count of Whammies made is more complicated to control placement). So half of the run was BOTed, and the rest I had to resort to manually TASing it.

!!!Early Input Ending
Yes! It will finish the last level...but you will have to wait for frame 24012.

!!Human Comparison
[module:youtube|v=0rrabqTpeTs]
