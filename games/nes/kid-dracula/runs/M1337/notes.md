> **Imported**
> This run was originally published at https://tasvideos.org/1337M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This game sucks.  Therefore I present to you a movie that punishes the audience 50 less seconds than the [89M|published movie].

This movie was made using FCEUX2.1.1 and I highly recommend watching it with the emulator, as we have included some nice subtitle entertainment.

In addition, you should download the submission release package from my [http://sourceforge.net/projects/adelikattasing/files/Releases/|adelikat-TAS project downloads page].  

It includes many accessories for your viewing pleasure.
*A lua script for viewing various game data 
*Savestates for each level.  FCEUX2.1.1 supports drag & drop for savestates, so it is easy to watch any level you wish by simply dragging the provided savestates onto the emulator.
*A memory watch file we used in the making of this TAS 

! The journey

This run was inspired by my [Forum/Topics/3365|famtasia challenge].  This is one of the few remaining survivors from the dark ages of famtasia.  This isn't from a lack of trying though.  Many a great TASer has attempted to optimize only to be slain by this evil creature.

And why did they fail?  The nasty RNG for the mini-game map screens at the end of each level.  But one lone TASer prevailed where many great TASer before him failed:  Using the mystical powers of Lua, he managed to conquer this evil beast once and for all.  Ok, why am I talking this way?

DarkKobold was able to disect the RNG (well, as it turns out there are 2 RNG's which was the source of all the pain) and find the optimal solution for each map.  With this hurdle conquered our team quickly ravaged through this game.

! Tricks/Glitches

There is a big glitch shortcut taken in level 8.  Using the bat + taking damage it is possible to get inside the wall thus passing a good portion of the level.  Thanks to yunshui for this discovery!

There is a weapon glitch too.  You can fire rapidly by pressing the opposite direction you are facing the frame after firing.

The auto-scrollers are done from inside walls due to a glitch with the bat

Lag is a real pain in this game.  Did anyone even test this game before they released it?  A lot of TAS strategy in levels was built around finding a way to reduce lag.  In particular, Level 8 where you could easily rack up thousands of lag frames with a bad strategy.

! Summary

*Aims for fastest time
*Takes damage to save time
*Manipulates Luck
*Abuses programming errors in the game
