> **Imported**
> This run was originally published at https://tasvideos.org/4003M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Duck Hunt
It's not that complicated....you shoot ducks.

!!Why Duck Hunt?
The current [2166M|publication] for this game is essentially just a playaround.  It includes one level of each game mode, but doesn't really complete any of the modes.  As it's a playaround, it really shouldn't be in the vault, which is where it currently resides.

While there are three game modes as options, these aren't exactly difficulty differences. They're more like three individual (though similar) games on one cart.  They are even labeled as GAME A/B/C not MODE or DIFFICULTY.  As such, it is my opinion, that each mode could be run as a separate game/branch.  Further, each mode's eligibility for vault should be determined individually, not based on either of the other game modes.

Therefore I am presenting ''Duck Hunt: Game B - 2 Ducks''

But before that...

!!A Bit of History
While most gamers are familiar with Duck Hunt, what many may not know is that the video game we know and love (or hate) was NOT the first incarnation of Duck Hunt.  In 1976 Nintendo released Kôsenjû Duck Hunt, an electro-mechanical game that follows the same premise as the video game...shoot the flying ducks.  Essentially, Kôsenjû Duck Hunt projected a duck onto a wall and you shot that duck.  The system determined if you hit the duck or not and, if so, the duck fell.

Here's a video of the game from from __Before Mario__, a collection/encyclopedia of toys and games made by Nintendo before their video game fame.  __For video of ducks being shot, skip to about 50 seconds.__%%%
[module:youtube|v=aJOkrp7VG60]

For more information on this original version of Duck Hunt see the following links also from __Before Mario__.%%%
[http://blog.beforemario.com/2012/09/nintendo-kousenjuu-duck-hunt-1976.html|Basic info on Kôsenjû Duck Hunt]%%%
[http://blog.beforemario.com/2012/10/nintendo-kousenjuu-duck-hunt-how-it.html|More details on how it worked]

!!TAS Notes
*Goal: 'Beat' Game B as quickly as possible
*Uses HEAVY luck manipulation!!!
*Plays through 27 levels of 2 Duck mode
*Due to the repetitive nature, this is clearly an attempt at a vault run.
*Final input occurs 4 frames after the last button press - this is when the system reads the position the gun is pointing at on the screen.  If the movie is ended prior to this frame, the final duck is missed and thus the game is lost.

__Why Game B, and why 27 levels?__%%%
While it does technically have an defined ending with the kill screen, Game A is quite trivial to TAS. As mentioned by feos in his [6345S|rejection] of a recent Game A submission, all that is required is to watch a RAM value for where the duck is when it first appears and make sure it's shot.  Further, each duck's appearance is determined by a timer that counts down after the dog jumps or hides back down behind the grass.  The timer always starts at 47 after the dog is gone.  Therefore the timing is consistent and the position of the duck is always known, making the TAS trivial.

The addition of a second duck makes all the difference from a TASing perspective.  In 2-Duck mode, the 47 frame timer before the first duck appears remains, so this portion of the timing is consistent.  HOWEVER, once the first duck appears the timer is then reset based on RNG; it's set to any number between 0-64.  This delay for the second duck happens to be manipulable via input.  Therefore, TASing is no longer trivial due to RNG manipulation.

''Challenge 1'': determine the ideal delay between ducks.%%%
At first it may seem that a delay of 0 frames would be ideal to get both ducks out at the same time.  Unfortunately, firing the gun takes two consecutive frames of holding the trigger, and then a few frames pass while the system processes that shot.  During these frames the second duck would be able to fly around.  In doing so it would gain altitude, thus requiring more frames to fall down after it was subsequently shot adding unnecessary frames to the run.  So determining the timing to shoot both ducks as soon as possible and at the lowest possible altitude was in order.  The timer for the second duck's release is paused during the processing of the first shot.  All this combined together makes the ideal timer countdown for the second duck to be set to 3.

It unfortunately was not possible to always force a 3 in the delay timer.  When this was the case, a 4 was usually possible.  While 2 was also possible and would allow for shooting the 2nd duck one frame earlier than a 4, it would again require a wait for the duck to fall down after being shot, so 4 ended up being better in my testing.

So once determining the ideal delay at 3, most of the TASing was finding a way to manipulate this.  There are a few other time save opportunities included as well.

''Challenge 2'': Missing ducks.%%%
In the first 19 levels, it's possible to miss one or more ducks without getting a "Game Over."  Doing this prevents the "Perfect!" dialogue box from appearing which would otherwise add unnecessary frames.  The wait for the duck to fly away after missing it was shorter than the "Perfect!!" dialogue. 

When a duck needed missed, the goal of RNG manipulation was to get it to fly away as quickly as possible.  For these ducks, I tried to manipulate the delay for the 2nd duck to be less than 3 (ideally 0).  This way the 2nd duck had opportunity to gain altitude while we were shooting the first duck making it closer to the top of the screen when we missed shooting it allowing it to leave the screen as early as possible.  

Missing both ducks (where a level would allow) was not faster, as the giggling dog animation takes longer than the animation to hold up the dead duck.

Beginning with level 20 all ducks must be hit to proceed, so this strategy becomes no longer usable.

''Challenge 3'': Determining the end point of this mode.%%%
While ''1 Duck mode'' has a kill screen, this mode does not.  Therefore it can be considered an endless game by our rules.  Therefore it was necessary to determine where the game 'ended' for TASing purposes.

As mentioned before, I don't consider the different modes to be different difficulty levels.  Yet this game does, in fact, have a difficulty curve.  Various aspects of the game change as progression through levels occurs:
*The number of ducks needed to be hit increases
**Levels 1-10: 6 out of 10 ducks must be hit
**Levels 11-12: 7 out of 10 ducks must be hit
**Levels 13-14: 8 out of 10 ducks must be hit
**Levels 15-19: 9 out of 10 ducks must be hit
**Level 20 onward: All 10 ducks must be hit
*The average speed of the duck increases until level 27
*The duration of time the duck is on the screen decreases until level 20
*The size of the ducks' hit-boxes decreases until level 27
As the final level where any of these changes occur is level 27, this can be considered the final introduction of new content.  Therefore beating level 27 is the end of this game mode for TASing purposes.

Most of this information regarding difficulty comes from [https://guiguilegui.wordpress.com/2017/09/25/duck-hunt-ducks-flight-analysis/|here].

''The Last Duck''%%%
For the last duck, it didn't matter if the delay timer was below 3.  Only in this case, the time needed for the duck to fall after gaining altitude doesn't impact the timing any future inputs.  Therefore I manipulated a 0 allowing this duck to gain altitude and actually be seeing getting shot.

!!Potential Improvements
*As the timing of this run is very heavily RNG dependent, it's possible someone else could find a better method of manipulating the RNG to yield a better sequence of RNG and further improve the timing delays.
*Missed ducks - Most of the time I missed the last duck.  However it's possible to miss any previous duck in the sequence.  It's possible doing so would affect RNG differently thus changing the entire subsequent sequence of RNG.

!!Further thoughts on TASing Duck Hunt
*Game C - Clay Shooting uses much of the same mechanics as 2 duck mode in regards to timing.  Therefore a TAS of Game C would also be non-trivial to optimize.  I have not however found any specific information on the difficulty curve of this mode, so I don't know how many levels would need completed.
*If the staff doesn't agree with my perspective that the three modes are in fact three separate games, I have completed a similar TAS to the current publication.
**Mine is faster due to RNG manipulation, and only shooting as many clays as necessary to beat the first level of Game C.
**In the event that this submission is rejected for only showing one mode, I will submit that TAS in attempt to obsolete the current publication.  My opinion though is that the current publication shouldn't be vault eligible.
**If the staff feels that a complete game is defined by requiring all 3 modes to be completed to their respective 'end' points, work will need done to determine the endpoint of Game C, then a TAS will need created from scratch.  
***It's possible that the above referenced rejected submission could be used as a starting point then just adding in Game B and Game C. But even with a 'reset' press, the RNG may be different for Game B in that situation; meaning my inputs likely won't sync.

!!Final thoughts
I feel like I've forgotten something, but I have no idea what it may be at this point.  I suppose I'll add it in if I remember.
