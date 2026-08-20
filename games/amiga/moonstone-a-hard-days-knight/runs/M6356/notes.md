> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6356M and entered this archive as a voluntary
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

I always wanted to do a TAS of this amazing game, but I was taken aback for two reasons: (1) I would have to use libTAS+PCem to emulate its DOS version, and; (2) The RNG's effect and variability is too high to even come close to an optimal without serious manipulation.

Well, the first obstacle was cleared when [https://tasvideos.org/Users/Profile/feos|feos] integrated the new UAE core into [https://tasvideos.org/Forum/Posts/533779|Bizhawk 2.10]. This allowed me to TAS the Amiga version of the game, with all the comforts of TAStudio.

The second obstacle (RNG), however, was still there. RNG determines every single important aspect of the game: how many enemies you find in each lair, its rewards, key locations, item locations and the moonstone phase. The variance in routing, and consequently the time taken to complete, is huge given two different RNG seeds. The task seemed impossible to fulfill at first.

So I started TASing this game without a plan, trying to figure out how would I proceed with RNG manipulation. Turns out this wasn't needed in the end. The VERY FIRST seed I tried already contained a setup among THE MOST INSANEST and BESTEST possible (see explanation movie). The rest is history.

!! Explanation movie

[module:youtube|v=JPLJAGdTMUY]

!! Software + Hardware

! Rom Information

* Name: Moonstone - A Hard Days Knight (1991)(Mindscape)

* ROM: 
Unfortunately I couldn't find an original copy of the game, so I used a cracked one. I try to find one with the least amount of crack artifacts (loader imagery, sounds, etc). I think this one does a pretty good job:

%%SRC_EMBED
  * Moonstone - A Hard Days Knight (1991)(Mindscape)(Disk 1 of 3)[cr].adf - SHA1: 3f043de0017018bc6e16f099f26ad89e2432da6
  * Moonstone - A Hard Days Knight (1991)(Mindscape)(Disk 2 of 3).adf - SHA1: 2e852f51a175281f84881a5b0a75d262caeca7d
  * Moonstone - A Hard Days Knight (1991)(Mindscape)(Disk 3 of 3).adf - SHA1: a4f264122eb6808c8a31a4cfd6144e4aba39e3ef
%%END_EMBED

You will need to create a multi-disk descriptor like this one:

%%SRC_EMBED
<BizHawk-XMLGame System="Amiga" Name="moonstone">
  <LoadAssets>
    <Asset FileName=".\moonstone\Moonstone - A Hard Days Knight (1991)(Mindscape)(Disk 1 of 3)[cr].adf" />
    <Asset FileName=".\moonstone\Moonstone - A Hard Days Knight (1991)(Mindscape)(Disk 2 of 3).adf" />
    <Asset FileName=".\moonstone\Moonstone - A Hard Days Knight (1991)(Mindscape)(Disk 3 of 3).adf" />
  </LoadAssets>
</BizHawk-XMLGame>
%%END_EMBED

! Emulator

* EmuHawk 2.10 (Core: UAE)

! Routing Bot

None. This is manual TAS.
