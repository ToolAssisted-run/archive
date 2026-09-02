> **Imported**
> This run was originally published at https://tasvideos.org/4398M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!PBA Bowling - Game 2: Pick-Up Spares
Um...it's bowling.

!!Game Notes
*As standard games of bowling are not acceptable for the site, this run completes the challenge mode which tasks the player with knocking down 10 frames worth of spares to earn points.
**As each frame can be any of 32 different pin layouts, the game cannot be completed by simply repeating the identical inputs for each frame
**The player is given 2 attempts on each frame to pick-up the spare.  A higher score given for accomplishing this in 1 throw as opposed to 2 throws.

!!TAS Notes
*Uses a challenge mode to comply with rules for acceptance of a bowling game.
*Optimization
**Uses a left handed bowler so the ball curves to the right when curve is applied to a roll
***The targeting portion of the approach occurs before the bowler starts moving and always starts at the top of the lane sweeping downward; thus using a right handed bowler requires waiting longer on each frame for targeting purposes before throwing the ball.
**Uses very strong curves through application of curve and loft on nearly all frames to minimize targeting time and throw the ball sooner.
***Curve and loft application occur while the bowler is in the swing phase of the approach animation.  Thus the degree of curve can be altered without delaying the throw itself.
***The 10th frame takes more time targeting, but foregoes loft to end input sooner than would otherwise be possible.  This does very slightly delay the actual end of the animation.
**Uses RNG manipulation
***The pin layout of each frame is RNG dependent.
***Input timing during targeting and curve/loft application affects the RNG of the game and is manipulated to yield a series of pin layouts on the 10 frames that resulted in the shortest overall input time I could achieve.
*Completes the challenge mode as quickly as possible.
**A Max-Score run could be completed using different RNG manipulation to yield pin layouts that offer higher scores than ones demonstrated in this submission ([https://www.gamesdatabase.org/Media/SYSTEM/Mattel_Intellivision//Manual/formated/PBA_Bowling_-_1980_-_Mattel_Electronics.pdf|see manual])

!!Potential Improvements
*It's possible that someone could find a better sequence of pin layouts via RNG manipulation that may save time.  I completed multiple complete variations of this run and this submission was the shortest input time.

!!Acknowledgements
*It's Spikestuff's fault that I even looked into this game.
