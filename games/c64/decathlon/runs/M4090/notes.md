> **Imported**
> This run was originally published at https://tasvideos.org/4090M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is a second attempt at this game. Included in these submission notes is the original submission information along with new information regarding game mechanics and some new thoughts regarding scores posted elsewhere on the web.

!!!Decathlon for Commodore 64
Compete through the 10 track & field events of Decathlon for the highest score.

Anyone familiar with NES Track & Field will see similarities.

!!TAS Notes
*BizHawk 2.3.2 (Rerecords are broken, so I set them to 0)
*Game is a cartridge version
*Uses NTSC Sync Settings (as the predecessor run should have done, but didn't)
*Goal remains highest achievable score in the fastest time.
**Unfortunately a wait is necessary for the CPU to finish running events which adds some time.  While a 2-player game would speed up race events, even scratching out non-timed events with player 2 would take longer than simply waiting for the CPU to finish races.

!!Pertinent Game Mechanics
__Running (for Time) Events__%%%
For running events (100m, 400m, 110m Hurdles, and 1500m) the speed value is stored in RAM address 0x74.  At race start, this value is set to 14h.  Then the following code is utilized each frame to determine speed of the runner.
||Address||Assembly Code||Operand||Effect/Notes||
|97FA|A5 74|LDA $74|load current speed into accumulator|
|97FC|ED 05 18|SBC $1805|subtract the value in $1805 (always subtracts 1 for our purposes)|
|97FF|B0 02|BCS $9803|Conditional branch(always branches for our purposes)|
|9803|85 74|STA $74|Save new speed value|
|9805|A5 44|LDA $44|load controller direction pressed into accumulator|
|9807|29 0C|AND #$0C|logical AND to accumulator|
|9809|AA|TAX|data transfer to X register|
|980A|C9 0C|CMP #$0C|compare direction pressed to neutral joystick position|
|980C|F0 17|BEQ $9825|branch if no direction is pressed|
|980E|C5 23|CMP $23|compare direction to previous frame's pressed direction|
|9810|F0 13|BEQ $9825|branch if these are equal|
|9812|A9 85|LDA #$85|load 85h into the accumulator|
|9814|38|SEC|Set the Carry Flag|
|9815|E5 74|SBC $74|subtract the current speed value|
|9817|4A|LSR A|Logical Shift Right on the accumulator(effectively divides by 2 and rounds down to the nearest whole number)|
|9818|4A|LSR A|Logical Shift Right on the accumulator(effectively divides by 2 and rounds down to the nearest whole number)|
|9819|4A|LSR A|Logical Shift Right on the accumulator(effectively divides by 2 and rounds down to the nearest whole number)|
|981A|18|CLC|Clear the Carry Flag|
|981B|65 74|ADC $74|add current speed back in|
|981D|C9 78|CMP #$78|compare the speed value to 78h|
|981F|90 02|BCC $9823|branch if below 78h (if not, the code executed will directly set speed to 77h)|
|9823|85 74|STA $74|store accumulator as new speed value|
Once speed equals 77h, the above calculation yields a value of 77h meaning it no longer increases.
This code shows us that the maximum speed attainable is 77h and the fastest way to accomplish it is changing joystick direction every frame.
As all running events start at 14h, this calculation means max speed is reached in 25 frames of the race starting and is then sustained through the race.%%%
For the Hurdles, no speed is lost during jumps; but hitting a hurdle slows down the runner.

__Jumping (for Height/Distance) Events)__%%%
For jumping events (Long Jump, High Jump, Pole Vault) the speed value is stored in RAM address 0xA2.  At race start, this value is set to 14h.  Then code equivalent to that above is utilized each frame to determine speed of the runner.

''For Long Jump''%%%
Horizontal speed is sustained from running speed.  Vertical arc timing is not affected by horizontal speed, and always takes the same number of frames regardless of input.

''For High Jump''%%%
Horizontal speed is based off running speed.  Vertical arc timing is not affected by horizontal speed, and always takes the same number of frames regardless of input.  The Y-value at the top of this arc is 73h (lower value = higher on the screen).  This is the highest the character can jump.  This Y-position of 73h is not sufficient to clear a 2.4m bar height regardless of horizontal speed; freezing the value at this peak of the arc will still impact the bar at 2.4m.  Therefore 2.2 is the maximum achievable.

''For Pole Vault''%%%
Horizontal speed is based off the running speed a the point where the pole plants into the ground.  Upon planting the pole in the ground, the speed decreases by 7 every three frames.  Vertical elevation increases along a set sequence every 3 frames as well.  At the point of releasing the pole, horizontal speed is sustained through the remainder of the vault.  Vertical position changes along a set arc after the point of release (number of arc frames is unaffected by horizontal speed).  Thus, to succeed in pole vault, the combination of release point elevation and horizontal speed must be sufficient to clear the bar.%%%
When attempting 4.8m, it is impossible to achieve a combination of release elevation and horizontal speed sufficient to clear the bar.
At release points high enough in vertical relation to the bar, the horizontal speed has decreased too far to allow rapid enough horizontal movement to clear the bar.  Although releasing at an earlier point of elevation will yield faster horizontal speed, not enough elevation is achieved to clear the bar.  Thus the maximum achievable height is 4.6m%%%
If 4.8m were able to be cleared,  the point value awarded would be 1005 (this award value can be seen for each attempt in RAM address 0x4c).%%%
Based on my testing, it's impossible to achieve a score of at least 1000 to yield the trumpet fanfare.

__Throwing Events__%%%
All three throwing events (Shot Put, Discus, Javelin) again store speed in 0xA2 and again use the above calculation to alter speed.  For Shotput and Discus, the starting value is 10h instead of 14h.  While this is a different start value, it doesn't affect the time it takes to reach a value of 77h (again 25 frames).%%%
For all these events, horizontal throw speed is based on this value at the point of release.  Vertical arc always takes the same number of frames regardless of horizontal speed.  Further, the height of the vertical arc is always the same regardless of running/throw speed; meaning the height of throw can't be affected.%%%
This essentially means that the only way to affect throw distance is via speed and release point (which this run always does on the last possible frame).  Max Speed + Last Possible Release Frame = Max Distance

!!Run by Event:
100 Meter Dash (Score 1435)
*In-game time = __8.65 seconds__
*Actual world record = 9.58 seconds (Usain Bolt 2009)

Long Jump (Score 1284)
*In-game distance = __9.37 meters__
*Actual world record = 8.95 meters (Mike Powell 1991)
*Instant jumps on attempts 2 & 3 to minimize time spent (faster than running past scratch line).

Shot Put (Score 1260)
*In-game distance = __23.57 meters__
*Actual World Record = 23.12 meters (Randy Barnes 1990)
*Immediate weak throws on attempts 2 & 3 to minimize time (faster than running past scratch line).

High Jump (Score 1025)
*Because there is no option to set initial height on the bar, multiple attempts that clear the bar are necessary for maximum score.
*In-game max height cleared 2.2 meters
**I was unable to clear 2.4 meters with any input combinations that I tried.  Three running scratches are done at 2.4m to move to next event (faster than immediate jumps--Either I erroneously did this event the other way in the previous submission, or it was an NTSC/PAL issue).
*Actual world record = __2.45 meters (Javier Sotomayor 1993)__

400m (Score 1360)
*In-game time = __38.90 seconds__
*Actual world record = 43.03 seconds (Wayde van Niekerk 2016)

110 Hurdles (Score 1259)
*In-game time = __11.55 seconds__
*Actual world record = 12.80 seconds (Aries Merritt 2012)

Discus (Score 1239)
*In-game distance = 71.55 meters
*Actual World Record = __74.08 meters (Jürgen Schult 1986)__
*2 running scratches is faster than instant throws.

Pole Vault (Score 957)
*Because there is no option to set initial height on the bar, multiple attempts that clear the bar are necessary for maximum score.
*In-game height = 4.6 meters
**I was unable to clear 4.8 meters with any input combinations that I tried.  Three running scratches at 4.8 meters are performed to end the event.
*Actual World Record = __6.16 meters (Renaud Lavillenie 2014)__

Javelin Throw (Score 1210)
*In-game distance = 100.96 meters
*Actual World Records (before and after javelin specification changes of 1986 and 1991)= __104.80 meters (Uwe Hohn 1984)__ &  98.48 meters (Jan Železný 1996)
*Running scratches used for attempts 2 & 3 to end event.

1500m (Score 1065)
*In-game time = 3:33.43
*Actual World Record = __3:26.00 (Hicham El Guerrouj 1998)__

__Total Score = 12,094 points__
*Actual World Record Score = 9,126 points (Kevin Mayer 2018)


!!Scoring Considerations
This TAS uses joystick inputs for the events.  According to https://www.c64-wiki.com/wiki/Decathlon it is possible to achieve a higher total score using something referred to as a keyboard cheat.%%%
{{"Playing with the keyboard a player can accelerate better by keeping the arrow keys pressed and thus hold high speeds."}}%%%
The C64 cursor buttons (arrow keys) are not like the modern standardized layout, but instead contain all four directional movements on only two keys (shift is used to change direction).  These cursor keys do not work for this game.  Actually no keys affected the running speed when I tested in BizHawk; so I'm unsure what keyboard inputs are being referenced by this website.  It is perhaps referring to joystick emulation on a modern keyboard, but this is only speculation.%%%
If keyboard input did somehow make it possible to beat this submission's time, it would have to do so by somehow breaking the above noted mechanics.  Therefore, I'd guess that the cheat mentioned on that page is in relation to joystick emulation.%%%
I'd also suggest that the score posted on that site using the "keyboard cheat" (which is much higher than this submission) may be explainable. 
The final time and score of the 1500m as shown in the picture of this run doesn't mesh with this submission.  The picture shows a time of 3:33.60 with a score of 1071, yet this submission which achieves a faster time of 3:33.43 is only awarded 1065 points.  When altering the TAS to match the time of 3:33.60, the awarded points are only 1063.  This point value discrepancy makes me question the validity of the pictured run.  Explanations I can think of for this discrepancy are:%%% 
__1)__  Emulation Errors -- That break the known mechanics%%%
__2)__  Version Difference -- Scores for running events in the version used for this submission (NTSC) start at a maximum value and decrease each frame until the player crosses the finish line.  If the amount of score decrease per frame was not adjusted for the framerate difference in a PAL version, the end score would be higher on a PAL version due to fewer frames occurring over the same real time frame.  Fewer frames means fewer score decreases yielding a greater end score.  This would constitute a programming oversight in the PAL release assuming timing per frame was corrected. This could explain the higher scores, but is only speculation until someone is able to test a PAL released version.%%%
__3)__  Fabrication -- Sadly, this is also a possibility.

!!Records
In the TAS notes section, I boldfaced the better result between this TAS and the actual current world records.  While all of these actual records have been set since the game was made, ''I find it interesting that the programmers didn't make it possible to beat records that existed before the game was published.'' It was made in 1983 and released in 1984.  With the exception of Javelin Throw, all the events that have current world records which beat the TAS, also had records by the end of in 1983 that would have beat the TAS as well.
*Records at the end of 1983
**High Jump: 2.38 meters
**Discus: 71.85 meters
**Pole Vault: 5.83 meters
**1500m: 3:30.77

!!Potential Questions
''Could this score be beaten regardless of time?''%%%
Two possibilities:%%%
1 -- If someone were able to discover input variation __that would break the known mechanics__ and allow for higher clearances of High Jump and Pole Vault, this score could be beaten.  I was unable to find any.  This would also result in increased TAS length.%%%
2 -- A run using a PAL timed version (if one exists) that doesn't also correct for point loss variation in running events (as described above), may be able to achieve a higher score.

''Could the TAS time be beaten regardless of score?''%%%
Absolutely.  Scratching out on all non-timed events would result in a faster TAS, but a much lower score.  FWIW this would be effectively not completing or 'losing' various events based on the rules of the sport.

''Could the time be beaten with equal or higher score?''%%%
To my knowledge based on the the input permutations I've tried and the study of the game's code, I don't believe that this score could be achieved in less time...unless someone can find a way to speed up the CPU runner in running events.
