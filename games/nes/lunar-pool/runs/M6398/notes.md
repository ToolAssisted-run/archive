> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6398M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

See [9499S] for a detailed explanation of the TASing process for this game.

See [9501S] for an explanation on the "no friction" category.

Although I had found Lunar Balls movies impressive in their attempt to reach the end as fast as possible, something didn't feel quite right. That is because, in order to reduce frames, they had to dump the cue ball into the pockets (or otherwise play suboptimally) to reduce the score multiplier 'rate". This made sense then, since it reduced score tallying time. After all, TASVideos was all about reducing frames back then and there was little place for alternative categories that pushed in-game goals instead. Things have changed (for the better) now, so I know there is a place for goals like this one.

In this movie, I play each stage trying to find a way to it with the minimum number of strikes possible. In cases where there were many equivalent solutions, I chose the one with the least number of frames. I hope viewers will find this enjoyable due to the bot's ability to find the right move every time, even when interrupted by unending score tallying.

This is actually the first movie I finished for this game. The reason is this is the simplest of all possible goals to bot. Just let the bot evaluate strikes based on how many balls it scored and nothing else. Adding frames to the equation only complicates the reward function and one needs to calibrate it to let the bot know more or less how many frames are worth one ball pocketed. After finishing it, I mustered the courage to go one further step and challenge Bisqwit's original movies.

Notable moments:

* When the palette changes due to a glitch
* Never-ending stage 40

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
** Exploration Rate: ~8k shots/s
