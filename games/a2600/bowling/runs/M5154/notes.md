> **Imported**
> This run was originally published at https://tasvideos.org/5154M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Yet more...
!!!Bowling
This is a TAS of the __Game 5__ mode of A2600 Bowling.  In this mode, the only action a player can take is positioning the bowler and throwing the ball.  There are no opportunities for ball control once it has been rolled.

!What, no encode???
*It's literally the bowler moving to the exact same spot at the center of the lane then throwing strikes on all bowling frames.

!Thoughts on ---Gameplay--- Gambling
*This TAS started as an experiment to even see if it was possible to get all strikes in this mode (spoiler: it is).  
*What I, unfortunately, learned is that this game is programed in a way __that effectively negates a player's skill at actually playing the game __
**Which I see as a bit of a jerk move (whether intentional or not) on the developers' part.  
*For clarification: This game has two RNG effects, specifically how pins move after being struck by the ball (or other pins) and how the ball deviates in its path after striking pins.  RNG thus affects which pins the ball will knock down itself and which pins will be knocked down by other pins.
**In all modes of this game, RNG is affected by the timing of when the ball is thrown.  
**Because of this RNG effect, it doesn't matter how good a player is at positioning the bowler (or knowing when/how to control the ball curve in other modes).  __Success of getting a strike is limited to whether or not the ball was thrown during a certain window of input frames.__  Then and ONLY then will the throw result in a strike even when the player has positioned the bowler correctly (and controlled curve correctly in other modes).  
*In my testing, the RNG results could be changed by shifting ball throw timing by 4 input frames.  
**This doesn't mean that the strike window was always only 4 input frames, but that simply that it ''could potentially'' be that brief.
*The major reason I have issues with this RNG approach is that there is no in-game indicator on which a human player could base their throw timing. Therefore it's impossible to know if a throw is in the strike window or not, even if the player could know for sure the bowler was positioned correctly.
**This effectively makes every throw little more than a ''gamble ''at a strike instead of actually rewarding skilled play.  Thus this game is essentially ''gambling ''for a high score.

ok enough soapbox ranting....
!TAS Notes
*As mentioned above, the only controllable features in this mode are where to position the bowler and when to throw the ball.
*In my testing, I was only able to get a strike, with the bowler positioned dead center of the lane (a value of 15 in RAM address 0x28).
*After positioning the bowler on the first bowling frame, throwing immediately did not yield a strike.  Thus input frames needed delayed to accomplish a strike on this bowling frame.
*Luckily, from a TAS perspective, all subsequent bowling frames did yield strikes when throwing immediately after positioning the bowler.
**This shows a regular pattern of RNG timing for strike windows; so, thankfully, only the first bowling frame required direct manipulation of RNG.
**That said, any delay of 4 input frames or more on the remaining bowling frames could potentially negate a strike.  So ''technically'' all bowling frames were RNG manipulated to yield strikes....just very easily manipulated to do so.
**Soapbox rant tie-in: Even if a human were to strike on the first frame, being able to maintain such a consistency to match the RNG strike window cycle would be nigh impossible.  That doesn't mean that a human couldn't get a 300 score, but the chances of doing so optimally are near nil.
*My work/discoveries during this TAS is what allowed me to see the potential improvements to the final bowling frame in both [8032S|Game 1] and [8034S|Game 3] modes.
*As this game mode requires the most time to position the bowler before throwing the ball, when compared to other game modes, this TAS is the longest of the three game modes.
