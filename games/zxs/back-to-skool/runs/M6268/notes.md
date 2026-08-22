> **Imported**
> This run was originally published at https://tasvideos.org/6268M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Back to Skool is a sandbox game set in a school, and the sequel to Skool Daze. In Skool Daze, ERIC stole his report from the staffroom safe. Now he's rewritten it, complete with forged teacher's signatures, and has to get it back into the safe.

This time, ERIC has psychic powers (or incredible luck) and opens all locks without ever actually getting the combinations, and deposits his report before the first lesson is properly underway.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: +2A
* Aims to beat the game as quickly as possible.
* Manipulates RNG.

!! Comments

This is a tool-assisted speedrun of Back to Skool for the ZX Spectrum. It completes the 1 loop category, moving up a year as quickly as possible.

TAS timing (power on until last input): 22610 frames, 7:32.019

RTA timing (press a key to start the game until "ONTO THE NEXT YEAR" appears): 8986 frames, 2:59.648

! Model

The run is performed on the Sinclair ZX Spectrum +2A. Back to Skool does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and Skool Daze has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

As Back to Skool does not attempt to control its framerate, when there is more to process, the game runs slower. However, the game is generally processing all characters all the time anyway, and so this framerate only slows down when there are visual or sound effects to play (e.g. the player fired a catapult or got punched to the ground). The game also pauses to scroll the screen, or when a teacher gives lines, so these are generally avoided whenever possible.

! Intended route

Hidden in two random desks in the game (which can include the girls' school) are a water pistol and stinkbombs; you'll need both of these. Also appearing at random throughout the schools are mice, make sure to catch them as you go.

On the bottom floor near the classrooms are three cups; by filling these with water, you can knock them over and make them spill onto teachers' heads, causing them to reveal a number for the bike combination. When you have all the numbers, write them on a clean blackboard (in any order) to unlock the bike. Next playtime, leave the bike on the girls' school side of the gate.

Drop stinkbombs on both floors of the staff area when a teacher is nearby; this will cause the teacher to open the window. When all boys are inside the school and the front door is closed, fire a catapult out of the upper window to drop a conker onto ALBERT's head and knock him out, then water the plant next to the lower window and escape.

Water the plant next to the gate to climb over it and head into the girl's school. MISS TAKE will be teaching and have left her sherry cabinet open - release mice in her class to stop her from chasing and fill the water pistol with sherry. You won't be able to water plants anymore, so use the bike to get back over the gate and into school.

Fill the cups with sherry and make them spill on teacher's heads again, which causes them to reveal a letter for the science lab door. When you have all the letters, write them on a clean blackboard (in any order) to unlock the science lab, and catch the frog.

Next playtime, take the bike and ride it all the way into the kitchen in the girl's school, jumping from the seat to place the frog on the shelf. Wait for MISS TAKE to enter the kitchen and knock her over before bouncing a pellet off her head to make the frog jump down. She'll drop her key to the staffroom safe, so wait for MR WACKER to enter the room and sneak in behind him to access it.

! Actual route

The bike and science lab combinations are chosen when the game starts, and stored at 0x7F9C and 0x7FA0 respectively. They work from the very start of the game, so we can skip everything except unlocking them, catching the frog, dropping it on MISS TAKE, and reaching the safe.

Only MR WACKER can access the staffroom, so we have to wait for him to get there. Everything else is in service of minimising the number of times lines are given; we achieve zero.

We start by immediately running to the science lab and unlocking the door to get the frog, before running to the blue room to unlock the bike. We head straight to the bike and straight to the girls's school to get the frog in position, knock the frog onto MISS TAKE (without her seeing us do it), and then hide in the staff area and wait for MR WACKER to show up. Everything else is manipulated to avoid any unnecessary screen scrolling and visual effects, and when the lesson bell goes MR WACKER is as close to the staffroom as he can be.

!! Other comments

Skool Daze and Back to Skool were two incredible games that were unlike anything else at the time; an open-world sandbox that's fun to play even without trying to complete game objectives, with characters that have their own routines and personalities, and went on to inspire many other games, most notably Rockstar's Bully.

Special thanks go to David S. Reidy for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
