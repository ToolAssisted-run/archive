> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6372M and entered this archive as a voluntary
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
I wanted to work on this game ever since I finished my first Arkanoid movie. However, the main limiting factor is that the mapper wasn't supported by QuickNES (the emulator core I used for botting). So I decided to update QuickNES to its latest version in libretro (one with many more mappers supported). In the meantime I also improved its performance and added support for the Arkanoid inputs. This work resulted in the new [https://github.com/TASEmulators/quickerNES|QuickerNES] core, which allowed me to start this work.

There are several new features introduced in this sequel:

* The game starts with an initial "easy" boss fight. After that, the player can decide which direction to go at the end of each level. This decides whether you play the "Left" or "Right" versions of each of the [https://strategywiki.org/wiki/Arkanoid:_Revenge_of_Doh/Walkthrough|34 rounds]. I had to bot all 65 possible stages and, for each level, select the fastest one. This means that a full game of "unselected" stages will never see the light of day :/

*  Powerups are more diverse and useful than in the first game. Lasers, super-powerup, 8-ball multiball and the mega-ball are all used in my solution.

! In-game Code

At the beginning of the game I use the in-game code to enable the 'Hard' difficulty (found it [https://gamefaqs.gamespot.com/nes/578566-arkanoid-ii/cheats|here] under the name 'Speed Up Ball by 50%'). This code makes the ball go faster at the start of every level and grants additional score.  

The intent of the code is to make the game harder for expert players looking for an additional challenge. The clear benefit is that it makes the TAS faster and more entertaining.

I consulted with judges beforehand if this would be allowed and got a positive answer, as long as it was clarified. I consider this code a hidden 'Difficulty Selection' switch, rather than a game-breaking advantage-giving cheat code.

! Category Rules
* Heavy glitch abuse
* Heavy luck manipulation
* Uses in-game code to enable "Hard" difficulty
* No stage skip (a.k.a, warp, breakout) bonuses are picked up

!! Software + Hardware

! Rom Information

* Name: Arkanoid II (Japan)
* ROM: Arkanoid II (Japan).nes
* SHA1:9300EE2ACFE7F43CBC72CAE4E57FC5A60837C4B4
* MD5:7C8518AF66A21D87557128E4873AEF66


! Emulator

* EmuHawk 2.10 (Core: QuickerNES)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/QuickerNES|QuickerNES]
* Platform: 
** 2 x AMD Epyc 7742 (128 cores, 256 threads) + 384Gb RAM
** Exploration Rate: 1.6 Mstates/s 

! Raw Input Movie

If you find the entertainment inputs too distracting, you can enjoy the following encode of my first draft that keeps the paddle static and only adds precise inputs to solve the levels.

https://tasvideos.org/UserFiles/Info/638728745228619837

[module:youtube|v=h_0H-HqeLZE]

!! Entertainment inputs

After finishing the first draft of the movie, I felt the movie was missing some 'spice'. So I decided to develop an 'entertainment' algorithm that allows me to create some cool effects while checking that none of the additional inputs caused the solution to desync. I hope you like the effects I came up with!
