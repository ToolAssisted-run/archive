> **Imported**
> This run was originally published at https://tasvideos.org/6574M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Match-Em (Compute's Gazette)
Match-Em is a simple matching game designed for young children. The screen displays 16 squares, each with a different letter. Press the
letters on two of the squares to try to match the shapes hidden behind those letters. If you successfully "match-'em," the shape will be drawn at the bottom of the screen, and you will not be able to use those squares again. If you choose a square which has previously been matched, instead of a shape you will see rows of X marks. 

There are eight pairs of shapes to try to match. The game is over when all eight pairs have been discovered. The object is to score as low as possible—you get one point for each guess.

The article for this game can be found on page 86 of [https://archive.org/details/1984-04-computegazette/page/n87/mode/2up|Compute's Gazette Issue 10 (April 1984)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 92nd TAS from this series. 

This is a game that I never knew anything about. Why? I was always interested in the part of the magazine that was categorized as "Games". Here, this was a game that was included for supporting an article on program conversions to other 8-bit consoles. So, the author finally settled down and got to a number of requests to convert a publication in April 1983 of COMPUTE!. Only this time, it was ported over to the Commodore 64 and Commodore Vic-20.

I really like "Classic Concentration" games and this one would have been a good item for my collection. I just hate it that I never found it.

!!Game Difficulty and Ending
There is no difficulty. For the ending, the game will play a jingle and flip over all the cards...with a prompt to play again.

!!Effort In TASing (Not BOTed)
This game was actually a bit of a pain to TAS. This is the first B.A.S.I.C. game I've seen where inputs would alter the layout of the cards.  Let's give an example here.

*First off, this kind of game can be buffered. This is a technique where you can make keystrokes or joystick responses, before the game is ready to consume them.
*While buffering my first pair, I could easily get a match by selecting random cards until I get a correct pairing. Let's say I pick Cards A and B to get a successful match.
*During my second match pairing, I would pick Cards C and D. This would automatically change the cards that were matched with A and B.
*I eventually found out how to get through this problem. Just go ahead and randomly pick cards, as if I had the right selection. Then...the randomness would stop.
*It is worth noting, that this situation only occurred during the buffering of the inputs. Once an input was consumed by the game's code, the layout of the cards remained the same.

Because of this buffering, I was able to end input extremely early for such a small running game. In fact, I was able to end input 365 frames early.

!!Human Comparison
None to be found.
