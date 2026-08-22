> **Imported**
> This run was originally published at https://tasvideos.org/6233M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Skool Daze is a sandbox game set in a school in which you play as ERIC and must remove your school report from the staffroom safe before the headmaster reads it and passes on the information to his parents.

This time, ERIC has psychic powers (or incredible luck) and opens the safe without ever actually getting the combination, and all before morning breaktime.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: +2A
* Aims to beat the game as quickly as possible.
* Manipulates RNG.

!! Comments

This is a tool-assisted speedrun of Skool Daze for the ZX Spectrum. It completes the 1 loop category, moving up a year as quickly as possible.

TAS timing (power on until last input): 38410 frames, 12:47.893

RTA timing (press a key to start the game until "WELL DONE! GO UP A YEAR" appears): 25331 frames, 08:26.417

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Skool Daze does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and Skool Daze has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

As Skool Daze does not attempt to control its framerate, when there is more to process, the game runs slower. However, the game is generally processing all characters all the time anyway, and so this framerate only slows down when there are visual or sound effects to play (e.g. the player fired a catapult or got punched to the ground). The game also pauses to scroll the screen, or when a teacher gives lines, so these are generally avoided whenever possible.

! Intended route

The first step is to hit all 15 shields. There are two ways to hit a shield:
1. jump and punch them
2. fire a catapult pellet into them

The shields on the top floor of the school can all be jumped into easily and directly; however, in order to jump into the shields on the middle floor, you must knock over another boy and jump on top of him to gain extra height. The shields on the bottom floor cannot be reached by jumping.

Only shields next to stairs can be hit directly with a catapult pellet; the remaining shields at the bottom must be hit by knocking over a teacher and then bouncing a pellet off their head. Of course, you can always hit the shields on the other two floors this way as well.

Once all shields have been hit, knocking over MR WACKER, MR WITHIT, or MR ROCKITT will reveal their letter of the safe combination. In order to get MR CREAK's letter, you must wait until you have a class with him; he will ask what happened in the year he was born (which changes every game), and EINSTEIN will give the name of a battle that happened in that year. Write the year on a clean blackboard in a lesson MR CREAK's about to give, and when he goes to wipe it off he'll reveal his letter of the safe combination.

Now you have all the letters, you have to guess the order. MR WACKER, being the headmaster, always has his letter first, but the order of the other three teachers are random. Find a clean blackboard and guess the combination, and try to jump and open the safe. If it doesn't work, try a different combination.

Once the safe is open and the report is removed, all that's left to do is hit all 15 shields again to turn them off.

! Actual route

The safe combination is chosen when the game starts, and stored at 0x7F9F; it doesn't work before all shields have been hit, but it does work before you've revealed any letters. So we simply have to hit all the shields, enter the safe combination, open the safe, and hit all the shields again.

As the shields on the bottom floor require teachers to be in specific positions, we can only go as quickly as teacher movements allow us. To make matters worse, while the timetable has a randomised start position (there's a cycle of 64 lessons, arranged into groups of four "days" (although the game never acknowledges the end of a schoolday), and the game can start at the beginning of any of the four days) on loading the game, it will always start from the playtime at position 0x20. After the initial playtime, the first lesson has nobody in the reading room, so we can't hit the shields then, and must wait for the following lesson when MR WITHIT is teaching there. As a result, it should be possible to get a faster RTA time by starting and losing a game to shuffle the RNG a bit - but it's slower under TAS timing.

To begin with, we delay starting the game by a few frames to get a special playtime event (ANGELFACE has mumps). This prevents us from moving to begin with as we have to wait for the boy to tell us what's happening. However, on ending the conversation the in-game timer jumps ahead, shortening the playtime and allowing us to get into the lessons faster.

We wait underneath the shields on the left of the school. MR WITHIT comes charging down the stairs (due to a bug, all teachers run at the start of the game, when they should only ever run to chase ERIC) and we use him to hit two shields before casually strolling to the right and use him for a third there.

Firing catapults at teachers is, amazingly enough, against school rules; when a teacher is knocked over, he will blame the nearest named student if one is nearby. While we can stand outside of this range in nearly all cases, here ANGELFACE is nearby and therefore gets lines. This gives us points but also slows the game down - we try to avoid this whenever possible.

Next we fling a catapult at ANGELFACE so we can run past him - he has mumps, so if we run past him normally, we will catch mumps and get a game over (once MR ROCKITT finds out and expels us from school). We can't do anything else until more teachers get into position, so we hit all the shields on the top floor and then idle in the reading room until EINSTEIN tells MR WITHIT we're absent.

As MR WITHIT chases us down, we use him to get a few hits on the shields in the reading room before we otherwise would be able to - unfortunately, the shield on the far left is still unobtainable without a teacher actually teaching a class in there, and also unfortunately he gives us lines for being absent from class, but this is still much faster than the alternative.

The next lesson starts; we take out the remaining two shields on the bottom floor using MR WACKER, and then wait for MR WITHIT to get into position to hit the final shield. At this point, waiting to avoid lines is generally slower than just taking them and running, so we do that. We write the safe combination on the board that MR WITHIT has just finished wiping (and was about to write on himself). A quick run to the safe and back and we can quickly turn off the problem shield while MR WITHIT is still in position, knocking out the rest in the reading room as he leaves the class.

We turn off the top-right shield and use MR ROCKITT to turn off the two on the right on the bottom floor; at this point, MR CREAK is already chasing us for being late, so we quickly run to intercept him just under the remaining shields on the bottom floor, and then beeline for the remaining shields to turn them off and complete the run, having spent exactly zero time in class and before morning breaktime.

After ending input, ERIC gets a few more lines for idling in the wrong classroom and then gets expelled, also before morning breaktime.

!! Other comments

Skool Daze and Back to Skool were two incredible games that were unlike anything else at the time; an open-world sandbox that's fun to play even without trying to complete game objectives, with characters that have their own routines and personalities, and went on to inspire many other games, most notably Rockstar's Bully.

Special thanks go to David S. Reidy for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
