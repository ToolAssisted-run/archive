> **Imported**
> This run was originally published at https://tasvideos.org/4273M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is an improvement of 3682 frames (3287 lag) over the published movie (1612M)

I could go on and on for hours to explain the things I've discovered while making this run(s), I'm not sure it would be very interesting or that I can remember everything but I've used all at my disposal and research on the grey cart to produce this, I will try to update later.

The major new tricks are:
* using pause to grab/ungrab the rope, the game use a check every 4 frames to see if you should catch the rope (0502-player state), by adjusting the pause you can "skip" the rope.
* pausing to despawn monsters, candles or platforms, address range 0600-0700-0800 for "objects", a block is 12 bytes (don't quote me), the spawning timer is at 0009, if you pause the frame before a monster would spawn (and the timer reach a multiply of 8 or 16) the game will just not try to spawn it.
* you can also press backward to manipulate the spawn, from research done by ThunderAxe we know now that the game try to spawn the monsters but for some obscure reason it decide to not do it (unlike pause where he doesn't even try, this decision is only worth a couple of cycle and hence why there's no frame difference by itself).
* note that if the scroller is on the left side (and unlike on right side), you cannot press L+R to despawn something, instead you have to L-R-L
* monsters usually has to be despawn 2 times (timer with multiply of 8, so every 8 frames it try again if you are in range of the monster), but by generating more lag with candles, its possible to backward or pause once instead of twice (this isn't a theory but definitely working), yet, we haven't found the timers related to your position that determine where the checks happen (monster range), but in most cases the delay is 8 frames which is very short so its unlikely you can despawn further/faster than whats presented here.
* autoscroller; if you don't press UP all the time but rather in short burst, you generate near zero lag, this is a lot more effective on grey version, but still save over 500 frames here too.
* manipulate luck : unlike previous runs, pausing for 1 frame (pause-blank-pause) doesnt work to manipulate the rng, instead you have to pause for 2 frames or more (pause-blank-blank-pause), this is how you manipulate bats flypath, direction of fireball projectiles or stage2 boss holes spawn.

To improve further:
* invulnerability gives you a speed boost, I didn't try to measure it with subpixel but its just obvious while watching anyway, I'm not sure if there's more on candles I didn't hit.
* you can go and test all candles, but provided you don't use pause, it is almost always slower to hit candles, except like before climbing a rope for example.
* I couldn't figure how to replicate the Dracula fight, I'm blaming emulation for that but I could be wrong.
* fix eventual small mistakes
