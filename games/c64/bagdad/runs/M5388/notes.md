> **Imported**
> This run was originally published at https://tasvideos.org/5388M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Bagdad (Compute's Gazette)
Flying through Bagdad on your magic carpet, you're suddenly accosted by some rug-riding evil genies bent on knocking you off—literally and figuratively. Your only defense is to knock them off first, and this takes some tricky maneuvering. First, you must trap each genie in a bottle. Then collect the bottles before the genies have chance to escape. If you fail to collect bottle in time, the lid opens and your battle resumes.

The article for this game can be found on page 56 of Issue 17 (November 1984): https://archive.org/details/1984-11-computegazette/page/n57/mode/2up

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 12th TAS from this series.

This was one of the earlier games that I typed in. It actually brings back a fond memory of me living in our family's first small house. My younger brother and I shared a room, and I played on my Commodore while he played with his toys.
When I finished this, I remember my brother and I playing this for hours on the Commodore VIC-20. It would be a year or so before my parents would get me a Commodore 64, and the chance to experience the game being presented here.

Previous Compute's Gazette submissions include (In order of submission):
*[4449M|Astro-Panic!]
*[4805M|Royal Rescue]
*[5046M|Miami Ice]
*[5179M|Chopper 1]
*[5235M|Spike]
*[5314M|Heat Seeker]
*[5317M|Omicron]
*[5320M|Alien Armada]
*[5319M|Star Dragon]
*[5326M|White Water]
*[8332S|Space Gallery]

!!Tools Used
*BizHawk 2.9
*Lua: Used for BOTing
**BOT: Splotch (A unique concept that I use only on the C64)
**Game Related Calculations: Short-term specific goals, that were done to progress towards final ending point

!!Game Ending
To any one judging this, the article is WRONG. On page 61, the Commodore 64 difference are described...since it was originally written for the VIC-20. In the article, it states that Wave 14, is where we finally see the dreaded "Purple Genie". Well, this is not true...the purple genie comes out on Wave 13. At this point...completing this wave exhausts all unique content and thus ends the need to proceed further. Additionally, the max number of enemy genies are reached at Wave 13.

!!Effort In TASing
I actually had a hard time with this game for various reasons. At first, I was manually TASing this and got to the end very quickly; however, by the end...I realized there were small optimization required to clinch the fastest completion time. Below are some details that outline the issues needing to be overcome to beat this game optimally.
*RNG
**Like most ML written games, it is controlled in the same manner by pressing keys, pushing a joystick direction, or firing.
**Forced to show as early as possible.
**Forced to get the genies to show up in the middle
**Forced to get the launching direction and speed so that a "bump" will knock the genie into a bottle and collect the bottle within the next frame.

One mechanical exploit was discovered and then applied everywhere. I discovered, on my first run-through, that I could attack the genie and collect the bottle on the next frame. Usually, you get a huge "bounce-back", which wastes time. I eventually found that controlling RNG helped out in this regard.

!!Human Comparison
This player produced a good video that demonstrates the game very well. Unfortunately, it doesn't get far into the game.
[module:youtube|v=GWkip1M4UB0]
