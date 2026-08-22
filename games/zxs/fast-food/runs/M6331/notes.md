> **Imported**
> This run was originally published at https://tasvideos.org/6331M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Fast Food is the first spinoff in the Dizzy series. Dizzy's hungry and has to gobble up all the food.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: +2A
* Aims to beat the game as quickly as possible.
* Heavy RNG manipulation.

!! Comments

This is a tool-assisted speedrun of Fast Food for the ZX Spectrum. It completes the 1 loop category, beating all 30 levels as quickly as possible.

TAS timing (power on until last input): 82153 frames, 27:22.403

RTA timing (press SPACE to start the game until "LEVEL 30 COMPLETE" appears): 66263 frames, 22:04.730

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Fast Food synchronises its game engine to the screen's refresh rate, and therefore generally runs marginally (~0.1%) faster on 48K than on 128K versions. However, 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds; this means that the 48K version lags significantly more during extra life cutscenes. The +3 is a disk-based system, and Fast Food has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

The game runs at a relatively constant 12.5fps (one in-game frame every four screen refreshes). This changes when collecting a speed up or slow down powerup, to 25fps or 8.3fps respectively.

Each level starts on a fixed RNG seed; if the same inputs are used from the start of the level, it will always play out in exactly the same way.

Some levels have thin hedges that Dizzy can get through, but monsters, food, and powerups can't; similarly, some levels have dead hedges that Dizzy can kick down, provided he can walk directly into them, and then become clear space.

There are four monsters that appear in the game: Bonzo (green) moves at about half of Dizzy's speed; each time he reaches a junction or a corner he will randomly choose between heading towards Dizzy or simply choosing an exit at random. Wizza (yellow) behaves exactly the same as Bonzo, except that he moves slightly faster than Dizzy. Pippa (pink) consistently moves towards Dizzy, and moves slightly slower than him. Fido (blue) seems to aim for somewhere in front of Dizzy, but moves at the same speed as Bonzo.

There are four food types that appear in the game too: pizzas move around the maze randomly at a low speed; burgers do the same but at a higher speed. Chickens actively run away from Dizzy at a speed slightly slower than him, and milkshakes actively move towards Dizzy at a low speed.

All powerups move around the maze randomly; magic boots double Dizzy's running speed, relish (green) slows down monsters, mustard (pink) freezes monsters, and ketchup (red) temporarily removes monsters. Monsters are also temporarily removed when Dizzy collects a shield and then eats a monster shortly afterwards; removed monsters respawn after a few seconds. Finally, there's an invincible powerup that makes you immune to monsters, and the aforementioned slow down and speed up powerups.

Monsters, food, and powerups can only change direction when arriving at a junction or a corner, or when bumping into another monster, food, or powerup.

Most levels were solved with the help of a Lua script, with manual tweaks to squeeze a few extra frames out.

!! Other comments

Dizzy is one of my favourite 80s/90s videogame series, and Fast Food is my favourite of the spinoffs. Yes, it's a Pac-Man clone, but it's a very well done Pac-Man clone with lots new (at the time) twists on the formula.

With this run I've completed the Dizzy Collection with an RTA equivalent time of 1:06:22.872, more than half an hour faster than my personal real-time PB. But this only a third of the Dizzy games on the Spectrum...

Special thanks go to The Oliver Twins for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
