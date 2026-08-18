> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6368M and entered this archive as a voluntary
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

I had this game as a kid on one of those bootleged 50000-in-1 carts and would play it on my bootleg Famicom. I didn't really like it back then; it was kinda hard and there were just too many stages. As a grown-up TASer, I always pondered the idea of TASing this game, but it still seemed like a very hard challenge for a couple reasons.

First, the current solution by Bisqwit seemed already very optimized. It wasn't clear I could come up with a better solution. Second, my tasing bot ([https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]) uses a breadth-first approach to exploration, which is entirely the wrong approach for this kind of games. That is, games where the action (hitting the cue ball) and knowing its outcome (how the table ends up) are separated in time by several hundred frames.

In the end, I decided to give it a try but I knew I had to come up with a different approach. For this, I developed [https://github.com/SergioMartin86/LunarBot|LunarBot], a hybrid depth-first-breadth-second brute force bot. Here, I consider strokes instead of frames for the outer breadth-first exploration. Within each stroke, I advance as many frames as necessary to know its outcome. After each stroke, I keep the combination of angles/power that scored the most balls and had least amount of frames.

Those who read Bisqwit's submission notes in previous publications know there are many more factors to this challenge. Score rate and tallying is whole drama that I had to factor into the bot. This tallying forces the player to make "suboptimal" shots, just to reduce the rate and prevent bonuses. I went into great lengths in adding heuristics and calibrating the reward function to properly handle this. (For details, see the [https://github.com/SergioMartin86/LunarBot/blob/main/games/nes/lunarBall/explorer.cpp|code])

Compared to Bisqwit's setup 15 years ago, I count with a much stronger hardware resources and a much more refined software/emulation setup (quickerNES is much faster than anything available back then). This play a determinant role in this taking me a few weeks, compare to the months it took him. 
Nevertheless, I do feel like making this movie was, above all else, a personal chess-like battle of algorithms.

I purposefully went into this not wanting to know the tricks that Bisqwit had applied and only took inspiration from his movie encode. I did not read his sub notes nor did I take a look at his code. I believe the end result came down to the heuristics and daring optimization techniques we both applied. At the end of the day, I truly respect his work and am honored to be the one to obsolete it.

!! Comparison Movie

This movie compares [1565M] with this submission. The old movie finishes certain stages faster. This is because the initial conditions carried on from the previous stage has an effect on the best possible solution. Also emulation differences make it so that executing a shot under the same conditions (angle, position, power, power increase/decrease direction) would result in different outcomes. 

[module:youtube|v=V2Sv4MZmJ10]

!! Software + Hardware

! Rom Information

* Name: Lunar Ball
* ROM: Lunar Ball (J) [!].nes
* SHA1: AA5C574A4743991A3523DFD78A39D782BEDE262A
* MD5: 26F1B77980A216767EA63C41397476E5

! Emulator
* EmuHawk 2.10 (Core: QuickerNES)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/LunarBot|LunarBot]
* Routing Core: [https://github.com/SergioMartin86/QuickerNES|QuickerNES]
* Platform: 
** 2 x AMD Epyc 7763 (128 cores, 256 threads) + 512Gb RAM
** Exploration Rate: ~15k shots/s
