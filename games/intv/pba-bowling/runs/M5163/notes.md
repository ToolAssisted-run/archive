> **Imported**
> This run was originally published at https://tasvideos.org/5163M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!PBA Bowling - Game 2: Pick-Up Spares (Max Score)
It's even more bowling!

!!Game Notes
*This run completes a challenge mode which tasks the player with knocking down 10 frames worth of spares to earn points.
**As each frame can be any of 32 different pin layouts, the game cannot be completed by simply repeating the identical inputs for each frame.
***Even when two bowling frames have the same pin layout, RNG can prevent identical input from working in both frames.
**The player is given 2 attempts on each frame to pick-up the spare.  A higher score is given for accomplishing this in 1 throw as opposed to 2 throws.
***Obviously doing so on the first attempt is also faster.
*This is a __Max Score__ submission of this mode.
**Each varied pin layout has a given point value which are described in the [https://www.gamesdatabase.org/Media/SYSTEM/Mattel_Intellivision//Manual/formated/PBA_Bowling_-_1980_-_Mattel_Electronics.pdf|the manual].
**By manipulating RNG, it is possible to only get layouts that provide the higest possible score of 30 points per bowling frame
***There are two possible pin layouts with this score, and both are seen in this TAS.
*''This run is a new branch submission.''

!!TAS Notes
*Optimization
**Game settings
***Uses a (supposedly) easier setting of low lane slickness to allow for more responsive curves to the rolls.
****This may be moot given controller glitches that are used to affect the ball movement anyway (more on this later)
***Bowler hand dominance explained under 'Targeting'.
***Ball Weieght - Heavier balls result in greater post-impact pin action.
**Targeting
***Bowler's throwing hand determines direction of curve (left handed bowlers curve right, and right handed bowlers curve left)
***The targeting portion of the approach occurs before the bowler starts moving toward the lane, and the targeting (white) ball always starts at the top (left) of the lane sweeping downward (right).
***Uses a left handed bowler, because using a right handed bowler would require waiting longer on each frame for targeting purposes before throwing the ball.
**Curves and loft allow for both earlier and more controled throws.
***Curve and loft application occur while the bowler is in the swing phase of the approach animation.  Thus the degree of curve and ball control can be altered without delaying the throw itself.
***The last ball of the 10th frame takes slightly more time in targeting which delays the throw itself; but this allows for foregoing loft, yielding earlier end to input.
**Uses RNG manipulation
***The pin layout of each frame is RNG dependent.
***Input timing affects the RNG of the game and is manipulated to yield only pin layouts providing maximum score (30 points) opportunities.
***RNG is also maniuplated through glitched pausing to affect both pin tumbling and the pin layout of future bowling frames
*Due to necessary time-dealyed RNG manipulation, this run is longer than the __Any %__ run.


!!Controller Glitches
Some backstory first: Spikestuff (politely) goaded me into doing a standard run of this game once standard runs of bowling became acceptable on the site.  As I have recently begun to investigate RNG maniplation a bit more while TASing in general; I used [4398M|my old Pick-up Spares run] as a test canvas to see if I could use the Player 2 controller to manipulate RNG on the various spare layouts.  While messing around with P2 inputs, I discovered that pressing multiple number buttons on the P2 controller had various effects on the run that weren't possible while only using the P1 controller.  The following are the 4 effects that I discovered.

*Pressing both __1 and 9__ on P2 controller pauses the game.  Pressing any number button then resumes the game.  
**This is used in this run for RNG manipulation.
*Pressing both __1 and 6__ moves the bowler up (left) along the lane during the targeting portion of the approach.
**While moving up the lane is normally possible before throwing a ball, it is normally required to do so separate from the (white) ball targeting.  This glitch allows for simultaneous (white) ball targeting and bowler positioning.
**Using this technique (in combination with the following two) allowed for earlier throws, significantly minimizing the time that targeting takes over just using P1 controller.
*Pressing either __0 and 1__ together, or __1 and 2__ together produces a stronger curve than is otherwise possible using only P1 controller.
**__1 & 2__ is a stronger curve than __0 & 1__
**This is used extensively to allow for earlier throws by making the ball curve harder and avoid falling into the left gutter on throws that would otherwise land there using otherwise identical targeting.
**These glitched curve controlls don't seem to be drastically impacted by the lane slickness setting with the slight differences noted possibly being attributable to RNG changes.  I don't even know how to go about testing which is actually the case. But as the difference in viewing is essentially negligible, I chose the less slick lanes in the game settings as mentioned above.

!!Potential Improvements
*As I don't completely understand exactly how the P2 controller imputs are affecting the various variables, it's possible that someone could find more efficient use of the input glitches to yield an even faster run.
*In theory, it may also be possible to better manipulate RNG to yield more effective pin tumbling on earlier throws that would knock down all the pins.  Though I believe this method of improvement is much less likely than in an __Any %__ or __Standard Game__ run.
