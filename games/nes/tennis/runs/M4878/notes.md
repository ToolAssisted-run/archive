> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4878M and entered this archive as a voluntary
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

Nobody:

Absolutely nobody:

me: Here's a TAS for NES Tennis

Yeah, so I wanted to do something different from all the movies I've been working on. I was curious to see how a bot can exploit a game so simple as NES Tennis, and indeed some exploits were found. In particular, movements can affect RNG such that serving can always be manipulated to be aces, and returns can always cause the opponent to either let the ball pass or make an unforced error. 

I choose level 5 of difficulty. Here the game makes you beat a (normally) relentless CPU opponent twice on a best-of-3 set match. Repetitive yes, perhaps even boring. But I had a blast working on it.

! Objectives

* Hardest Difficulty
* Heavy luck manipulation

!! Software + Hardware

! Rom Information

* Name: Tennis (JU) [!]
* SHA1: 80D99C035E6A5AB9718E413EC25CBE094F085962
* MD5: 32FB31AE20F0D01BC74BAAD9F3A9672B

! Emulator

* EmuHawk 2.8.0 (Core: QuickNES)

I tried resyncing to the NesHawk core, but immediate desyncs happened. I believe this is due to the way RNG is managed in this game. I identified the value range [[0x500 - 0x503], which seems to diverge depending on the emulator. I estimate that this is an RNG value that is updated with PPU/CPU timing, leading to desync. 

With a RAM transplant at frame 128 (127 and before fails -- this is exactly at the moment of serving) from QuickNES to Bizhawk, it is possible to replicate  the opponent mistakes also in BizHawk More research would be worth doing here, but this is as far as I took it.

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffar|Jaffar]
* Routing Core: QuickNES
* Platform 1: AMD Ryzen Threadripper 3990X Processor (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.4M States/s)
