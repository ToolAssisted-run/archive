> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6396M and entered this archive as a voluntary
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

Another entry on my quest to TASing every port of Prince of Persia (cough Myst cough). For this one I chose the european version of the game which contains three crucial differences:

* While the USA version contains all 14 levels present in the original game, the european one contains 4 extra levels (18 in total). This version is therefore more complete than the former.

* Although the PAL version runs at a lower FPS (50), it plays one game frame every 4 emulation frames. The USA version runs at 60 FPS, but plays one frame every 5 emulation frames. The effective in-game FPS is therefore faster for the Euro (12.5) compared to the USA one (12).

* On level 1, the kid starts on a standing position in the USA version (faster) while, in the Euro version, he properly falls from the door.


! Comparison Movie

This movie completes every single one of the 14 original levels faster than the current publication ([1193M]). The addition of the 4 new levels is what eventually makes slower time-wise. See the movie below for a clearer side-by-side comparison

[module:youtube|v=1c-6ctNi3UE]

!! Software + Hardware

! Rom Information

* Name: Prince of Persia (E)
* ROM: Prince of Persia (E).bin
* SHA1: 6E645B791E6E2B84A206DCA6CF47E8F955E60A72
* MD5: BB8DEDE1A266D8C48A8F2EA1E4D12E58

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/quickerGPGX|QuickerGPGX]
* Platform: 
** 2 x AMD Epyc 7763 (128 cores, 256 threads) + 512Gb RAM

!! Strategy

Basically gates don't exist.

Also, when the level exit door is open, you can leave the level using the level entry door, even if it looks closed. I discovered this by accident thanks to the bot, who just found this while exploring less optimal routes. This is only applicable on the new levels as, in all the original levels, the trigger that opens the exit door is always closer to the proper exit door than to the entry door.
