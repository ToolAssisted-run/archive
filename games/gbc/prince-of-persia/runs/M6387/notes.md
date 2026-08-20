> **Imported**
> This run was originally published at https://tasvideos.org/6387M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Introduction

I've been wanting to do a TAS of this game for a while, so I spent a few days adapting [https://github.com/SergioMartin86/quickerGambatte|quickerGambatte] as emulation core for my bot. Shortly after starting working on this movie, [https://tasvideos.org/Users/Profile/GMP|GMP] sent my a [https://www.youtube.com/watch?v=yAxdhthSrgg|youtube link] to TAS by [https://tasvideos.org/Users/Profile/TimmyAkmed|TimmyAkmed] and NintendoHardGamer that blew my mind.

Decided to build on their research, I contacted Timmy through Discord. He was glad to help me with some details I was missing (I only had the video, not movie files). Although all the inputs on this movie are mine, this movie is so heavily based on their route that I have to include them as co-authors.

The key glitch of this movie is left-facing wall/door clipping. On a very precise frame of the right turning action, if you input the correct buttons, collision is disabled and you can glitch through doors and gates.  If you clip through a wall and fall through the bottommost screen, you enter the 'glitch' room (-1). To the left and the right are 'glitchier' rooms that contain myriad exit triggers. These are the keys to quickly skipping every level.

! Comparison Movie

[module:youtube|v=XqWztagXzHI]


The main time loss in my movie is in level 6, where somehow the kid picks up a sword. This seems unavoidable and causes a ~100 frame lost compared to the old movie. I could not find whether this is an emulation difference, or it had to do with past actions in previous levels. I can live with either of them, since emulator diffs are tolerable, and my previous levels are cumulative faster than this loss.

!! Software + Hardware

! Rom Information

* Name: Prince of Persia (USA, Europe) (En,Fr,De,Es,It)
* ROM: Prince of Persia (USA, Europe).gbc
* SHA1:EF2F6402E8EF367273200E3B07F310EBD80CCDC2
* MD5:AFEEC69D5BA3AFA3CE2279FCDA944576

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/quickerGambatte|QuickerGambatte]
* Platform: 
** 2 x AMD Epyc 7763 (128 cores, 256 threads) + 512Gb RAM
