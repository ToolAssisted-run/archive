> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/7199M and entered this archive as a voluntary
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

I recently hosted a [https://tasvideos.org/Forum/Topics/26909|NES Pinball competition], challenging participants to produce TASes that get to 100K in score as soon as possible. I was inspired by this being the [https://www.speedrun.com/pinball?h=100K-Game_A&x=jdrpzex2-5lyw0y84.mlne07jl|dominant category] for this game in SRC. 

Well, I gave it a go with [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus] and got a surprising result. Turns out you can manipulate the CPU into the extremely improbable situation where it is executing a routine situated in RAM which the PPU seems to modify at the same time. As a result, the routine never returns where it should, but instead continues executing RAM -- with the very fortunate result that some code gets executed that just happens to add 100K score. By abusing this glitch, I get to 100K MUCH MUCH faster than the current [https://www.speedrun.com/pinball/runs/mr5qp94y|RTA WR].

Thanks to 100th_Coin for helping me figure out what was going on. He believes this can open the possibility of ACE, but neither of us have delved much deeper into it. Unfortunately, we haven't realized why you cannot continue playing after the glitch.

I have also created a [UserFiles/Info/639084152851077611|1M point movie] using JaffarPlus. This is a somewhat more objective goal because it reaches the actual maximum score before overflow. However, given the popularity of the 100K movie, I think this is more relevant to the community.
Enjoy!

!! Software + Hardware

! Rom Information

* Name: Pinball
* ROM: Pinball (JU) [!].nes
* SHA1: BE348431A9C03D1A588A8363C0094B5A0722D9BE
* MD5: AD809323FE92D0E083BF77CCECAE462E


! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/QuickerNES|QuickerNES]
* Platform: 
** AMD Epyc 9965 (192 cores, 384 threads) + 1536Gb RAM
** Exploration Rate: ~4 Mstates/s
