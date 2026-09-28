> **Imported**
> This run was originally published at https://tasvideos.org/5393M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Trap (Compute's Gazette)
"Trap" takes you to another universe, another dimension. Trap'sworld consists of an array of colored blocks hanging in ink-black space, set against a blanket of distant, sparkling slars.

Two beings inhabit this strange place, each with a geometrical form: a sphere, which continuously bounces from block to block, and a flat square, which lies atop the blocks, blinking patiently. In Trap, you're the blinking square, and your objective is to trap the bouncing sphere and use its kinetic energy for your survival.

The article for this game can be found on page 26 of Issue 59 (May 1988): https://archive.org/details/1988-05-computegazette/page/n27/mode/2up

!!Why TAS This Game?
My continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 15th TAS from this series.

I don't normally make mention of this, but usually the best games to TAS from this magazine are written in Machine Language. The style of writing provides control and play-ability that eliminates hesitation or heavy lag....as BASIC written games usually have. Additionally, these games can be played much, much faster and thus the reason for TASing. 

This particular game was a shock to me, when I saw it running the first time. The developer put a lot of effort into it's presentation, as it was well worth it. On the other hand, I didn't play this game too much due to the increasing difficulty making it hard to play. After I realized that it was very unpredictable...I stopped playing it.

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

!!Effort In TASing
Before I comment on the effort it took to create this TAS, I want to invoke the new [https://tasvideos.org/Wiki/PageHistory?path=MovieRules&fromRevision=69&toRevision=70|Movie Rule] that allows acceptance of this game...due to very special conditions. This game is a first, in regards to a developer announcing options, via external modifications. What do I mean by this? With Commodore computers, anything that is loaded from tape or disk, will normally require an execute command. This game has a built in SYS command that makes it easier to start the game by eliminating the knowledge of the area where it is loaded into memory. Before that execute command is entered, the Commodore is in an open state where anything can be altered. In this case, the magazine article provides instructions on how to change various attributes of the game's operation.

*To adjust the overall speed of the game, type __POKE 2910, n__ where __n__ is a number between 1 and 255. A value of 1 gives the fastest speed and 255, the slowest. The normal speed is about 170. In this TAS, I use the value of "1", via the statement.

;POKE 2910,1

*To control the ball's speed, type __POKE 4211, n__ where __n__ is a value between 0 and 9. Using 0 will result in the ball eventually becoming a gray blur. Using 9 will cause the ball to never accelerate. A normal value is 2. In this TAS, I use the value of "1".

;POKE 4211, 1

*If you want to change the rate at which time decreases, type __POKE 3258, n__ where __n__ is a value between 1 and 255. A value of 1 will leave you with something less than one second to react. Using 255 will let you trap the ball at your leisure. The normal rate is 42. In this TAS, I use the value of "7", because anything less is not playable.

;POKE 3258, 7

Now, as for the effort...it was basically an exercise in RNG as I have normally done with most C64 games. To get the fastest times, you want to trap the ball in the top right corner...as this takes only 4 moves to obtain. The problem is trying to get the ball to cooperate, which I did by changing my inputs to force it to move up that direction. Now, as speed increased...it was more difficult because it was hard to tell where the ball was moving. Additionally, the trapping mechanism was being detected by the game and had to be played around with...because obvious, it wants to avoid landing on a spot that it can't escape from.

!!Game Ending
Because of the blast of speed, it was very difficult to determine when the max speed was "capped". The article is clear on how difficulty increases, where the speed of the ball is sped up every 3 screens. I eventually determined that 24 screens were required to end the speed-up, as all the levels afterwards showed the same timing from beginning to end of each screen.

For those of you who are watching the encode only, set the video to play at the slowest speed so that you can see why this game was a problem to TAS.

!!Human Comparison
I couldn't find any human comparison this time.
