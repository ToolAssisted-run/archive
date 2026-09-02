> **Imported**
> This run was originally published at https://tasvideos.org/5985M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Kaboom!
The Mad Bomber is dropping bombs and it's up to you to put them out by catching them in buckets of water.

!!Game Basics
*The Mad Bomber sweeps randomly left and right while dropping a series of bombs.
*You play as the buckets of water at the bottom of the screen (starting with three).
*This game uses the Atari Paddle Controller as opposed to the joystick.
**Bucket position on the screen is tied to the analog value of the paddle controller.
*Missing a bomb results in losing one of the three buckets (bottom first, then middle)
**If all three buckets are lost, you lose.
**Passing a 1000 point barrier (1000, 2000, 3000, etc.) adds a bucket to the stack if there are less than three.
*There are 8 stages/groups of bombs
**Once stage 8 is beaten, all subsequent stages are the same difficulty as stage 8.
**At the end of each stage, the game pauses until the player pushes the button to continue into the next stage.
*Both the number of bombs per stage and their point values for catching them increase as stages increase.
||Stage||# of Bombs||Point Value/Bomb||Total Points for the stage||
|1|10|1|10|
|2|20|2|40|
|3|30|3|90|
|4|40|4|160|
|5|50|5|250|
|6|75|6|450|
|7|100|7|700|
|8|150|8|1200|
*The cumulative points through these first 8 stages is 2900.  Each stage thereafter adds 1200 points.
*At 10,000 points, the Mad Bomber's face changes from a scowl/frown to one of surprise due to him being impressed at your skill of play.
**If a bomb is dropped and explodes, the Mad Bomber's face changes to a smile.
*Once the score reaches 999,999 points, the game ends; the remaining bombs on the playfield stop and the buckets disappear.
**Achieving the maximum score requires 838 complete rounds and a partial 839th round.

!!TAS Notes
*The game offers two difficulties which are simply two different sized buckets.  __Easy__ has buckets that are twice as wide as the buckets in __hard__ mode.
**This run plays on __hard__ mode using the narrow buckets.
*The goal for this run was maxing out the score, not simply finishing the first 8 stages (which would be the minimum requirements for an any% run).

!!TAS Creation
Given that the control of this run is using a paddle/analog controller, manually entering all the values to catch each individual bomb would have been extremely tedious; so the run was almost exclusively made via bot.

I manually started the game and set the difficulty to hard mode in the first 2 frames.  The rest of the input was created via bot.  ''After realizing that the original submission was sub-optimal due to catching some bombs later than the earliest possible frame, I adjusted my approach and fixed this error.''

Tracking the bombs was a bit of a challenge as they aren't sprites.  Instead RAM was watched to see if a bomb was present in particular rows on the screen and then determined which horizontal position the bomb was at in order to move the bucket to the correct position.
There are 256 possible horizontal positions that the bombs can be in, but they don't simply increase from left to right.  Instead, the playfield is split into 8 vertical columns/regions.  The RAM value of a bomb's horizontal position is divided by 8 and the value of the remainder determines which vertical region the bomb will be present.  Within that region, the bomb position will vary depending on it's specific RAM value.  Due to this indirect method of positioning the bombs, their horizontal values did not line up with the buckets' horizontal value (which do simply increase left to right); ---and thus, I couldn't just simply track the bombs 1-to-1 directly with the buckets.%%%
I was able to create a bot that was able to track the bombs by first determining the region of the screen the bomb would be in, then determine if the bomb would be in the left or right half of that region; the narrow buckets only cover half a region.  ((The wide buckets would likely be able to handle an entire region but I did not test this directly.))  Once the location was known, the bot then wrote the correct analog value into the input sequence in TAStudio.%%%
While a few tweaks were needed in timing and movement to prevent a missed bomb, this was the basic bot approach for the whole run.--- ''In the fixed run, I ultimately did have the bot track the bombs 1-to-1 with the buckets.''

---Once I believed I had the bot working, I set it to start running before going to bed.  Thankfully upon waking, I found a completed run with no errors.---  ''With the redo of the run, I actually used 2 very similar bots that dealt with stage speeds differently.  The first bot was used for stages 1-7 and the second bot was used for the remaining stages''.

''Rewriting the bot allowed for me to watch a different aspect of RAM in order to position the buckets earlier in preparation for a bomb.  This allowed for catching all bombs at the highest point which saved time.  I believe the first 7 stages are optimal from everything I have assessed.  Stages 8 onward are __all __exactly 712 frames each (until the final stage, which is only partial; so it's shorter).  The bot monitored the starting frame of all these stages to ensure they landed on a specific frame.  If a round started too late, the bot would pause and alert me.  Thankfully, the final way the bot was written allowed for no manual tweaks necessary from stages 8 - 839, and the bot ran continuously through this entire aspect of the run.  On stage 839, I did manually tweak the last bucket movement to intentionally overshoot the bomb position and catch the bomb on the return to the center of the screen; this allowed for saving a few extra frames right at the end of the run.''

''Total time saved over the original submission is about 1 minute:  The last input of the Old version was on frame 600,018.  The new final input is frame 596,303.''

!!Human Comparison
I was able to find one video of a human actually reaching the 999,999 score (albeit with the wide buckets instead of narrow).
https://www.youtube.com/watch?v=aeKiml6aL1w  The player does miss bombs, and it takes about 30 minutes longer than this submission to achieve the maximum score.
