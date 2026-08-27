> **Imported**
> This run was originally published at https://tasvideos.org/6512M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

[https://www.romhacking.net/hacks/6067/|Super Mario Bros. Special: 35th Anniversary Edition (v1.3)] is an SMB hack by Frantik.

This TAS is 133 frames faster than the [5301M|published TAS]. To be accurate, we changed the branch name to "all levels", because [7994S|here's the true any% TAS of this game].

[module:youtube|v=QGbtkM5PXys]

This project was started by Kzwbz in January, 2023. The last time save was found in November, 2023. We spent the rest of the time improving entertainment.

!!Improvements
||Stage||Time save (frames)||Comments||
|3-1|21|By going through the wall with an invisible coin without slowing down.|
|4-1|21|By vine glitch & special ending.|
|7-2|84|By going into the top of the pipe, instead of the left side.|
|8-4|7|Better enemy optimization.|
|Total|133||
Most of the improvements are found or first implemented in this TAS by HappyLee.

! Kzwbz's comments
Hi, I'm Kzwbz. I don't really have a lot of ideas for this TAS, but one of the things that surprised me.

At the end of 2-2, Mario comes out of the side of the pipe instead of inside the pipe. My friend and I looked into this a little bit and came up with the general principle.
First of all, Mario's entrance is controlled by the address $7FFE, which in most cases has a value of 0, but at the end of 2-2 it changes to 1. This causes Mario to come out of the pipe. We found that its value can be changed by manipulating enemies. One enemy with ID 1A is particularly important, because it will directly determine the value of $7FFE. This enemy is generated once per frame in each empty slot. So to not change the value of $7FFE, each enemy slot cannot be empty. So this is bothering us. But we've looked everywhere, and only 2-2 works. A very close level is 4-2, but because the exit pipe is so far away from the enemies, the enemies disappear before Mario gets there.

That's how it works, but we haven't looked into the deeper principles yet, so hopefully someone will follow up and figure this stuff out completely.

! Suggested screenshot (frame #28309)
[https://i.ibb.co/yFXDnPW9/SMB-Special-35th-Anniversary-TAS-28309.png]
