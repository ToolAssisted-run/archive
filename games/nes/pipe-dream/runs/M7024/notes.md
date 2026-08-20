> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/7024M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Introduction
Pipe Dream (a.k.a. [https://en.wikipedia.org/wiki/Pipe_Mania|Pipe Mania] is a 1990 puzzle game for the NES where you are tasked to build a pipeline using the pieces given to you at random (Tetris-style). Each level has a requirement for the length of the pipeline -- if you reach it, then you pass the level. Stages have different complications (pre-placed pieces, holes in the wall, end pieces) that make the gameplay more interesting. 

[https://i.ibb.co/R17v8qN/gameplay.png]

The game has a time limit. Once the initial grace period expires, ''flooz'', a white-ish liquid, will start flowing through the start piece (marked with an S). If the flooz reaches the end of your pipeline before you reach the required number of pieces, you will lose a life. As flooz passes a piece, you will receive points that count towards your score.
The general strategy for scoring in this game goes as follows:

* Try to place as many pieces as possible in advance before the grace period runs out.
* Press "Select" to accelerate the flow of Flooz as soon as possible for double points.
* Try to get as many 4-way crossings as possible: they grant huge bonuses that multiply the more crossings you get.
* If you end your pipeline on the ending (E) piece, you will get a 2x multiplier on your bonus.

In this movie, I used [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus] to try and achieve the highest score possible on a single level at the hardest difficulty: Game "C", Level 16, Speed 16. To achieve this, I configured Jaffar to (1) automatically detect all the incoming pieces (determined at level start), (2) run the highest scoring solution, and (3) applied the solution manually, wasting the least amount of time.

Here I get 8414850 points, plus 114600 bonus points which are not accounted for because the game simply crashes!

Enjoy!

!! Software + Hardware

! Rom Information

* Name: Pipe Dream
* ROM: Pipe Dream (U) [!].nes
* SHA1: 7AE08F6C3358B434D2782D646482FA37BC3FBE21
* MD5: 6FF5C5DA9F7FF2600E18F0F168CD8389


! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
