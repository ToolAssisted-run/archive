> **Imported**
> This run was originally published at https://tasvideos.org/5583M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Basketball Sam & Ed (Compute's Gazette)
What better way to score a goal than to go through the hoop yourself? This delightfully clever arcade-style game for the Commodore 64 is guaranteed to provide hours of entertainment! for young or old. Included are one- alld two-player modes. Excellent playability and outstanding graphics are sound make "Basketball Sam & Ed" a must for any game lover. 

"Basketball Sam & Ed" is a whimsical version of a one-on-one basketball that can be enjoyed by the whole family, young and old. Although the game is most fun when played by two people, a computer opponent is always ready for the challenge.

The article for this game can be found on page 53 of [https://archive.org/details/1987-07-computegazette/page/n54/mode/2up|Compute's Gazette Issue 49 (July 1987)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 30th TAS from this series.

Dude! I certainly remember this game and was quickly drawn to a number of games in this issue. With "Basketball Sam & Ed", I was blown away. This game provided, as said in the article, many, many hours of game play. Even though this TAS shows a complete blow-away, it certainly was not the case for any human that tried it. In fact, the AI was clever enough to challenge any player for a win.

Previous Compute's Gazette submissions include (In order of submission):
|1|[4449M|Astro-Panic!]|2|[4805M|Royal Rescue]|
|3|[5046M|Miami Ice]|4|[5179M|Chopper 1]|
|5|[5235M|Spike]|6|[5314M|Heat Seeker]|
|7|[5317M|Omicron]|8|[5320M|Alien Armada]|
|9|[5319M|Star Dragon]|10|[5326M|White Water]|
|11|[8332S|Space Gallery]|12|[8340S|Bagdad]|
|13|[8361S|Race Ace]|14|[8379S|Quolerus]|
|15|[8385S|Trap]|16|[8407S|Maze-Mania]|
|17|[8410S|Balloon Blitz]|18|[8416S|Bowling Champ]|
|19|[8418S|Circuits]|20|[8421S|Going Up?]|
|21|[8433S|Space Dock]|22|[8450S|Saloon Shootout]|
|23|[8451S|Sno-Cat]|24|[8455S|Queens' Quarrel]|
|25|[8458S|Stronghold]|26|[8472S|Lincoln Green]|
|27|[8480S|Disc Blitz]|28|[8485S|SuperSprite|]|
|29|[8538S|Dunk]|||

!!Game Ending
As with the real game of basketball, this game follows the same 4 quarters of play. Even though each quarter is clocked with "10:00", it runs about 4 times faster. So, since this game has a time limited...the only option was to go for "Maximum Score".

One of the goals that was not going to accept, was allowing the computer to score. Achieving a score of 284-0 (not shown in the existing encode), was extremely difficult and took a few weeks to accomplish. 

!!Effort In TASing
To start off with, this was a very challenging effort. I went through this TAS multiple times. Each time I did so, I learned more about how the CPU responded to my inputs. The last run through was quite vexing and tired me out tremendously.

Now to be clear, I play as "Sam"...the red basketball. It is my responsible to find a way to get myself through the hoop. Don't confuse the goal of this game with trying to use the opponent to score with. During all this, the CPU will try and take advantage of your position to catapult itself by any means to score against me.

Now because this is an 8-bit and very old game...you would think that the calculations of movement were strictly based off of a pixel placement only. Now I can't prove this, since I have dug into the code, but I do believe that this game tracks the placement of each player with a partial sub-pixel value. I say this, because the same strategy, with exact positioning, can be applied and will behave differently on each attempt. This is certainly what made this game very hard to control for obtaining this score and preventing the CPU from scoring.

So, why didn't I decide to max out the score with the opponent? Obviously it would have yielded a much higher score...but where is the challenge in that? This run takes the hard road of trying to out-wit the CPU for a blow out score of 284-0.

!!AI, not RNG
This game absolutely is a rare one, where RNG is not the controlling factor on the opponent's movement. Basically, RNG on a C64 (ML Written games) can be altered by applied inputs or pressing keys. Well, I eventually saw that my placement and movement direction can faithfully reproduce the CPU's response. For instance, if both basketballs are walking...you can jump and the opponent will stop momentarily. If you are a certain distance from the opponent, and you are falling, the computer will perform a running jump to get a boost from you. If the opponent is within close proximity...it can aimlessly wander around, waiting for you to fall. Eventually, I found that the responses from the CPU are more favorable when trying to score in the middle goal....mainly because it would line directly beneath me and giving me boosts over and over. The more this occurred, you'll notice that "Sam" will start to veer slightly to the the left or right.

!!Human Comparison
I had to examine this run, to figure out what was going on...but this is the best example I can find where "Sam" was playing against the CPU. I was confused at first, but I think the player though the goal was to put "Ed" through the goal. But...I can see that the movement of "Ed" is the CPU and this was a good example of how the opponent can quickly score on a human.
[module:youtube|v=L9e2TE75KgI]
