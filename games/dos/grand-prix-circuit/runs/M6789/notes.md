> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6789M and entered this archive as a voluntary
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

Grand Prix Circuit is an 1988 DOS oldie published by Accolade. It's one of, if not the, first racing games I've ever played, so it was a big deal for me at the moment. It hasn't grown old very gracefully though, but still I felt like honoring its legacy with a TAS.

Here I choose the hardest difficulty (no ABS, traction control, manual, engine can blow up, etc), one lap per race (no need for pit stops) and achieve pole position + first position in all the championship's races. Although it is possible to finish the TAS faster by abandoning a selection of the largest races and manipulating the RNG to distribute point among the opponent pool, I thought this both hard and silly to do. Winning all races is best for a nice entertaining TAS.

During the races, I exploit a quirk of the game's traction loss simulation. Whenever you take a curve too fast, the game starts to spin you around, but always determiniscally to the left. So you can induce a slip to turn the car much faster to the left than if you were to take the curve slowly.


!! Software + Hardware

! Emulator

* EmuHawk 2.11 (Core: DOSBox-X)

! ROM

https://www.goodolddays.net/en/diskimages/?id=2704
