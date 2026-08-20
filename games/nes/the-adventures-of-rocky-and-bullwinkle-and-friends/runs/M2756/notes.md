> **Imported**
> This run was originally published at https://tasvideos.org/2756M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is a quality game.

!! Game objectives

* Emulator used: FCEUX 2.2.2
* Minor glitch abuse

!! Comments

It's actually a really bad game. The game needs several frames to detect input. 

There are two characters in this game, a fast moose who is used most of the time and squirrel who can fly and reach platforms the moose can't reach.

Holding down Select kinda freezes the condition of the character, which means it doesn't cost energy while going fast. MESHUGGAH did this in his first level WIP.

To effieciently jump over enemies which can't be bypassed without getting hit, it's needed to reduce speed before getting hit.

It's needed to stand still to change characters. Also for character change while screen transition the character needs to stop moving before being able to change. This only works when jumping up stairs with the squirrel.

The moose has only one possible jump height, so speed needs to be adjusted when jumping over the stones in water.

The "Goof" things reverse left and right, it has no effect when doing the Select trick though.

!! RAM Addresses

|0x0634|Unsigned word|X Position|
|0x0664|Unsigned word|Y Position|
|0x06E4|Signed byte|X Speed|

The speed address is weird, it's one unit higher when going left, but moving left isn't faster.

Have no fun watching!
