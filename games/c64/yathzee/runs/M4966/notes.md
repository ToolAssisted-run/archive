> **Imported**
> This run was originally published at https://tasvideos.org/4966M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Yathzee
Yeah, yeah...don't get me started on that spelling. That is exactly the way it is spelled within the game.

Anyway...this was a TAS that I did for my wife, who is a Yahtzee nut! In fact, she helped me to confirm that I played the game correctly. It was done about a year ago for fun, because we wanted to see how ridiculous it would be to see a "Max Score" run of this. Now that the rules have changed to allow board games, I decided to give this a submission.

!!!Console / Game Choice
I searched among many consoles to find a version that I liked. While some had decent graphics, the ability didn't exist to "Brute Force" the RNG necessary to make the dice values for a perfect run. I eventually ended up finding a version on the Commodore 64 that had good graphics. At first, I wasn't able to control RNG without letting the game run extended amounts of time. Eventually, I found a method to control the game code; thus, giving me the "Dice Rolls" for a perfect game. Now, the results of that effort are available.

!!!Tools Used
*Bizhawk 2.6.3 (Like I said, I did this a long time ago)
*Ram Watch
     0x8AFD (Dice 1)
     0x8AFE (Dice 2)
     0x8AFF (Dice 3)
     0x8B00 (Dice 4)
     0x8B01 (Dice 5)     
*Lua Script (Brute Forcing)
     Brute forcing of RNG to force the Ram Watch addresses to produce the values necessary for this perfect run.
     In this case, inputs (Fire Button, Up, Down, Left, and Right) are used to affect RNG, via the joystick attached to Player 
     2's port. Throughout the run, RNG was forced between 1 and 3 frames, before the code made a decision on a dice's value. 
     This routine is a true brute force and was designed specifically with the C64 emulation in mind...where it is among 
     the slowest of all emulation. If I used methods from other games I've BOTed, then it would have taken much more time. 
     Fortunately, this was easily done in about 1 to 2 hours.

!!!Goals
This TAS strives for "Max Score". In regards to time, another problem was considered...Sound. The "Options", at the start of the game, allow for sound to be turned off. Doing so, causes the game run faster, due to supressing the "Speaking Voice". Because I wanted to demonstrate the capabilities of the C64, I decided to use the "Sound" version. For those interested, I have included an encode to show how fast this "Soundless" version ran. In this alternate version, the difference in speed is about 43 seconds. This version was TASed separately, as all the "Brute Forced" inputs occurred on a different frame in contrast to the submitted version.

[module:youtube|v=JlM9NLZKodI]

!!!Display Glitchyness :)
It is obvious that the designers never believed that a person could ever see a score high enough to test the limits of their game. In this case, any score above 999 will break the display. From what I can tell, the logic used to increment the numbers was done differently for each digit.
Before I break down the counting logic, here is what the Commodore PETSCII table looks like, for characters used to demonstrate the score:
|| PETSCII Code || Character Displayed ||
|48|0|
|49|1|
|50|2|
|51|3|
|52|4|
|53|5|
|54|6|
|55|7|
|56|8|
|57|9|
So, as you can see...where ever these values are stored on the screen, all that is needed is to add a value to the existing PETSCII code and you will get a number. Now, the problem is...there is no check on the 3rd digit, where you will start noticing a breakdown in the display.

*Digit One: Any score above 9 will trigger the Digit Two to increase and reset the digit One accordingly.
*Digit Two: Any score above 9 will trigger the Digit Three to increase and reset the digit Two accordingly, BUT!!!! Below is where the problem starts. 
*Digit Three: There is no test on Digit Three, so it will increase without checking the characters being displayed. For the Commodore PETSCII characters, values above 9 will show differently. 

|| PETSCII Code || Character Displayed || Trying to represent ||
|58|:|10|
|59|;|11|
|60|<|12|
|61|=|13|
|62|>|14|
|63|?|15|

As you see, the final score on the conclusion screen is "?05". This can be reversed engineered by using the above details. So, we can infer that our ending score is "1505". So why is the score still not up to the expected perfect value of 1575. I'm puzzled at this, but the breakdown comes from applying a Yahtzee on the "Small Straight" and "Large Straight". If you watch the score, the bonus is applied but not the score...where "30" and "40" are expected to be added. I retried the order and it appears that the combo is missed as a rule, yet it correctly scores a straight when done as a sequence of correct numbers. I also notice that it doesn't say the words for these selections, which could be a part of the issue. So, adding 70 to our final score gives us 1575.

!!!Yahtzee Perfect Scoring
I decided to show some evidence of a perfect game, which I used as a secondary confirmation on my run. Here is the site, that explains a perfect game of Yahtzee.

https://www.gusworld.com.au/blog/2016/10/09/whats-the-maximum-score-you-can-get-in-yahtzee/

!!!Special Thanks
*SOYZA (My Wife) who inspired me to make this TAS, and for helping in figuring out the details of the game play.
*[user:DrD2k9] who talked with me about the validity of this submission.
*[user:feos] who also helped me to confirm my concerns about this details of a broken game.
