> **Imported**
> This run was originally published at https://tasvideos.org/7132M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Mosaic (Compute's Gazette)
Mosaic is a strategy game you can play against the computer or against a friend. Your goal is to place numbered tiles in order before your opponent. Although the rules are easy to learn, you won't find it easy to win. The wizards and accountants have created a truly ruthless machine.

The article for this game can be found on page 44  of [https://archive.org/details/1988-02-computegazette/page/n45/mode/2up|Compute's Gazette Issue 56 (February 1988)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 106th TAS from this series. 

Never played this game, because I missed purchasing the issue. This was after my subscription ran out and I had to resort to buying issues from "Reid-A-Book" in Anderson, SC. I would have loved this game, as it is an excellent puzzle game.

!!Game Difficulty and Ending
There is no difficulty selection; however, there are 4 different ways to play this game.

*Player vs. Player
*Player vs. Computer
*P'layer vs. Player vs. Computer
*Player vs. Computer vs. Computer

Here, I avoid playing the 1st and 3rd modes, since I want to play one person against the computer only.

!!Effort In TASing (Not BOTed)
This was the very first game I found in the series that used the RND function (Commodore 64's B.A.S.I.C. RNG algorithmn) against the timer control:

;RND(-TI)

For those of you who understand the Commodore architecture, the variable TI is predefined and indicates a running time from the moment the computer is turned on. What this does is give more a "true" random behavior. Some games use RND(-#), which can be replicated over and over...if you turn the computer off and start all over again. At first, I had no idea what was going on, until I examined the code to find this usage. So, I had to change the way I approached this and eventually came up with a method that gave me the results that I feel was the best starting "seed". I was trying to get this game submitted in 2024, but I couldn't figure some things out. In fact, my initial "run-through" was terrible and I could never beat the game. Until recently, I finally figured out what was going on. The sequence of numbers, dealt to the computer, was unbeatable. So after I figured out how to control RNG in this game, I was finally able to find a sequence that gave me the advantage.

So in this run, I play all the modes that use one player against the computer. (The 2nd and 4th selections from above)

!!Human Comparison
Couldn't fine one.
