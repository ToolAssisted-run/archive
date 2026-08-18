> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6378M and entered this archive as a voluntary
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

A natural continuation of my work with off-road racing games (see: [5294M]), this time for its SNES port. I really enjoyed botting this game, with all its quirks.

!! Category Choice

This game contains 16 different tracks. Each of them contain 4 variations: forward/backwards direction, and with/without hay bales. This brings the total number of distinct races to 64, which cycle around once the race index goes back to zero. A detailed information can be found in this [https://www.speedrun.com/ivan_ironman_stewarts_super_off_road_snes/forums/xmyy1|forum post].

In the [https://www.speedrun.com/ivan_ironman_stewarts_super_off_road_snes|SR leaderboards] RTA players choose the faster goal of maximizing stats and getting 99 nitros. Since I had no problem with longer goals (because I am TASing), I chose instead to TAS all those 64 variations, getting all upgrades along the way. There is nothing else about this game, so this can be considered full completion.

!! Software + Hardware

! Rom Information

* Name: Super Off Road (USA)
* ROM: Super Off Road (U) [!].smc
* SHA1:1784C53C1B60047337109A5A9BF6A638D77B4219
* MD5:0C1CC5369A31C988858A087598BAB9C3

! Emulator

* EmuHawk 2.10 (Core: Snes9x)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/QuickerSnes9xS|QuickerSnes9x]
* Platform: 
** 2 x AMD Epyc 7742 (128 cores, 256 threads) + 384Gb RAM
** Exploration Rate: 0.27 Mstates/s 

!! Strategy

There is a money/shop component that requires some planning ahead. I decided to pursue engine performance first, as I reckon that would have the largest effect if bought early on. 
I'm pretty sure some deeper strategic planning might result in a faster movie, but we'll see if somebody wants to take that challenge.

Unlike the NES variant, bonuses (turbos and cash) are much harder to get along the way, so I decreased their importance in the bot's reward function. This movie goes for pure driving skills and only eventually got something along the way.
