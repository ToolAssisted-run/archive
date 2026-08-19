> **Imported**
> This run was originally published at https://tasvideos.org/7061M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

__THIS...__ is the most extremely re-recorded movie in history. Keep scrolling to see some of the most mind-blowing numbers ever in TAS

%%TOC%%

!! Introduction

Last year I hosted a [https://tasvideos.org/Forum/Topics/26462|Pac-Man competition], challenging participants to produce a 5-minute TAS to achieve the highest score possible in Normal Mode. The outcome was amazing, with the top two contenders (WarHippy and TwistedEye) [https://tasvideos.org/Forum/Posts/538871|fighting head-to-head] to the bitter end. On the other hand, my bot-based own movie, produced with [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus] had failed to beat any of the submissions! I was flabbergasted!

After extensive work and analysis, I finally found out what the problem was. Turns out I had programmed JaffarPlus to "greedily" pursue score at all costs. This meant that the bot would prioritize short-sighted bonuses (e.g., capturing ghosts), relegating the less rewarding activities (e.g., eating pellets) behind. However, eating the most pellets early turns out to be the correct long-term strategy, as it accelerates the game, enables more rewarding fruits, and spawns more ghost-eating pellets. I believe TwistedEye understood this well, as his movie focuses on pellets early on, falling way behind WarHippy's movie for a while -- that is, until the end where his early strategy paid off just in time. See the figure below to see how these scores compared as frames advanced.

[https://i.ibb.co/G4v48KfP/chart.png]

So I configured JaffarPlus to pursue score, yes, but also assign extra value to pellets and fruits eaten. In this way, I forced it to pursue a hybrid between WarHippy and TwistedEye's strategies. This, combined with the largest job run I even launched, resulted in a movie that crossed the 750k score mark. How big of a job, you ask? well...

!! The BIG Job

* Running Time: 29 days, 23 hours, 37 minutes, 56 seconds.
* Re-record Count: 9,007,912,619,000 (9 quadrillion)
* Performance: ~3.5 Mrerecords/s 
* State Database: 141.95 Mstates (1.2Tb)
* Energy Used: ~500 kWh (1.8 gigajoules, 200 USD)

!! Software + Hardware + Manware

! Rom Information

* Name: Pac-Man Championship Edition
* ROM: Pac-Man - Championship Edition (USA, Europe) (Namco Museum Archives Vol 1).nes
* SHA1: 4CBAD49930253086FBAF4D082288DF74C76D1ABC
* MD5: EE8BC8BAED5B9C5299E84E80E6490DE6

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/QuickerNES|QuickerNES]
* Platform: 
** AMD Epyc 9965 (192 cores, 384 threads) + 1536Gb RAM

! Improvements

WarHippy found a few oversights in the botted route and re-worked much of it using heuristics and strategies discovered by Twisted_Eye pushing this movie up to 772,900 points!
