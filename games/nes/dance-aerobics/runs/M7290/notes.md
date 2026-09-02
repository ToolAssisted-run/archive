> **Imported**
> This run was originally published at https://tasvideos.org/7290M and entered this archive as a voluntary
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
!!Mode: ''Pad Antics: Mat Melodies''

This submission was mostly botted.%%%
Unlike in the 'Dance Aerobics' mode,  I was able to find the RAM address for which pad buttons needed pressed in this mode.  Thus, I was able to write a simple script to watch the RAM and apply button presses on the earliest possible frame after a position change.  It used a similar approach to the bot I used in "Ditto" mode; effectively watching for changes in which pad button needed pressed.

I ran into a similar issue with this approach as I did with ditto mode, in that there are situations where two subsequent button presses are the same note and thus the bot didn't recognize that a new press was needed.  It as simple to add in the extra button presses as necessary.

!!Endpoint
This submission completes all 5 unique melodies offered.

Perfect vs. Ending Input Early%%%
I was able to come up with a couple different definitions for "ending input early" in this mode:%%%
1) Stopping on the final input/frame necessary to maintain at least 80 points on Melody #5.
* This endpoint would ensure that the game would consider Melody #5 satisfactorily completed to progress onward (even though that progression is just looping back around to Melody #1).
* Ending input before a song is over results in a different audio experience as the player's inputs play separate notes/tones from the background music that the player is attempting to match.
2) Stopping on the final input/frame necessary to maintain a score of 100 points.  
* I do not consider this as 'perfect' play because of the note/tone played by stepping on buttons.  Inputting the final button press on the earliest possible frame to achieve 100 points is actually earlier than the game plays the background music for that note.  This leads to a 'mistimed' musical note which audibly is recognizable as imperfect.

With either of the above options, the 'mistimed' or imperfect audible sound is present.  So I chose to submit a 'perfect' run where the player input notes match the time of the background music of the game.  For reference, a 'perfect' run is only 38 frames longer than option 2 above; it is 239 frames longer than option 1.  To me, these brief amount of frames in conjunction with the better audio result is a justifiable speed/entertainment tradeoff for the longer 'perfect' run.
