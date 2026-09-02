> **Imported**
> This run was originally published at https://tasvideos.org/7283M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! Dance Aerobics
Hop, skip and jump your way into shape!

Dance Aerobics was a cartridge released for the NES that allowed someone to use the power-pad to do an aerobic workout.

%%TOC%%

!! So if this is a workout program, can we consider it a game?
Dance Aerobics offers various modes.  These varying modes offer different goals, degrees of progression based on the user's performance, and even potential for failure.  Because performance determines progression, there are effective goals in completing the content of different modes, and one of the modes has a definitive endgame congratulations screen; this qualifies as a game in my opinion.  The various modes in this game would most closely match the rhythm game genre (basically, follow-the-leader type hitting of buttons at the appropriate time).

!! Basic game info
!Game Modes
1) Dance Aerobics%%%
* This is the "main" game mode.  In this mode, the user is tasked with matching the workout routines of the instructor.
* There are 8 levels of play progressing naturally from 1-8.
** Once a level has been successfully completed, the user is given a "Pass Stamp" which is this game's version of progress code allowing a user to start at a higher level upon a starting new session from power-on using the "Pass Stamp" option from the main menu.
** It is possible to progress directly to the next level at the post-level "Pass Stamp" screen.
** Levels increase in difficulty via speeding up routines and/or increasing the number of successful routines required to complete the level.
*** Levels 1-4  are Introductory(1&2) and Beginner (3&4) classes which are at a slower paced and require the fewest routines.  In these stages the user gets 16 counts of introduction on each routine before misses will start counting against them.
*** Levels 5 & 6 are Intermediate classes. In these stages the user gets 8 counts of introduction on each routine before misses will start counting against them.
*** Levels 7 & 8 are Advanced classes. In these stages the user only gets 4 counts of introduction on each routine before misses will start counting against them.
* Not matching the instructor will result in a loss of a Mistake coin.  The player starts with 10 of these at the beginning of a class.  If all coins are lost within a class, the game will end after the routine on which the final coin was lost, not giving the player the option to finish the class.
* Upon completion of the Level 8 class, the player is awarded with a congratulations screen and crowned an "Aerobic Superstar"
** __FLASHING LIGHT WARNING on the congratulations screen!__

2) Pad Antics
* Tune Up
** This is just a mode the player can use to familiarize themselves with the musical note placements for the Mat Melodies game.
* Mat Melodies
** This game consists of the player playing along with the musical melodies by stepping on the correct power-pad buttons corresponding with the appropriate notes.
** The player starts with 100 points.  Missing notes costs points.
** If the player's score at the end of a given melody is 80 or greater, they are allowed to move on to the next melody.
** There are 5 total melodies; after the 5th melody, the game loops back to melody 1.
* Ditto
** This is effectively digital [https://en.wikipedia.org/wiki/Twister_(game)|Twister].
** The screen shows a power-pad with hand and foot symbols on it that change locations; the goal is for the player to match the displayed positions.
** The player starts with 0 points.  For correct matches, the player gains either 1 or 2 points depending on how quickly they match the position.
** If the player achieves a score over 80, the next round will be more challenging by having less time between position changes.  There are 5 levels of difficulty, each with 50 positions.
** Score does not carry over between rounds.

3) Aerobic Studios
* This mode simply offers 5, 10, 15, or 20 minute aerobic workouts.
* As with the Dance Aerobics mode (1) above, the user is expected to match the instructors movements through the course of the workout.  
* The player starts with a score of 100, and missing movements decreases score.  However, unlike when losing all the coins in the main game mode, falling to 0 points here does not result in an end of the session; it will continue through its entire length regardless of player performance.
* The only impact user performance has on this mode is the final score and end-workout message.
** Score 80-100 = "Excellent.  You'll be an aerobic superstar!"
** Score 60-79 = "You did great.  You are improving!"
** Score 40-59 = "We are done for today.  Remember to work out regularly."
** Score 20-39 = "Relax and have fun."
** Score 0 - 19 = "Shape up in Dance Aerobic."
*** This message being a reference to training in the main game mode.
* While I suppose some might consider attaining a certain score to achieve the varying end messages enough to claim this mode contains a challenge and thus consider this mode a game, I do not.  To me, it's just a guided exercise session.
** This is in contrast to the other modes that have definitive progression and/or failure possibilities determined by the player's performance.
** So while I'm submitting TASes of the other various modes, I won't be doing so for this mode.

!!Why this game?
I was skimming through the [HomePages/DrD2k9/TASMania|TASMania list] for something (I don't remember what at this point) and this game stuck out to me as something that might be easy to TAS if there even was an opportunity for goals with which to consider it a game.  And it's on the list, so it would need done eventually to accomplish the goal of finishing them all.  Yea, there are probably other things I should have been focused on....but here we are.

!!!This Submission
!!Mode: ''Dance Aerobics''

While I was able to (mostly) bot the other modes I'm submitting, I was unable to easily find the requisite RAM addresses I needed to bot this mode, so this was manually produced.

When a level is completed and the "Pass Stamp" screen is shown, pressing select on the gamepad continues the game into the next level.

All levels are performed flawlessly until the final level.  In that level, I sacrifice all 10 of the Mistake coins by stopping input as early as possible (on the last frame I could that wouldn't result in failure).  Even though all 10 coins are lost, the run still manages to reach the final congratulatory screen.  I'm guessing the game checks if the player has any coins left ''before'' starting a new routine, as opposed to at the end of a routine; and if none are left, it goes to a failure screen instead of beginning the next routine.  Since the final coin is lost during the final routine, I'm guessing that the game doesn't check at the end to see if any coins remain and, thus, considers the progress complete even though all coins were indeed lost.

I debated submitting this mode with a "perfect performance" goal (((of which I have a run with the final input on frame 202,400))). Ultimately, choosing to be imperfect on the final level saves nearly 5,000 frames of input, and the actual time it takes to get to the congratulations screen won't change with ending the input at this earlier point.  That was enough of a savings in my opinion that ending input earlier is worthwhile to go for the shorter time of the TAS.

This decision contrasts with my submissions of other modes for this game in which I do sacrifice very minor time for perfect performance.

!!Improvement Potential
You wouldn't think that there would be any way to save time on a game that appears, at first glance, to have defined timing for the moves/button presses.  However, the sequence of routines in any given level is RNG based; so RNG manipulation may be possible to yield a different sequence of routines.

So what?  Don't all the various routines within a level use an equal number of beats?  How would changing the sequence yield any faster result?%%%
Well, sometimes the instructor has to change her starting position between one routine and the next (i.e. going from a standing to seated position and vice-versa).  This obviously takes time.  So, ''__if __'' one could manipulate a routine sequence with minimal position change between routines, it might be possible to move through a given level faster.  However, given that there are 192 total routines across the 8 levels, keeping RNG optimal through them all could pose quite the challenge.

FWIW, I only did minimal RNG testing and have not pursued this concept deeply.
* Delaying the start of the Dance Aerobics mode will change the sequence immediately at the beginning of level 1.
** Based on my minimal testing, this is the only way I found to impact RNG.  So I have no idea if any delays would yield a faster sequence due to fewer position changes, and frankly, I don't want to reTAS this game that much to figure it out.
* Changing when pressing 'Select' between levels doesn't seem to impact RNG.
* Gamepad input doesn't seem to impact RNG
