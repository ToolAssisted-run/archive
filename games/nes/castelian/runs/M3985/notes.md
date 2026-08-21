> **Imported**
> This run was originally published at https://tasvideos.org/3985M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Emulator used: Bizhawk 1.13.1
* Primary objective: speed
* Playing on the fastest combination of version (JP) and difficulty (Hero)

!! Background
This game was the first I made a TAS of before having completed a console speedrun of it first. This meant I continued playing the game after submission [6194S|6194] and, not completely unexpectedly, I came across a few improvement ideas. This new submission is just so I can have peace of mind again and be able to say that all known time savers have been implemented.

!! Game mechanics
Not much to add in this section. See [6194S|6194] for a description of some aspects of the game mechanics. I've also created a wiki page with some additional information: https://kb.speeddemosarchive.com/Castelian_(NES)/Game_Mechanics

!! Improvements
There are only two minor gameplay improvements in this submission. When trying to sync the rest of the run, there were also quite big swings in the "random" lag frames. Below is a summary of what has changed since the last submission, both in terms of the gameplay improvements, but also the "random" lag. "Random" lag and screen transition times between levels can vary significantly, but for reasons unknown to me. So it's essentially a source of randomness that I haven't been able to control other than through some far from non-exhaustive trial-and-error. 
* Instead of jumping at frame 6035 (1:42 in the encode), the first jump was delayed to the next step. This triggered an earlier spawning of an enemy above and 18 less frames of waiting to jump over it.
* With a well-timed shot, the bouncing ball was delayed enough to make it possible to enter the opening at the start of the third tower. This saved 6 frames of countdown at the end of the level (see the previous submission for the game mechanics behind this). 1 frame was however lost at the level entry screen to manipulate this trick to be possible.
* 2 frames lost in tower 3 to "random" lag.
* 31 frames saved by shorter screen transition to bonus 3.
* 20 frames saved by shorter screen transition to tower 4.
* 6 frames lost in tower 4 to "random" lag.
* 41 frames saved by shorter screen transition to bonus 4.
* 5 frames gained in tower 5 from less "random" lag.
* 1 frame lost in tower 6 to "random" lag.
* 17 frames lost from longer screen transition to tower 7.
* 3 frames saved in tower 7 from less "random" lag.
* 38 frames lost from longer screen transition to bonus 7.
* 16 frames lost in tower 8 to "random" lag.

In total, an improvement of 18+5-2+31+20-6+41+5-1-17+3-38-16 = 43 frames.
