> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5450M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Super Mario Bros. Deluxe is a remake of the classic Super Mario Bros. for the GameBoy Colour, with several additional modes of extra content. This movie completes the Original 1985 mode, using warpzones along the way.
Bored of waiting to get past the Piranha Plants guarding Bowser's lair, Mario decides that this time he will stop along the way to pick up a fire flower. He tests it out on many of the World 8 enemies, and finally, for good measure, gives Bowser the blasting he deserves.
Much to his surprise, he finds that he has arrived 12 frames earlier than ever before!

%%TOC%%
!!Emulation details
*Emulator: Bizhawk 2.9.1
*Core: Gambatte
*BIOS: Official Nintendo BootROM

*ROM Checksum: 07295CD60AE44183EBECB013930727E0404169D5

!!Movie Objectives
*Aims for fastest completion
*Uses warps

There are some emulation differences that lead to this submission appearing slower than the [2810M|current publication]. In particular, almost all screen transitions are two frames longer, and the splash screen is now present.
I have tried to resync the current publication as best as possible, and compared to that, this run is an 12 frame improvement. A level-by-level comparison is given below:
||Level||Submission||Previous||Difference||Cumulative||
|1-1|2148|2148|0|0|
|1-2|3907|3907|0|0|
|4-1|6173|6092|+81|81|
|4-2|8024|7866|+77|158|
|8-1|11028|10870|0|158|
|8-2|13166|13008|0|158|
|8-3|15247|15089|0|158|
|8-4 room 1|15843|15748|-63|95|
|8-4 room 2|16267|16220|-48|47|
|8-4 room 3|16656|16668|-59|-12|
|8-4 room 4|17538|17550|0|-12|
|8-4 room 5|17900|17912|0|-12|

!!Powerups
The main change to this run is picking up a fire flower to avoid waiting for the piranha plants guarding the pipes in 8-4, saving 170 frames within 8-4. There were several good options for where to get the powerups:
*4-1: The fastest overall for mushroom (81f) and close to it for fire flower (79f) - this has the advantage that you would usually have to wait for the timer to tick down at the end of the level to avoid fireworks. The fire flower is not feasible here as all previous places to pick up a mushroom are very slow (119f+).
*4-2: Another fast fire flower (77f), since it spawns in a place where you would have to pass by anyway. Furthermore, when Big Mario is walking underneath the low wall, the game classes him as being inside the wall, and tries to push him out, gaining 1 pixel per frame.
*8-2 and 8-3: As with 4-1, you would usually have to wait for the timer to tick down to avoid fireworks. In this case, the timer we are avoiding ends in 3, and picking up the extra item loses 2 in-game time units, so we end up still having to wait to avoid the timer ending in 1. In both cases, the fire flower loses much more time (93f).
The best pair of these choices loses 158 frames, giving the overall 12 frame timesave.

!!Additional comments
The fire flower saves time within 8-2, since killing the piranha plant at 3:21 (see temporary encode above) allows you to regain speed faster. Unfortunately, it isn't enough to reach the flagpole before the timer turns to 343, so we lose this timesave waiting to avoid fireworks.

I didn't test thoroughly to see the exact amount of time picking up a mushroom in 4-2 loses, since all of the later fire flowers are too slow, and this also loses the benefit of walking underneath the low wall as Big Mario. Combined, these combinations would be slower.

!!Memory addresses
X subspeed is $01FD in WRAM; all other memory addresses that I used were from the game's [UserFiles/Info/637936906475553192|watchfile page].

!!Suggested screenshot
Frame 17895

[https://i.postimg.cc/Jz3j9MBk/17895.png]

!!Special thanks
*[user:negative_seven] for their previous run of the game, which was a great help in understanding the different physics engine from the original game.
*[user:CasualPokePlayer] for answering my questions about GameBoy Colour emulation.
