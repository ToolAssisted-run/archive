> **Imported**
> This run was originally published at https://tasvideos.org/5434M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Maze-Mania (Compute's Gazette)
Here's a written guarantee that you won't find this game easy or dull. From the start, " Maze-Mania" puts your brain and hand to the test. The object is simple: Travel through the maze and exit. But getting there within the time limit is a rare occasion. 

The article for this game can be found on page 68 of Issue 27 (September 1985): https://archive.org/details/1985-09-computegazette/page/n69/mode/2up

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 16th TAS from this series.

This was one of my favorites. I played it a lot, as it was quite addictive. It was programmed by a repeat coder named Mark Tuttle, which has a number of other fine games through out the magazine's life. What I find amazing is that the crew at "Compute's Gazette" challenged themselves to see how far they could get. The highest level achieved was number 9. I'm not surprised, as my analysis and TASing of this game shows that Levels 8 through 10 are completely unpredictable and completely unfair. It would actually require RNG manipulating in order to set the levels to be playable...as some layouts and block speeds are just too much to handle for a human.

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

!!Game Ending
Here is another game that has a true ending, with a congratulations screen.

!!Effort In TASing
This is the first BASIC written game that I've submitted. Thankfully, this makes it much easier to analyse and understand what is going on with figuring out how to make the TAS faster. This happens to be the 3rd game I've TAS, that was a BASIC sourced game. After seeing the same problems in this TAS, as with the other two, I finally had to sit down and figure out what is going on with controlling RNG. Below are some details that I determined for manipulating this game.

*First off, I need to mention that all my previous submissions were written in pure Machine Language (ML). RNG is completely determined in a different manner than BASIC written games. Instead of calling on the BASIC command, ML programs will scan an address to get a single digit from the last value of the "tick" counter. This is used by applications in different ways to perform different actions....thus the feel of RNG.
*RNG for BASIC games are controlled with the use of the command, RND. In this case, randomization is determined by use of a positive number. In viewing the code, you will see that it is written as "RND(1)". Because of this use, the game cannot be manipulated during play. The parts that are controlled, with this method...are the maze "holes" laid out on the template maze of each screen.
*This game also includes ML routines that are loaded up, after starting the game. Because of this, certainly parts of the game can be controlled in the manner of a purely ML written game. In this case, the moving blocks are controlled by this routine and can be manipulated to have various speeds; although, very difficult to control precisely.
*ML RNG can be controlled by pressing keys or a joystick direction. By doing this, an interrupt is made and the tick value will be different...by the time it is requested for an RNG value.
*BASIC RNG can be controlled by doing a "Pre-load" command, using RND before loading up the game. No matter what the situation is, if a program is calling on the use of RND(1), it will always be the same sequence of randomization. For some games, this has been a flaw and was corrected in future issues...due to it being extremely predictable.

Information about the operation of the RND command can be found via [https://www.c64-wiki.com/wiki/RND|here].

!!Human Comparison
This is not exactly the same game, but is was modified for some unknown reason; however, seems to be more cosmetic and nothing to do with game play. Yet, it still remains faithful to the original and does a great job of showing how a human struggles with it.
[module:youtube|v=RC-7aSBS7qc]

!!Special Thanks
*[user:DrD2k9] for talks about my discovery of controlling RNG with using the RND command.
