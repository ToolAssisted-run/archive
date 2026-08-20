> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6486M and entered this archive as a voluntary
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

This is my longest movie so far. It solves all 160 rooms (16 stages x 10 rooms) in the game. 

I came to this way in a rather indirect way. As I was working in implementing DOSBox as core for Bizhawk, I started to fantasize about those old DOS games I used to play and how I could TAS them very comfortably now. Among those games was [https://en.wikipedia.org/wiki/Soko-Ban|Sokoban], a puzzle game where you play as a warehouse worker having to push boxes to their designated places. It was hard and I couldn't beat more than two levels (hey, I was a kid).

So now I thought, I could surely program a very lightweight version of the game in C++, transcribe the levels, and then brute force it using [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]. However, turns out people had that same idea a long time ago and an abundance of [https://ieee-cog.org/2020/papers/paper_44.pdf|spectacularly well optimized] solvers already exist. Then I figured I might as well use those.

So I set up to transcribing Sokoban levels for use on those solvers / optimizers I found. However, transcription took a lot of effort and the glooming thought that perhaps a significant change in the DOSBox core would mean it'll desync in the end made me think this would have to wait. That is, unless I found a similar kind of game for an already well supported console. Then I found this game.

The process went as follows:

* Grab transcriptions of the levels from this [https://gamefaqs.gamespot.com/genesis/586456-shove-it-the-warehouse-game/faqs/18830|Game FAQ]. I had to fix a bunch of them that had transcription errors.
* Use [https://festival-solver.site/|Festival] to solve them all in batch
* Use [https://jsokoapplet.sourceforge.io/|Jsoko] to iteratively optimize the solutions
* Use my own translator that took .sok format solutions to Bizhawk inputs
* In the improved movie ([UserFiles/Info/638788723424797950]) I used YASO 2.153 Optimizer which yielded better results

I know [5781M] followed a similar approach. However, I find it unsatisfying that they only solved the minimal number of rooms to advance. I find it more entertaining to see all levels, including the large ones. There is a relaxing aspect of spending 4 hours watching a very efficient worker do his job with extreme precision.

One little caveat is that, for some stages, I had to skip room 8 to reach rooms 9 and 10, before going back to 8. This is because, for some of the stages, beating room 8 will automatically advance you to the next one and making rooms 9 and 10 unreachable. Very strange progress mechanics.

In any case, I will also probably improve on the any% movie. I'm pretty sure I can cut a bunch of frames off that one, even if I have to build my own optimizer.

!! Software + Hardware

! Rom Information

* Name: Shove It! - The Warehouse Game (USA)
* ROM: Shove It! - The Warehouse Game (U) [!].bin
* SHA1:E4094C5A575F8D7325E7EC7425ECF022A6BF434E
* MD5:2C6A960F66D1C87855424E6528D6EAC6


! Emulator

* EmuHawk 2.10 (Core: GPGX)

! Additional Tools
* Source Transcriptions: [https://gamefaqs.gamespot.com/genesis/586456-shove-it-the-warehouse-game/faqs/18830|FAQ] by Sean Shannon 
* Solver: [https://festival-solver.site/|Festival]
* Optimizer: [https://jsokoapplet.sourceforge.io/|JSoko]
* Second round optimizer: [https://github.com/joriswit/YASS|YASS]
