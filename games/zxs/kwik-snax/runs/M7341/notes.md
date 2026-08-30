> **Imported**
> This run was originally published at https://tasvideos.org/7341M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Kwik Snax is a spinoff game in the Dizzy series. Dizzy's hungry and has to gobble up all the food. Yes, that's also the goal of the first spinoff, Fast Food, but this is a very different game. Also he's rescuing his bandmates.

!! Game objectives

* Emulator used: BizHawk 2.11.1
* Model used: +2A
* Aims to beat the game as quickly as possible.
* Heavy RNG manipulation.

!! Comments

This is a tool-assisted speedrun of Kwik Snax for the ZX Spectrum. It completes the any% category, rescuing all bandmates as quickly as possible.

TAS timing (power on until last input): 66709 frames, 22:13.647

RTA timing (press a button to start the game until "CONGRATULATIONS" appears): 41133 frames, 13:42.331

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Kwik Snax synchronises its game engine to the screen's refresh rate, and therefore generally runs marginally (~0.1%) faster on 48K than on 128K versions. However, 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds; this means that level transitions are faster on these models.

Working out exactly which model is fastest for this game is non-trivial, and the difference is negligible, so I based my choice of model on an entirely different metric. Kwik Snax has AY music when playing in 128K mode, but not in 48K mode, and choosing to play this game without music is actually illegal. The +3 is a disk-based system, and Kwik Snax has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

The game runs at a relatively constant 25fps (one in-game frame every two screen refreshes). Each level starts on a fixed RNG seed; if the same inputs are used from the start of the level, it will always play out in exactly the same way.

Henchmen move randomly; they can be temporarily removed by either trapping them between two blocks (or a block and the outside wall), or by collecting the knife and fork powerup which allows Dizzy to eat them. Although the outside wall is solid to henchmen, Dizzy and blocks he pushes may pass through freely, wrapping to the other side of the area.

Fruit is static, but has the Bomberman mechanic where collecting the flashing fruit awards extra points, and collecting all food in that order awards a perfect bonus. As we are not aiming for score, and in fact scoring too many points crashes the game (!), we ignore this bonus.

Powerups spawn randomly; their types and order are fixed in each level, but their positions change depending on player input. (30) slows down enemies, Zzz slows down Dizzy, arrows reverse Dizzy's movement, the clear-labelled bottle makes blocks disappear quickly, the crosshatch-labelled bottle turns all blocks into fruit, the border blocker stops Dizzy and blocks from passing through the outside wall, ? awards points, and the knife and fork allows Dizzy to eat the henchmen. Only one powerup can appear at a time; the next powerup only appears once the previous powerup has been collected and used up.

After each normal level, there's a bonus section, where Dizzy will move in a direction until he hits a wall. The bonus section ends when all fruit is collected, and in some of these levels it's faster to do that, but if the game detects Dizzy is in an infinite loop (determined by travelling 16 squares without hitting a wall) the bonus section will end early, and this is usually the faster way of ending it.

Most levels were solved with the help of a Lua script, with manual tweaks to squeeze a few extra frames out. There is one exception to this:

! Zaks 3

Zaks 3 is an interesting level in that two food items are completely inaccessible, as there are blocks in front of them that cannot be moved out of the way. Blocks do slowly disappear over time, so these eventually become accessible, but the faster way is to collect the powerup that turns all blocks into fruit.

As powerup types and order are fixed in each level, the first three powerups must be collected. The first is a knife and fork powerup, whose timer must expire before the second powerup appears. The second is a ?, awarding points and immediately spawning the third powerup, the crosshatch-labelled bottle. Collecting this turns all blocks into fruit, giving us lots of extra fruit to collect but allowing us to complete the level.

Except that's not quite what we do. As found by TinyTim78, if you are pushing a block immediately before collecting the crosshatch-labelled bottle, and attempt to push another block immediately afterwards, Dizzy will start leaving a trail of blue bananas behind him. These act the same as regular bananas, blocking enemy movement and contributing to the total fruit collected in order to complete the level. So we activate this glitch and walk around in circles to constantly collect blue bananas, saving us a small amount of time wandering around collecting all of the actual bananas.

This glitch works on all levels in which the crosshatch-labelled bottle appears, but it's always faster to just collect the regular fruit in every other level.

!! Other comments

Dizzy is one of my favourite 80s/90s videogame series. Kwik Snax is a great spinoff, with some amazing music by the late great Lyndon Sharp. Heavily inspired by Pengo while being different enough to do its own thing.

Special thanks go to The Oliver Twins for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
