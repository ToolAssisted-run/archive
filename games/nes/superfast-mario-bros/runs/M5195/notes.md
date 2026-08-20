> **Imported**
> This run was originally published at https://tasvideos.org/5195M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

[https://i.ibb.co/L5nnqys/fast-img.png]

This movie builds on top of the recently published [5127M]. I (eien86) didn't quite pay attention to it while it was being processed because I was working on the Prince of Persia TAS. Once I noticed this romhack, I couldn't help but give it a go. What a piece of fun it was.

Thanks to [https://tasvideos.org/HomePages/Denial140|Denial140] for finding 11 more frames, mainly with the wrong warp in 8-4c. Also to negative seven and chatterbox for their work in the previous movie.


!! Software + Hardware

! Rom Information

Base Rom: Super Mario Bros. (JU) (PRG0) [!]
* SHA1:FACEE9C577A5262DBE33AC4930BB0B58C8C037F7
* MD5:8E3630186E35D477231BF8FD50E54CDD

Hack: Superfast Mario Bros.
* Link: [https://www.romhacking.net/hacks/7571/]
* SHA1: C915DA0B19010E67520508BB4950D6D3B172D77D
* MD5: 28EE68B27CC3315B937878651DA7E8E8

! Emulator

* EmuHawk 2.8.0 (Core: NesHawk)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickNES
* Platform: 'The Jaffanator' - AMD Ryzen Threadripper 3990X (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.2M States/s)


!! Comparison Movie

[module:Youtube|hidelink|v=Ga8SRMIyTYM]

!! Timing Table

%%SRC_EMBED
                       Old              New              Diff       
    World       Stage    Initial   Total     Initial     Total    Stage   Total
     Boot         0        62         0        61         -1       -1   
      1           1        62       307        61        307        0     -1
  Transition              369        65       368         65        0     -1
      1           2       434       414       433        413       -1     -2
  Transition              848        27       846         27        0     -2
      4           1       875       470       873        470        0     -2
  Transition             1345        65      1343         65        0     -2
      4           2      1410       168      1408        160       -8     -10
  Transition             1578        36      1568         36        0     -10
      8           1      1614       134      1604        134        0     -10
  Transition             1748        24      1738         24        0     -10
      8           2      1772       776      1762        762      -14     -24
  Transition             2548        27      2524         27        0     -24
      8           3      2575       459      2551        437      -22     -46
  Transition             3034        24      2988         24        0     -46
      8           4a     3058       453      3012        442      -11     -57
  Transition             3511        24      3454         24        0     -57
      8           4b     3535       165      3478        164       -1     -58
  Transition             3700        26      3642         26        0     -58
      8           4c     3726        78      3668         78        0     -58
  Transition             3804        26      3746         26        0     -58
      8           4d     3830        70      3772         59      -11     -69
  Transition             3900        26      3831         26        0     -69
      8           4e     3926       138      3857        138        0     -69
  Transition             4064        23      3995         22       -1     -70
      8           4f     4087        63      4017         65        2     -68
  Movie End              4150                4082                         -68
%%END_EMBED

A +- 2 frames are lost/won on emulator differences. We argue that any obsoleting submissions need to be done with Bizhawk to avoid bad CPU/PPU timing and lag detection emulation to distort the movie length.

!! New Tricks

! Fake Vine

For some reason, it is possible to fool the game into believing there's a vine in the middle of the level by pressing L+R at a precise moment, with the effect of having Mario shoot up to the right, saving a bunch of frames.

[https://i.ibb.co/z5VxRww/fakevine1.png]
[https://i.ibb.co/1zBHQch/fakevine2.png]

! New Wrong Warp 

In 8-4d it is faster to take the wrong warp (exactly as the in the original SMB any%)

[https://i.ibb.co/prpZHhL/wrongwarp.png]

! General Optimizations

Better execution all over the place, especially 1-2

GOTTA GO FAST
