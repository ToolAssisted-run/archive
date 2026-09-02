> **Imported**
> This run was originally published at https://tasvideos.org/5280M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Duck Hunt (Game A: 1 Duck) - Maximum Displayable Score
Shoot the Ducks.

!Wait...isn't (Game A: 1 Duck) trivial to TAS?
* From the standpoint of ''optimizing for time'', yes.  One only needs to watch an internal timer to know when a duck will appear and then shoot it on the first possible frame by setting the proper targeting coordinates.
* But this run's goal wasn't time...it was score.  Thankfully, optimizing for score did not sacrifice any time!

!!So, what's the deal with scoring?
* While the timing of ducks doesn't change in this mode, the score value of any given duck is an RNG based variable.  Thankfully, we can manipulate the RNG.  Thus, it's possible to optimize a run for score.
* Because of this ability, I decided to do a Maximum Score run for this game; specifically choosing to max out the on-screen score display.

!Scoring Basics
* The maximum displayable score for the game is 999,900.
** The least amount of points any one duck can award is 500, thus the 10's and 1's place value digits of the score can never be anything other than zero.

* There are 3 different ducks in the game:
** Black Feathers - The slowest and lowest scoring ducks in a round.
** Blue Feathers - The average speed and middle scoring duck per round.
** Red Feathers - The fastest and highest scoring duck per round.
||Point Value Chart||
||Round(s)||Black Feathers||Blue Feathers||Red Feathers|
|1|500|1,000|*|
|2-5|500|1,000|1,500|
|6-10|800|1,600|2,400|
|11+|1,000|2,000|3,000|
 * Red Feathered ducks will never show up in Round 1 due to the game's programming.
* RNG manipulation is used to obtain the desired bird/point values.
** RNG can be manipulated via single frame trigger pulls.  Actually firing a bullet requires a minimum of 2 consecutive frames of trigger pull.

* Shooting all the ducks in a given round will yield a bonus score at the end of the round for "Perfect" shooting.
||"Perfect" Shooting Bonus Point Value Chart||
||Rounds||Bonus Points||
|1-9|10,000|
|10-14|15,000|
|15-19|20,000|
|20+|30,000|

* If one only obtains the maximum possible point value for each duck, completing up through Round 24 will yield a score of 975000 before the "Perfect" shooting bonus.
** The 30,000 bonus points will then cause the score display to roll-over (back down) to 5,000 points.
** So in order to get the score display to show its 999,900 maximum value, additional specific manipulation of duck values is necessary beyond just getting the max score from each duck.
*** In Round 5, I shoot the first duck (Blue Feathers) for 1000 points instead of the 1,500 max
*** In Round 6, I shoot the first duck (Black Feather) for 800 points instead of the 2,400 max
**** Doing these two variations yields a __9__ in the 100's digit of the total score at the end of the round; which will ultimately carry through the end of the run.
*** In Round 24, I shoot the 2nd to last duck (Blue Feathers) for 2,000 points instead of the max 3,000
*** Also in Round 24, I shoot the last duck (Black Feathers) for 1,000 points instead of the max 3,000
**** These allow for the final score before the "Perfect" bonus to be 969,900.
*** The addition of the 30,000 "Perfect" bonus points, yields a final score of 999,900--the maximum the score display can show.

* The final input is the shot for the last duck of Round 24.
* No ducks are shot in the final round (25) which results in a "Game Over," ending the run.

!! How & Why I Made This Run
* I've been attempting to learn some basic botting techniques to implement in my TASing toolbag.  I thought this game may offer an opportunity to test my knowledge so far.
* I was able to write a bot that--with the exception of pressing __Start__ at the beginning of the game--effectively plays the game autonomously, manipulating ducks to yield the desired point value.  
** If left to run uninterrupted, the bot would complete as many levels as desired while yielding the maximum possible score for each duck.
** I mostly used the bot to create this TAS, interrupting it only when necessary in order to change the variable for the desired score value as required.  
** The bot literally did all the actual input writing with the exception of the __Start__ press to start the game and me deleting a chunk of inputs due to a mental mistake in my planning.
** The knowledge I already had regarding RNG manipulation allowed me to program a very efficient bot, hence the rather low rerecord count even with botting.

!Publication Thoughts
* In the past, runs of __Game A: 1-Duck__ have been rejected for triviality reasons.  ⸤⸤(Though with the lifting of the triviality restrictions, perhaps even a basic any% run of this mode would now be acceptable.  I feel that would require either exhausting difficulty increase (level 27 IIRC) or the full 100 levels run to complete the kill-screen.)⸥⸥
* Optimizing for score, however, is not trivial due to the RNG manipulation necessary.  Thus, even under the old triviality restrictions, this run should qualify for Max Score publication.
