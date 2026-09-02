> **Imported**
> This run was originally published at https://tasvideos.org/5151M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!PBA Bowling - Game 1: Standard game of Bowling
It's bowling.

!!Game Notes
*As standard games of bowling are now acceptable for the site, this run attempts to complete a standard game as fast as possible.
**As the fastest normal way to complete a game of bowling is to get all strikes (fewest rolled balls), this run does just that.
**While one could argue that it's technically faster to roll a gutter ball on the final ball of the 10th frame, this run choses an additional strike for three reasons.
***Speed/Entertainment trade/off
***By sacrificing the few extra frames to get a strike instead of a gutter, this run also becomes a Max-score run along side being an any% run for a standard game of bowling.
***Frankly, getting a gutter in bowling is the equivalent of failing at the intended goal of knocking down pins.  Therefore, I contend that getting a gutter qualifies as a failure to accomplish the goal of the game, and thus guttering on the last ball does not "complete" the game.
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

!!Controller Glitches
Some backstory first: Spikestuff (politely) goaded me into doing this run after standard runs of bowling became acceptable on the site.  As I have recently begun to investigate RNG maniplation a bit more while TASing in general; I used [4398M|my old Pick-up Spares run] as a test canvas to see if I could use the Player 2 controller to manipulate RNG on the various spare layouts.  While messing around with P2 inputs, I discovered that pressing multiple number buttons on the P2 controller had various effects on the run that weren't possible while only using the P1 controller.  The following are the 4 effects that I discovered.

*Pressing both __1 and 9__ on P2 controller pauses the game.  Pressing any number button then resumes the game.  
**While not used in this run, this effect does allow for RNG manipulation during Pick-up Spare runs.
*Pressing both __1 and 6__ moves the bowler up (left) along the lane during the targeting portion of the approach.
**While moving up the lane is normally possible before throwing a ball, it is normally required to do separate from (white) ball targeting.  This glitch allows for simultaneous (white) ball targeting and bowler positioning.
**Using this technique (in combination with the following two) allowed for earlier throws, significantly minimizing the time that targeting takes over just using P1 controller.
*Pressing either __0 and 1__ together, or __1 and 2__ together produces a stronger curve than is otherwise possible using only P1 controller.
**__1 & 2__ is a stronger curve than __0 & 1__
**This is used extensively to allow for earlier throws by making the ball curve harder and avoid falling into the left gutter on throws that would otherwise land there using otherwise identical targeting.
**These glitched curve controlls don't seem to be drastically impacted by the lane slickness setting with the slight differences noted possibly being attributable to RNG changes.  I don't even know how to go about testing which is actually the case. But as the difference in viewing is essentially negligible, I chose the less slick lanes in the game settings as mentioned above.

!!Potential Improvements
*As I don't completely understand exactly how the P2 controller imputs are affecting the various variables, it's possible that someone could find more efficient use of the input glitches to yield an even faster run.
*RNG does have an effect in Standard Bowling in controlling how the pins tumble after being struck by the ball.
**In theory, it may be possible to manipulate RNG for better tumbling on earlier throws that will knock down all the pins.  I did not extensively test this theory for a standard game as each pin's tumble seems to be individually RNG controlled based on my testing/use of this method of RNG manipulation in my Pick-up Spares runs.
