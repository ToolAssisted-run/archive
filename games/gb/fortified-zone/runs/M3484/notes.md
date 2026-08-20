> **Imported**
> This run was originally published at https://tasvideos.org/3484M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

It's faster, that's for sure. The old run is garbage af, I did reroutes back in 2014 and until now noone had obsoleted the old run. What?

!! Game objectives

* Emulator used: BizHawk 1.12.0
* Minor glitch abuse
* Takes damage to save time
* Manipulates luck

!! Comments

This run improves the [2019M|published] run by 2502 frames. Mainly due to better combat by manipulating luck and minimizing the use of switching characters. Another big improvement is a route change in level 3 and 4. Some improvement on movement were also made.

! Lua script

[=userfiles/info/40514324134190870|here]

!! Tricks and Gliches

! Movement

The guy moves at 0.75 px/f, the girl 0.875 px/f, jumping is 1 px/f. Jump height is constant, rooms can't be exited while in mid-air. Shooting on ground stops movement for one frame.

! Directional input precedence

||index||movement||shooting immidiate[[1]]||shooting delayed[[2]]||
|1|d|d|l|
|2|u|u|r|
|3|r|l|d|
|4|l|r|u|
[[1]] pressing shoot button on same frame as dpad.%%%
[[2]] pressing shoot button after dpad input; only girl, for guy it's the same effect as immidiate.

The input with the highest precendence will be used to determine the direction the character will move or the direction of a prjectile. The fact that that movement and shooting delayed are different let's one shoot in mid-air left or right while going up or down and left while going right. But that only works for these three case, not for other, because the subsets of movement and shooting delayed need to be a inversion of each other to make this trick possible.

! Walking through walls

Simple positioning, but it's only possible to walk through 8 pixel wide walls.

! Standing on level spikes

They don't hurt if the character isn't moving. Note that there're also an object which are spikes, that trick doesn't work for them.

! Positioning for next room/level

X position or guy when entering a new level is left from center, for girl it's right from center, Y position is the same. Subpixels get nullified. When entering a new room positions and subpixels carry over.

! Luck manipulation

RNG is called by killing objects. Delaying frames before entering a room can change the initial condition of the enemies.

!! Stage by stage comments

! Stage 1: Field

The weapon upgrade is picked up with the girl. Switching is to time consuming in the long run. The guy picks up grenades for better combat.

! Stage 2: Jungle

The boss battle is ended with the guy to have a better position for the next level

! Stage 3: Cave

Picking up a health kit wastes one frame. Damage boosting of spikes is useless as luck needs to manipulated by killing the bat in the next room for the bat in the next room. The boss sets it's actual health after some time, attacking it prior to that has no effect.

! Stage 4: Fortress

Ultra long level, nothing interresting happening.

!! Other comments

<Explain here things the audience would probably like to see> A rejection%%%
<Explain also things that could be improved in your movie> Everything%%%
<You may also suggest screenshots.>%%%
[http://i.imgur.com/NK4oSJ3.png]
