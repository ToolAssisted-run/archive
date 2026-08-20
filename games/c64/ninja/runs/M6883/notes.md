> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6883M and entered this archive as a voluntary
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

See [10058S] for a general introduction to the game. The C64 is one of the earliest version of this game, featuring several unique quirks. I was motivated to go for this after reading [Users/Profile/GJTASer2018|GJTASer2018]'s [https://tasvideos.org/Forum/Posts/539177|post], pointing me to 8-Bit Show And Tell's video. The video discusses the many quirks of this game, including the out of bounds (a.k.a glitch world) glitch, originally found and documented by [https://youtu.be/PoVETfWNW7M|Vesa Vanhatupa]. After watching that video I knew I had to TAS this and find a way to abuse the glitch for TAS purposes (spoiler: I did!)

[module:youtube|v=820Vy_df1Ts]

!! Routing

In this version, the positioning of the idols is determined at the start of the game, placing each of the 7 idols somewhat randomly (there seems to be some patterns) in any 6 of the 19 palace screens, plus one fixed at Akuma's Chamber (last room). The idol placement RNG is determined by the system RNG, giving you the chance to insert frames before starting the game to manipulate the route. I spent a few hours looking for the best placement (every frame added made me wait for 2 minutes for the entire game to reload!), but I could never find a route that was less than 15 screen traversal. That is, until I figured out how to use the OoB glitch to my advantage.

Turns out you can get out of bounds in any room where there is a wall. If you exit to the right, the room number gets increased by one; if you exit to the left, then its decreased by one. So I figured I could jump straight from Room 10 to 11, effectively going 3 screens left and one up in one go. What's important to note here is that the use of OoB glitch moved me up a floor without changing the floor number in RAM. The effect of this is that, the next time I go up, the room number will change +5 (as if I was in a floor below), instead of +4. So I could jump straight from Room 12 to 17! I call this the "wrong lift" glitch (this one is also described in the video).

So I manipulated the idol placement until I found a glitchy route with 14 screen traversals, effectively faster than anything in bounds I found before. The only regrettable part is the detour to the idol in screen 6 -- maybe there is an RNG that skips that (placing the idol in room 8), but still the route I found is almost ideal. 

[https://i.ibb.co/TDkwvZm4/map-traversal.png]

After the routing, I set to kill everything on my way, grab the idols, glitch through worlds, wrong lift, and eventually reach Akuma's Chamber. The first time I reached this screen, I killed everybody, grabbed the idol, and made my way back to the Torii gates. However, during this trip back I got myself killed. Normally, this is no issue; I just re-load a few frames back and try again. However, to my surprise, this triggered the "Winner" message!

In a nutshell: it is not necessary to make your way back to beat the game; just collect the 7 idols! So I rolled back to Akuma's chamber to grab the idol without killing Akuma himself (that's how I name the last evil ninja up there), and letting HIM kill me. 

I am pretty happy at how I was able to exploit all these quirks of the game to make a pretty quick TAS. I'm pretty sure the routing can be improved if you spend several hours looking for a better route that exploits these glitches, but a hours of resets (2 mins each) was all the patience I managed to muster.

Enjoy!

!! Credits:

Thanks to GJTASer2018 for pointing me to this. The guy from "8-Bit Show And Tell" for that amazing video and analysis, and Vesa Vanhatupa for discovering the glitches.

!! RAM Map 

These values are crucial if you plan to improve on this movie:

 SystemID C64
 00BF65	b	u	0	System Bus	Idol 1 Room
 00BF66	b	u	0	System Bus	Idol 2 Room
 00BF67	b	u	0	System Bus	Idol 3 Room
 00BF68	b	u	0	System Bus	Idol 4 Room
 00BF69	b	u	0	System Bus	Idol 5 Room
 00BF6A	b	u	0	System Bus	Idol 6 Room
 00BF6B	b	u	0	System Bus	Idol 7 Room
 000064	b	u	0	System Bus	Current Room
 00A3C7	b	u	0	System Bus	Current Floor
 00003A	b	u	0	System Bus	Ninja HP

!! Software + Hardware

! Emulator
* EmuHawk 2.11 (Core: C64Hawk)

! ROM

* Ninja (1986)(Mastertronic).tap
* SHA1:074D3354D8E1E41800643A76BB5509AEA67CA7FF
* MD5:8C7BDDBBF1D2FA949DDA0C52ADDFC81E
