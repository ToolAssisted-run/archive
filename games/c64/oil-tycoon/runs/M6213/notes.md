> **Imported**
> This run was originally published at https://tasvideos.org/6213M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Oil Tycoon (Compute's Gazette)
You are P.J. Uing and you are about to make big money in the petroleum business, but drilling for oil is not as easy as it sounds. These are obstacles you must overcome in order to make a profit, in this fascinating strategy game with multiple difficulty levels and hundreds of play possibilities.

The article for this game can be found on page 52 of [https://archive.org/details/1983-10-computegazette/page/n53/mode/2up|Compute's Gazette Issue 4 (October 1983)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 85th TAS from this series. 

Its hard to know for sure, but I think this was the first issue that I got, that wasn't part of the back order bundle that my Uncle got for me. This was back in the day when I saw mesmerized about the content and had no clue on how to program. So everything in these issues piqued my interest and got me where I am today.

!!Game Difficulty and Ending
There are Eight levels of difficulty. I choose the highest of Level 8. By choosing this highest level, the randomly placed shale will become invisible. As for the ending...just finish one screen, as there is no new content or increase of difficulty.

!!Effort In TASing (Not BOTed)
As with my other CG submissions, the task of optimizing this game is no different. I first had to figure out how to end this game properly. It was not as straight forward as I thought it would be. Below are some items that I had to focus on, in order to get the optimization where it is.

*Because of the "Hidden" shale objects, I had to write a lua script that would highlight these objects on the screen. They look exactly like dirt, but would harm the drill bit when touched. Because they were a duplicate of the dirt graphic, I just change their color to show up on the screen. This helped me to identify a route. A lot of times, I saw things in the way that would have slowed the run down. Once I found a good route, I proceeded to TAS the entire game through.
*Determine an RNG Seed that will help me go through this quickly. When a screen would show up that looked promising, I proceeded to finding the last input. Well, I found 4 seeds that looked promising and I eventually ended up finding one that was fairly quick to complete.
*Experiment with the order of oil pumping. Why is this important? Well, to avoid the hidden and random devils that can show up. By changing the order of my pumping, they would appear in different places or not at all. If you are able to put the drill in the spot where a devil would exist, you can prevent it from showing up as well.

!!Human Comparison
Here is what the game looks like with visible shale and human ability.

[module:youtube|v=1nzLiW5S5C8]
