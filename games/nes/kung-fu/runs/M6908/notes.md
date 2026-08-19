> **Imported**
> This run was originally published at https://tasvideos.org/6908M and entered this archive as a voluntary
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

Kung Fu is the classic 1-D fighting game for the NES. I've been working on this game intermittently for [https://github.com/SergioMartin86/jaffarPlus/commit/6544539a74d14078fe9019d896461754a14c0041#diff-d52f2ec0c5c1593b095b4ab7946c870ffdd729d9f1324de7e22c1f5245834dc8|3 years] already. Back then, I failed to achieve any improvements because of a confluence of factors (not understanding the game fully, not enough computational power, focusing on the wrong part). But this week I had the patience to look deeper and was able to crack the code.

Turns out some of the boss fights allowed for sacrificing a few frames for the sake of losing even more HP than in the current TAS. With less HP, the bonus screen takes less time to complete, therefore saving time overal. I save 11 frames from the boss in level 1, and 22 frames from the boss in level 3.

Enjoy!

!! Comparison Movie
The following movie compares this submission to [1358M]

[module:youtube|v=5FdyhiYYAT4]

!! Software + Hardware

! Rom Information

* Name: Kung Fu
* ROM: Kung Fu (U) [!].nes
* SHA1: C054A885FB9B00D3F6797A35BA5579F2896A254A
* MD5: 27E5C62C6C169896BF80BAFB6595CEB8

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/QuickerNES|QuickerNES]
* Platform: 
** AMD Epyc 9965 (192 cores, 384 threads) + 1536Gb RAM
** Exploration Rate: ~4 Mstates/s
