> **Imported**
> This run was originally published at https://tasvideos.org/6514M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!The 14-15 Puzzle
This is a version of the popular "Slide Puzzle", for the Commodore 64.  The game features 3 different modes, where two have static starting layouts  and one with andomly generated puzzles.

More information can be found in the [https://www.lemon64.com/game/14-15-puzzle|manual].

!!Tools Used
*BizHawk 2.9.1
*Lua Scripting
*C# Coding (Brute Forcing of layouts to get the fastest solution.)

!!Notes for the Judge
To make things a bit easier for judging, please take in consideration the following information.

The game is played in a special order to help end input early. The order is:
* Game Mode 1 (14-15 Puzzle: A starting situation where tiles 14 and 15 have been swapped on a solved solution)
* Game Mode 3 (Random Puzzle: This is a situation where the layout can be one of 2 sextillion combinations.)
* Game Mode 2 (Reverse Puzzle: A situation where all the tiles have been re-ordered in reverse from 15 to 1, having the "blank" tile in the top left corner.)

To confirm the menu selections, please see the following frames for confirmation of numeric key-presses:
* Game Mode 1: 2189
* Game Mode 3: 3012
* Game Mode 2: 3868

!!Effort In TASing (BOTed)
This is a game that I have been working on for about 6 months. It has been BOTed, but in a special way. On the surface, the game rules can be simulated in code and solved to find the fastest solution. This gets around the slowness of the core being used in the C64 emulator; however, this cannot handle the random generation that one mode of the game offers.

Unlike game modes #1 and #3, mode #2 can be randomized by changing inputs before the puzzle is loaded. Until recently, I never had a name for this style of BOTing. Now I call it "Matrix RNG". (This will become obvious when you see the inputs, right before the screen is loaded for the random puzzle mode)

In order to solve the "Random Puzzle", I had to use Lua Scripting to control the emulator into providing me the results that I needed. This is done by automating the inputs to force the layout to be closer to a solved solution. During my analysis of this game, I found that the "setup" is actually "un-solving" the puzzle one tile at a time. This can be observed by watching the layout changes, as you press random keys near the end of the frame ranges where these RNG altering inputs were placed.

Once I got some relevant layouts, I ran them through a C# "Brute Forcing" routine and got my fastest solution..which ended up being 22 moves total.

!!Ending Choice
The end goal is getting each of the puzzle modes solved into a pattern of sequential order...being 1 through 15 from top left to bottom right. In any cass, the blank tile can  e anywhere.

!!Human Comparison
In this case, there is little point to see how a human would solve this, but here is a comparison anyway.
[module:youtube|v=QfL_l7DnUpA]
