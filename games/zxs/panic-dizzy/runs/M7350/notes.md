> **Imported**
> This run was originally published at https://tasvideos.org/7350M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Panic Dizzy is a spinoff game in the Dizzy series. Grand Dizzy has invented a toy making machine, but he's not well enough to test it, so it's up to Dizzy. Unfortunately, it keeps getting faster and there's no stop button.

!! Game objectives

* Emulator used: BizHawk 2.11.1
* Model used: +2A
* Aims to reach the level 21 killscreen as quickly as possible.
* Heavy RNG manipulation.

!! Comments

This is a tool-assisted speedrun of Panic Dizzy for the ZX Spectrum. It completes the All Levels category, starting on level 1 and reaching the level 21 killscreen as quickly as possible.

TAS timing (power on until last input): 89592 frames, 29:51.124

RTA timing (press a button to start the game until the final score appears): 75314 frames, 25:05.678

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Panic Dizzy can sometimes encounter lag frames, reducing the game to half speed in these moments. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game has less lag on these models. The +3 is a disk-based system, and Panic Dizzy has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

Gameplay is relatively simple: "magic shapes" fall from the sky, you have to line them up with matching holes. However, the chutes are constantly descending, and if they reach the bottom, it's game over. Not only that, but after every 50 shapes you match you go up a level, the holes change, and the chutes descend faster. The only way to make them go up again is to get a TRIPLE or higher, by matching three shapes at the same time. The toys at the bottom change when matching four or more shapes at the same time (a QUATTRO), which makes them go up even more.

Which shapes fall, and where, is entirely down to RNG. For the first two levels, only the magenta circle and the green cross can spawn, as there are no matching holes for other shapes; for the next two levels, the cyan triangle is added; and then from level five onwards the yellow star completes the set of four.

Other than only choosing shapes that have matching holes, there are no restrictions on the RNG. As a result, it's possible for the game to never give you combinations of shapes and locations that allow you to get a TRIPLE; the lower the chutes are, the less likely a TRIPLE appears, and after they're below Dizzy's feet it becomes impossible to even have three shapes active at once, and matching shapes at that stage is purely for score.

When TASing this game with perfect play without RNG manipulation, it was impossible to pass level eight; a lot of RNG manipulation is required to even complete the game. Only drops manipulate the RNG, so drops are frequently delayed to make sure the game can continue. Fortunately, as shapes leave chutes at a constant rate in each level it makes little difference to the final time; when the speed increases between levels I make sure to drop the last shape as early as possible.

For the first ten levels I try to maximise QUATTROs. It wasn't possible to maintain this strategy for the second half of the game, so for the next five levels I try to keep the chutes as low as possible without losing (at several points the TRIPLE earned is the last chance, and had it not been a TRIPLE the game would be impossible to continue). In level 16 I manage to manipulate a FIVE'ER, which I didn't even know was possible before starting the TAS - I believe it's only possible from level 16 onwards due to the increased speed chutes produce shapes. Levels 16-19 have identical holes, so this is more of the same.

Level 21 is a killscreen; it doesn't matter if you get a TRIPLE, a QUATTRO, or even a FIVE'ER, the chutes never go up. As a result, we make sure the chutes are already on their way down at the end of the level 20, and end the game on the same frame the level number changes to 21.

!! Other comments

Dizzy is one of my favourite 80s/90s videogame series. Panic Dizzy is a fun and interesting spinoff game which is unfortunately ruined by being impossible for a human to complete due to this being determined by RNG.

Special thanks go to The Oliver Twins for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.

Note for encoders: high score name can be entered as TAS, if desired.
