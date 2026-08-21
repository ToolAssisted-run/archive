> **Imported**
> This run was originally published at https://tasvideos.org/5598M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Batman is my favorite game on the NES so I wanted to have a submission for this game, this is 2 frames faster than current TAS and is made on a different emulator (BizHawk 2.9.1), I just prefer BizHawk. I did BizHawk resync of current TAS and the timing of that TAS in BizHawk was found to be 9:11.94  so my TAS is 5 frames faster than this BizHawk resync (5 less lag frames).


This TAS also shows faster gameplay in 2-1 (1 frame saved due to reducing jump height when wall bouncing, thanks to getting better Y-SubPixel value when grabbing the wall) I will provide a detailed explanation for this later in submission comments.


Explaination about improvments: Improvement in this movie comes from lag reduction, several days ago I observed a very new method to reduce lag here's the story about it... So I was TASing the game and at some point I was comparing my run to current TAS (9:12.49 at that time) to see if I am faster or slower, so the first 17854 frames were lagless in my as well as current TAS both TASes were same speed also but I was getting more lag I thought its probably because of using different emulator I tried for days but couldn't reduce down the lag frames and at some point I thought its impossible to match or beat the known records in this emulator but I still wanted to TAS this game so for refreshing my mind I went back on previous levels and started Sub-Pixel perfecting them and added a lot entertainment tradeoffs too and when I returned to 4-1 again I saw that one of the lag frame disappered and I was like "the hell ??...is happening and eventually I got idea I went back and intentionally changed something that doesn't loose time and replayed the TAS and saw that the lag pattern is different again, most of the time I got worst lag but after 3 days of reTASing previous levels I finally managed the least possible lag in 4-1 which one less lag than BizHawk resync of current TAS so using this trick I optimiesed lag and improved and saved a frame in 5-1.


Another improvement is the faster wall bounce off in 2-1 (sadly its not possible to keep this frame saved for much longer I had to loose it after playing few levels, I had shown faster gameplay wherever possible). So this wall bounce off trick is discovered by RTA community of this game, as I mentioned above I found this faster wall bounce technique when I was trying toSub-Pixel perfect this game so now there are 3 possible working varients of this wall bounce trick (all are very precise and not used in RTA runs):


1. This is the one I just found out... So in this you jump from 00D4 = X-Pixel = 93 and 00D5 = X-SubPixel = 128 (see at frame 6084 ) and hold A for 14 frames and with this you will grab the next platform at Y-Pixel = 71 and Y-SubPixel = 0 now this slightly high than current TAS (Y-Pixel = 71 and Y-SubPixel = 48 ) so I was able to reduce jump height and landed on the platform quicker 2 frames quicker but my Sub-Pixel position was now on the very possible edge so I couldn't turn back in mid-air and hence I had to turn back after landing therefore even after landing 2 frames quicker it s ed only one frame.


2. Other two varients grab the wall at Y-Pixel = 71, Y-Subpixel = 48 and Y-Pixel = 71, Y-SubPixel = 144 both are 1 frame slower.


There are some theoretical improvements I observed for example:
In 1-2 if you climb optimally during walljumping part you can actually do a slightly big jump at the top left corner with 4 spikecars and there Batman is literally one Sub-Pixel away from jumping on the next platform 1 frame sooner (1 Sub-Pixel = 1/256 Pixels for comparision), but then again even if you managed to save this frame by magic you can't hold it for long time so I stopped trying to find a way to save this frame.


I used to play this game on the NES in my childhood (now I play it in PC), I still remember that the 2nd Boss was too hard for my youngerself and I could never beat that boss in my childhood and I still remember my trembling hands when I used to die in this boos fight haha but in this TAS we absolutely destroyed this boss!


also the first ever TAS I watched was NES Batman by Aglar in 9:21.93 back in 2019 and I myself started TASing this game one year ago that was my starting of TASing hobby.


Note that 4-3 can be done 3 frames faster than this but there's no point in it because of 4-4 Boss framerules and also I was getting lag in 5-1 so it was a part of manipulation luck, also these days I'm busy in creating a RomHack for this game so I decided to finish my work on this TAS.
