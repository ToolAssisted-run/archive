> **Imported**
> This run was originally published at https://tasvideos.org/5247M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Mole Attack
Mole Attack is a video game clone of the mechanical arcade game Whac-A-Mole. It was published by Commodore in 1981 for the VIC-20 and the Commodore Max, by HAL Laboratory.

This game, in which moles pop up from nine holes, has a player send them back underground by bopping them on the head with a hammer, which is controlled with the joystick or the keyboard. This is done over a 60 second period, which will get extended once by 30 more seconds, upon reaching 150 points.

!!!TASing Effort
I originally wanted to do this game on the VIC-20, but tools for TASing on that computer don't exist yet. I tracked down the version on Commodore 64 and was a bit confused. I eventually figured out that it was released on the Commodore Max...which is compatible on the Commodore 64.

After multiple attempts, I was able to get the score as high at 520, utilizing a number of strategies mentioned below. As in the past, I reached out to [user:DrD2k9] to challenge him on beating this score...which he wasn't able to; however, he did reduce the frame count which was a plus and thus made him co-author on this submission.

!!!Tools Used
*Bizhawk 2.8
*Ram Watch
*Lua Script

!!!Strategies
*Striking all mole positions: Yes...in this TAS, we strike all the moles...even on the butt! Why? There is a code issue that ignores a butt side hit when it first appears, and can eliminate a mole from going through the cycle of its animation. This was something that wasn't done on the first pass, and yielded a score of 496 points. By including both sides, I was able to bring that score up to 520. It is also worth noting that hitting the butt side of a mole will subtract up to 5 points, if done on the wrong frame.
*Striking a mole as soon as it comes out of the hole: Doing this strat, will yield the highest score by tallying up 4 points for each hit.
*Changing the order of mole hits: When multiple moles start to emerge, you can change (to a small degree) the way moles appear later on.
*RNG: DrD2k9 and myself studied this game and was never able to figure out how to alter the appearance of these moles with greater control. After multiple run-throughs, 520 was the highest that either of us could get.

!!!BOTing
Yes! More BOTing! In this case, I was able to write my first lua script that actually played a game to completion. With my BOT, the game was able to max the score out at 504. This was a problem though, since I was never able to program every kind of situation that can exist. Mainly trying to perform AI as I would with manual TASing...very complicated.

This method did help us to determine one important detail. Neither DrD2k9 or myself was going to re-TAS this game over and over for delays at the start of the game. So, we used this script to determine if frame delays was going to yield better timing patterns for Mole appearances. At the conclusion of this experimentation, we saw that no frame delays was the answer. :(

!!!Human Comparison
This may be a video of the Commodore Vic-20 version, but the game is essentially the same and has an impressive run that I could not have imagined.
[module:youtube|v=5bH2Nu3AnSA]

!!!Thanks
*[user:DrD2k9], for once again working with me on one of our favorite computer systems.
