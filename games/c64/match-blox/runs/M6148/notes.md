> **Imported**
> This run was originally published at https://tasvideos.org/6148M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Match Blox (Compute's Gazette)
"Match Blox" is a solitaire puzzle game in which you try to solve any of the give variations in the fewest number of moves possible. Each game is played on a 3x3 matrix of squares and each square is colored blue or orange. The object is simple: Manipulate the squres until they match the pattern displayed.

The article for this game can be found on page 50 of [https://archive.org/details/1986-11-computegazette/page/n51/mode/2up|Compute's Gazette Issue 41 (November 1986)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 83rd TAS from this series. 

Again, this was another magazine that I never had.  Not sure if I really missed out on casual play here, but apparently...I missed out on some great logical challenges. Regardless of how I would have felt back then, I can say that I'm more excited about this game (in terms of TASing) than back then.

!!Game Difficulty and Ending
This game doesn't have a selection of difficulty, as it is a pure logic game. The ending is solving all 5 available puzzles, which afterwards...its a repeat.

!!Effort In TASing (BOTed)
This was one of the most exciting TASes I've created. Why? Because this is the first time that I have created a TRUE Brute Force solving program...where the possibilities could be enormous for a human. Here, my brute forcing was done externally against the emulator. The game doesn't have any AI or RNG responses, so the given puzzle stands to be solved in a purely logical way. 

My approach was to write a C# application to accomplish this. It took me about 1 1/2 hours, which afterwards...the results were shockingly fast and delivered the most minimal moves possible. The only thing, outside of these brute forced solutions, were to apply them against the 5 different solving patterns. Doing so in the right order optimized my efforts an additional 179 frames. So I am extremely happy about the outcome here.

---!!Solutions
This is the order that I solved the puzzles in. This order ended up behind the fastest for my "Brute Force" to solve.
|Puzzle Selection (Order of selection)|Puzzle Name|Solving Moves|Brute Force Attempts|
|5|5 Points|2,3,9|113|
|4|4 Corners|7,5,2,1|510|
|3|No Center|4,5,1|82|
|1|Uni-Color|1,5,7,9|373|
|2|Cross|2,4,5,6,9,5,8|28128|---

!!Solutions (Updated)
This is the new order that I solved the puzzles in. This is an improvement that came from trying more RNG seeds.
|Puzzle Selection (Order of selection)|Puzzle Name|Solving Moves|Brute Force Attempts|
|2|Cross|1,3,2|87|
|5|5 Points|2,4,1|142|
|3|No Center|5,4,9|171|
|1|Uni-Color|2,7|27|
|4|4 Corners|6,5,4,1|1024|

!!Human Comparison
Nobody seems to know this game or have played it. :(
