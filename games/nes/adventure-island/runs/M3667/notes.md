> **Imported**
> This run was originally published at https://tasvideos.org/3667M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Primary objective: speed 
* Secondary objective: entertainment and display of non-human skill, precision and risk

!! Comments
Since the previous TAS was made, a few new time savers have been found. The findings are actually big enough that a good real-time speedrun would be able to match it. After having taken a crack at it myself (only to fall a few seconds short), I decided I'd use that experience while it was still fresh in memory to make a TAS that included all the currently published knowledge about the game. 
The new findings not used in the previous run are:
* There are several stable movement speeds. The game mechanics favor the slowest ones. So if you're unaware, you're going to spend most of the time at the slow speeds. It's not possible to say exactly how much time was saved by manipulating the speed, but it should be something like 30-40 seconds.
* In 2-3 and 7-3, you can skip the last section by entering the bonus stage. This saves around 15 seconds in total. There are several more bonus stages in the game, but they're not located in places where they'd save time.
* The ending of the -4 stages is triggered as soon as the boss flies off-screen. The further you scroll the screen to the right, the longer it will take for the boss to leave the screen. This saves more time in a real-time speedrun, but still saves 1-2 seconds in a TAS.
* Maybe not exactly a new discovery, but still worth mentioning. It's faster to stay with the stone axes instead of upgrading to the fireballs. The axes have their limitations, such as not being able to destroy stones, which means minor time losses due to manoeuvering and additional lag in some areas. Other than not having to spend time collecting the fireballs (34 frames), the big gain comes at the boss fights. At  close range, you can get 6 axes to connect each jump, while only 5 fireballs can connect per jump. I estimate the total time save to be somewhere around 3-4 seconds.

For more details about some of these points and other observations of the game mechanics (including some useful RAM-addresses), see:
https://kb.speeddemosarchive.com/Hudson%27s_adventure_Island/Game_Mechanics

If anyone decides to study the input file, I believe most of it should be self-explanatory. There are however a few not entirely intuitive technniques that I'll briefly comment on below and that aren't mentioned in the guide either (which was written with real-time speedrunning in mind).

6-4: 
* In the first section, I used a slower movement speed to avoid some lag frames.
* By slowing down during a few frames before the first racoon appeared, it's manipulated to appear earlier than it otherwise would have by going at full speed. In short, slowing down in this spot saves time later on.

7-3: It's possible to break the egg with the axes in order to get on the skateboard sooner, which is technically faster. However, the small gain from this was countered by additional random lag frames later on, so I kept it like this.

7-4: Like in 6-4, I slowed down before the first racoon appeared to manipulate it into appearing at a more desirable time (in this case later).

8-1: Part of the crazy lagfest in section 3 was spent at a lower speed. This reduced the number of lag frames, which more than compensated the time lost due to the slower traveling speed.

8-2: I slowed down slightly before the start of section 3 to get to a specific sub-pixel. This positioning somehow reduced the lag quite a bit on the following island.

8-3: Whenever an axe bounces off a stone/boulder/egg, the next snake will spit poison. I avoided shooting the skateboard egg in order not to trigger the next snake to spit poison (in a very laggy area).

8-4: Again, the spawn of the first racoon was manipulated by slowing down.

!! Possible improvements
There is no object RNG whatsoever in this game. However, random lag frames are very easily introduced (or avoided!) by even mundane input changes. The most significant lag strat involves keeping down the number of objects on screen (including your own weapons), but even actions such as jumping at different frames can have an impact. Even some seemingly inconsequential input changes in a previous stage can impact the outcome much later on. The last frame saved when making this TAS was avoiding a lag frame in 7-1 by changing the victory dance at the end of 1-4... Needless to say, more lag frames could be saved if one knew where to look (or had a lot of time for random testing)...

Other than the lag, the game is a bit too simplistic for there to be any real question marks that I see a potential in exploring. So unless there are any mistakes on my behalf or new discoveries, I struggle to see where to look for additional time to come off. 

!! Credits
Thanks to ”Norihiro Shibata” for publishing a TAS of this game (https://www.youtube.com/watch?v=4rh5LzNy41c ). While it doesn't look like the goal was to squeeze out every single frame of the run, it was great to have as a source of ideas as I was making progress. A special mention goes to the solutions of the platform sections of 3-1, 5-3 and 8-3. The solutions have very tight and specific timing windows to work. I would for sure not have found those on my own. It was hard enough even when trying to copy the solutions frame by frame (although a 30 fps youtube video is admittedly not the ideal source for determining frame-perfect inputs).
