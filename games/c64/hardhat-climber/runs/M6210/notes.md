> **Imported**
> This run was originally published at https://tasvideos.org/6210M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Hardhat Climber (Compute's Gazette)
You are standing at the bottom of four levels of girders, connected by ladders. At the top is a pile of 12 barrels and scattered along the girders are toolboxes. The object is to walk around the girders and pick up every toolbox while avoiding the barrels that roll down at you. If you pick up all the toolboxes you are rewarded bonus points.

The article for this game can be found on page 82 of [https://archive.org/details/1984-01-computegazette/page/n83/mode/2up|Compute's Gazette Issue 7 (January 1984)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 86th TAS from this series. 

This is a magazine that I can't forget. I remember getting it in the mail and wanting to quickly type this game in. Why? Well...it reminded me of Donkey Kong. Obviously, I didn't have the money to buy the real thing, so I was hoping that this game would have satisfied me. Even though there are similarities, its not quite the same thing...but it was fun getting to experience it.

!!Game Difficulty and Ending
There is no selection of difficulty. As for increasing difficulty, from screen to screen, there is none...even though the article says that it does.  In a lot of the earlier games, authors seemed to have made big statements. A lot of these comments ended up being fluff. In this case, I modified the code to put the level up higher and nothing was different. :(

In order to prove this, I have uploaded a test BK2 file, which adds two lines to override the default values for two variables that increase after the completion of each screen. 

;41 SC=20

;42 E1=20

Here is a BK2 file for a judge to analyze my claim: https://tasvideos.org/UserFiles/Info/638629130640179589

!!Effort In TASing (Not BOTed)
There are a few techniques that I use to optimize this game, where I probably did close to 3 dozen run-throughs:

*Discovery of the best RNG:  Because this game was written in B.A.S.I.C., it uses the RND function...which if you use it before running the game, it changes where the RNG starts getting picked from in RAM. If you have followed me on this technique, I have used this many times to affect how randomly placed objects will vary on start up. Here, I find a route that keeps me from back-tracking and shortens my path greatly, over other seeds.
*Not Holding The Inputs: Because of other movement on the screen, it is always best not to "bog down" the code with unnecessary frames with inputs. By placing them on specific frames, the game speeds up a bit.
*Walking/Jumping: In this game, jumping is faster than walking; however, you cannot jump through the entire game. Some toolboxes are spaces in a way that you have to walk...otherwise, you'll jump right over them. So a combination of the two must be used to maximize my effort to the fastest ending that I could find.



!!Human Comparison
[module:youtube|v=Y5Kfr_y6iAU]
