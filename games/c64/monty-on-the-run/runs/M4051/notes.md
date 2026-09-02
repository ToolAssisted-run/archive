> **Imported**
> This run was originally published at https://tasvideos.org/4051M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Monty on the Run (C64)
__(This is an update to a [6447S|previously canceled submission]. Details on changes below.)__%%%
Monty on the Run is a platformer released for a number of systems and is the 3rd release in the Monty Mole series.  It is commonly known as having one of the best music tracks of the C64 era.

__The series:__%%%
''Wanted: Monty Mole'' (1984)- Monty travels around a coal mine collecting pieces of coal and other miscellaneous objects. The game was created in response to the British miners' strikes and saw the lead character collecting coal in order to keep his family warm.%%%
''Monty is Innocent'' (1985) - Monty has been sentenced to five years in Scudmore Prison for stealing a bucket of coal. Monty's best friend, the mysterious masked weasel, Sam Stoat, is determined to set Monty free.%%%
''Monty on the Run'' (1985) - This game%%%
''Auf Wiedersehen Monty'' (1987) - Monty travels around Europe collecting money in order to buy a Greek island - Montos, where he can safely retire.
''Moley Christmas'' (1987) - Monty has been given the task of getting the code for his latest game from the programmers to the cover of ''Your Sinclair'' magazine.%%%
''Impossamole'' (1990) - Remake of Monty as a cape-clad superhero who is recruited by aliens to retrieve their sacred scrolls.

!!Story
On the run from the authorities after his escape from Scudmore Prison, Monty the Mole must escape from his house through the criminal underground and head toward the English Channel and freedom in Europe.

!!TAS Notes
*Goal - Beat game as quickly as possible
*Dies to save time.
*Forgoes item collection to save time. A 100% run would collect all coins/items.
*Manipulates RNG for favorable teleportation outcomes.

This game included a major frustration during TASing.  Based on the current rules for C64 games, I started this TAS in NTSC mode.  Everything seemed to work perfectly until the very end of the game.  Upon Monty hitting the endpoint trigger in NTSC mode, the game glitches and does not play the end-game sequence.  This is the only glitch that occurs when playing with NTSC region settings.%%%
That version of the the TAS can be viewed below with the glitch plainly visible at the end. (Side Note: This run is not completely optimal as-is, I found improvements after conversion to PAL).
[module:youtube|v=NPM9DzJeRo0]

Due to this glitch, I had to redo the run in PAL mode simply to get the end scene to play.  Thankfully the two regions were almost frame equal as far as input/movement, so re-syncing movements wasn't terribly difficult.  The major frustration/problem in converting to PAL surfaced in regards to RNG.  There are only two major components of the game that are RNG dependent: the crusher pistons and the teleportation beams.
*Crusher Pistons have a random time in between crushes.
*Teleportation beams seem to be random in the order of which colors they change.
The change in region altered the RNG resulting in different values for these two mechanics between runs. 

---Unfortunately, I have been unable to determine the reason for the difference in RNG.  I was also unable (as yet) to find a way of manipulating the RNG. Because of this, the game-play portion of the PAL version of the TAS ended up being quite a bit longer than the NTSC version due to added waits at some crushers/teleportation beams.  I bounced Monty around at these to kill time.

Though I plan to continue studying this particular RNG situation, I still felt the PAL run was satisfactorily optimized for submission.  If I am able to find a way to manipulate the RNG I will update this submission (or submit a new run to obsolete this one if it is already published by the time I figure it out).---

!!NEW STUFF
*''Huge'' thanks to [user:Memory] for figuring out a way to manipulate RNG (via a method I, frankly, should have been able to figure out myself, but didn't).  
**With this new level of control over the RNG dependent environmental features, I was able to manipulate almost all the teleportation beams (with the exception of the final one).  This allowed me to select color for all the teleportation beams that needed passed through and guaranteed teleportation on the few in which that was necessary.  The only exception to this was the very last beam: passing through would yield a faster path than teleporting if it could be manipulated to be the correct color, but I was unfortunately unable to make this happen.
**I also manipulated a few crushers.
*This submission is 1584 frames faster than [6447S|the previous], for a savings of about 31.68 seconds.
*This submission uses BizHawk 2.3.2 instead of version 2.3.1 which was used on the original...as such, rerecord count is ''severely'' inaccurate.

!!Potential Improvements
---If I or someone else can effectively find a way to manipulate RNG, this run could be drastically reduced by manipulating any crushers/teleportation beams to eliminate/minimize wait time.  This would also allow for slightly different routing in a couple areas.---

If someone is able to manipulate RNG to yield a pass-through color (white) on the last teleportation beam without losing time anywhere else, this would open a new path to the end likely making the run a screen or two faster.

!!Other Stuff
*This is one of only two C64 games to have been run at a GDQ event (by DANACRYSALIS at SGDQ 2014)
**He also holds the current RTA world record which can be viewed [https://www.twitch.tv/videos/48967124?filter=all&sort=time|here].
**This submission was (originally) done concurrently with [6448S|6448S] as homage to DANACRYSALIS GDQ runs.
*The last input to beat the game is where this submission ends.  If accepted, a publisher can use [=userfiles/info/57936291462708476|this .bk2] which includes the necessary additional inputs to enter the high score after the end sequence and then watch the credits.
