> **Imported**
> This run was originally published at https://tasvideos.org/4107M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Space Monsters Meet the Hardy
__Space Monsters Meet the Hardy__ was a submission to the Yandex Retro Games Battle in 2019.  It won 2nd place in that competition.

__Story__ (From the contest website)%%%
Your task is to find and neutralize the head of space monsters, which is hidden in the mazes of numerous levels. To go between them there are special elevators, each of which you have to first find the key. But not everything is so simple: both of them are well guarded. And besides the monsters themselves, you will find many obstacles of varying degrees of difficulty: from completely harmless, but blocking the path of the bubbles to deadly drops that kill the first time. But the main enemy is time, inexorably decreasing every second ... In your arsenal there is only a laser pistol and faithful fast legs. Hurry up! Good luck!

!! TAS Notes
*Emulator used: I started with BizHawk 2.3.2...then I used some dev builds due to an emulation bug with music in 2.3.2...then ultimately tested, tweaked for optimization , and exported to a .bk2 using BizHawk 2.4.0
*This is an any% submission.  Because enemies don't respawn, a 100% run could theoretically be submitted that included killing all the enemies (assuming there's enough in-game time to actually accomplish this feat).  A Max-Score run could also be considered but would require balancing the number of enemies killed with end-stage bonus points for time remaining.
*Due to this TAS aiming to finish as quickly as possible, no enemies were killed unless doing so was necessary for fastest completion.
**Killing a non-exploding enemy (either by blaster or jumping on them) adds a lag frame.  Killing an exploding enemy adds more as the explosion animation stops movement.
**Most kills in this run were to avoid taking enough damage to kill Hardy or to yield a better movement option.
*Takes some damage to save time.
*Death warping is not an option  -- Hardy loses the key card when he dies
*(Likely) Abuses programming oversights (see below)

!!Movement optimization
The major challenge in this run is to optimize movement as each level's goal is essentially ''Get the key-card and exit the level.''

__Trick 1:__ Sometimes jumping on the first frame of movement allows for faster acceleration than just running. This was used in the first few levels where it helped.

__Trick 2:__ When changing directions, Hardy's momentum will normally cause him to slide as he decelerates to change direction.  However, the game mechanics allow him to stop on a dime with blank input.  Thus a single frame of blank input before changing direction allowed for a much shorter (almost instant) direction change.  The gifs below show the difference.

Both of these stop running right on the same frame:%%%
[https://i.ibb.co/0nRnQjv/hardy-slide.gif]%%%Presses left the frame immediately after stopping pressing right resulting in a momentum slide toward the exit.

[https://i.ibb.co/gVgzM2r/hardy-turn.gif]%%%Contains 1 blank frame before left gets pressed resulting in an almost immediate direction change.

This presents an interesting curiosity from a development standpoint.  Did the developers intend the sustained momentum but overlooked the instant stop caused by blank input...or did they intend for instantaneous change, but the coding unintentionally results in the momentum slide?

Either way, this could be looked at as abusing a programming oversight.

__Trick 3:__ There is an instance where a pseudo wall-jump is used.  In level 6, there is a part of the wall that is likely not intended to be used as a floor, but due to the sprite positions/shapes it is indeed possible to jump off this ledge even though it's not possible to stand still on this ledge without falling off.%%%
[https://i.ibb.co/vs5bpZK/hardy-walljump.png]%%%
It is possible to stay on this ledge while holding right, but letting go of right will cause Hardy to fall off.  In the TAS this ledge is jumped off before Hardy can fall off.  Again, this is likely a programming oversight and jumping from the walls was unintentional.

__Trick 4:__ Air Jumping.  When Hardy walks off a platform instead of jumping off...he can jump during the fall while still in mid-air.  This is utilized a few times for better jumping positions and to make jumps that wouldn't otherwise be possible.  Again, likely a programming oversight.%%%[https://i.ibb.co/7V7tgZw/hardy-air-jump.gif]

!!Potential Improvements
This is a fast paced platformer...it's completely possible that someone could find better movement optimization patters.  The only specific I can think of would be finding a way to actively kill fewer exploding enemies while still maintaining enough health to complete the game; this could decrease lag frames and yield a slightly faster run.

!!Note to potential publishers:
The loading portion of this TAS contains the typical screeching data sound associated with loading from tape on ZX Spectrum.  BizHawk's audio settings within the ZX Spectrum core contain an option to alter the tape audio volume.  Reducing this to the lowest setting will allow for the loading portion of the TAS to be done silently instead of with the screeching data sound.  I don't believe changing this setting would affect the sync of the submitted .bk2; but if it did, copying the input and pasting into a new tasproj file that is initialized with the tape volume minimized should work.
