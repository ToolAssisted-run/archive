> **Imported**
> This run was originally published at https://tasvideos.org/5440M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Going Up? (Compute's Gazette)
The object of "Going Up?" is simple: Climb as high as possible in a towering high-rise building. The underlying difficulty in all this, however, is that all the elevators have gone berserk, so you can ascend only one floor at a time.

The article for this game can be found on page 30 of  [https://archive.org/details/1987-06-computegazette/page/n31/mode/2up|Issue 48 (June 1987)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 20th TAS from this series.

Whenever I got a new magazine, I was always excited when the one of the games was shown on the cover. Usually this meant that it was something to show off. Well, it was a decent game; however, this wasn't exactly my type of game. On the other hand, it was something that I liked playing enough. Being written entirely in machine language, it was certainly going to be tons better than the BASIC games published.

Previous Compute's Gazette submissions include (In order of submission):
*[4449M|Astro-Panic!]
*[4805M|Royal Rescue]
*[5046M|Miami Ice]
*[5179M|Chopper 1]
*[5235M|Spike]
*[5314M|Heat Seeker]
*[5317M|Omicron]
*[5320M|Alien Armada]
*[5319M|Star Dragon]
*[5326M|White Water]
*[8332S|Space Gallery]
*[8340S|Bagdad]
*[8361S|Race Ace]
*[8379S|Quolerus]
*[8385S|Trap]
*[8407S|Maze-Mania]
*[8410S|Balloon Blitz]
*[8416S|Bowling Champ]
*[8418S|Circuits]

!!Game Ending and Difficulty
This is a looping game. Difficulty amasses each level, by increasing the speed slightly to the elevators. In this case, Level 19 is the last level that the speed increases. I've included the following for analysis:

*[https://tasvideos.org/UserFiles/Info/638244368335680688|BK2] that plays all the way to level 22
*Address 5712 shows the current level and can be used to force any level you want.

When using my alternate BK2 file, the previous level's inputs help carry it all the way through, with minor modifications...if copying from Level 19 to help with any levels thereafter. You will notice that you might have to adjusted a frame from place to place. This is because the game may have a starting point for the elevator that is one pixel off, due to the offset of a sprite carrying around from its last position.

!!Effort In TASing
There wasn't much to TASing this, since it was easy enough to take risks and reverse any situation that doesn't work out successfully. 

There is only one situation that I feel is worth noting though. There are a few situations where you see that I "clear" an elevator, yet stop as it passes by. This is due to the character's walking animation having a larger width, and causing collision with an elevator. So it becomes necessary to wait a moment so that the sprite animation doesn't cause a death.

!!Human Comparison
I'm glad that I've seen this video before, because I wouldn't been able to find a one of this game. "Going Up?" was embed in the video, so I included the timestamp where it starts.
[module:youtube|v=hgYQmBzlA3E]
