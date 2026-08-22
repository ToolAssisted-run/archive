> **Imported**
> This run was originally published at https://tasvideos.org/5759M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Lava is an action game originally written in BASIC in 2014 for a 48K Spectrum, and then rewritten in 2021 in Z80 machine code for a 16K Spectrum.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: +2A
* Aims to get to complete the game as quickly as possible.
* Manipulates RNG.

!! Comments

This is a tool-assisted speedrun of Lava for the ZX Spectrum. It completes the any% category, completing the game as quickly as possible.

TAS timing (power on until last input): 6408 frames, 2:08.109

RTA timing (press SPACE to start the game until "CONGRATS YOU HAVE COMPLETED LAVA" appears): 3484 frames, 1:09.652

! Model

The run is performed on the Sinclair ZX Spectrum +2A. When playing on the fastest game speed, Lava can sometimes encounter lag frames, reducing the game to half speed in these moments. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds, specifically in the first 16K of RAM this game loads in. As a result, the game has less lag on these models. Lava has a tape version and a TR-DOS version; BizHawk does not currently support the Pentagon Spectrum clone, so we use the +2A and load the game from tape.

! General information

Lava has three speed modes: Normal, Fast, and Crazy. The game plays identically in all modes otherwise, so naturally we choose Crazy.

There are two options for movement: the walker, and the jetpack. The walker is slow and cannot fly or shoot, but allows us to travel between rooms and doesn't need fuel. The jetpack is very fast and allows us to both fly and shoot, but limits us to the current room and has a very small amount of fuel. In the run we try to minimise time spent in the walker.

We can't initially leave the walker until we collect the fuel can, so at the start of both levels we run directly to the fuel can first. There are ammo clips to collect for more ammo, but as we never shoot an enemy we ignore these; we also ignore all of the gems as they exist only to award points. As a result this could also be considered a minimum score run.

There are three types of hazards: enemies, lasers, and the titular lava. Enemies move randomly, and normally would have to be shot in order to pass, but we manipulate them to stay out of our way by waiting before entering the room, as leaving the walker to shoot them and then redocking takes too much time. Lasers shoot in fixed patterns and are easy to get through, and lava is static and simply has to be avoided.

!! Other comments

I originally planned to speedrun this game (RTA) as it seemed as though it would make a good speedgame. Unfortunately it turns out I'm so bad at the game that after playing it for eight hours I still can't beat the first level. Fortunately I have no such issues in a TAS.

Lava is notable for being a rare example of a modern 16K game on the Spectrum. This means that it can run on a Spectrum with only 16KB of RAM; as 8KB is reserved for the screen and system variables, this means the entire game code, data, and working memory fits within 8KB. The Spectrum +2A we're running the game on could hold 14 copies of the game in memory at the same time, each with their own state, and the PC I'm writing this on (with 8GB of RAM) could hold a million copies in memory.

Special thanks go to Zosya for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
