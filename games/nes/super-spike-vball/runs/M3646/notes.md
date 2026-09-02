> **Imported**
> This run was originally published at https://tasvideos.org/3646M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!NES - Super Spike V'Ball
Super Spike V'Ball is a volleyball game created by TechnosJapan (those people responsible for River City Ransom).

!!Game Objectives
*Beat the World Cup (Hardest difficulty) as quickly as possible.

!!Gameplay Notes
*Uses luck manipulation (via service choice) to determine how the opponent returns the ball after a serve
*Uses luck manipulation (via delayed spikes) to prevent the CPU from getting defensive hits.
*Uses 2 player co-op mode to save time.

__Serving:__ The court can essentially be broken up into a 3x3 grid yielding 9 regions for the serve to land.  There are also two service options: standard and jump-serve.  Thus there are 18 possible serves that will land in bounds.

There are four possible return patterns after a serve.
#Regular bump, set, spike sequence (seen scattered throughout run)
#Set, spike sequence (seen scattered throughout run)
#Bump return directly back over net (seen rarely in run)
#Spiked directly off serve (seen rarely in run)

Service choice was based on which option resulted in the quickest return from the opponent.  

Standard serves were frequently performed to yield return pattern #2 by the opponents.

Ball flight-speed ''is'' faster with a jump-serve than a standard serve, but almost always results in return pattern #1.  This is slower than getting pattern #2 with a standard serve; thus, jump-serves rarely yield the quickest return.  After the first game, jump-serves were relegated to use when all 18 service options yielded return pattern #1 (taking advantage of the faster ball speed).

Instances where return patterns #3 & #4 were attainable they were selected.

The opponents never get a chance to serve throughout the run.

__Defense:__
Classic defense of waiting for a bump after the CPU attacks is only occasionally used; always followed up with a quick scoring spike.

__Blocking:__
If possible, a block was performed to immediately drive the ball back down to the opponents sand for a point.  Otherwise the ball was returned with a bump, spike combination or via a 'failed' block.  

'Failed' blocks are blocks in which the ball appears to bounce off the blocking player's head and stays on his side of the net; spikes can be performed following this 'failed' block slightly faster than a bump/spike combination.

__'Ball Out':__
Occasionally in the early stages, the CPU will hit the ball out of bounds.  It's also possible for the CPU to lose the ball out of bounds trying to defend a super spike. Both of these results in the referee doing an additional 'Ball Out' animation.  In the few instances this arose, I chose a different service/spike option that didn't result in the ball going out of bounds.  Though the volley may have taken a few extra frames, they were offset by not playing the animation.

__Targeting:__  
In addition to serves, spikes can be directed to any of the 9 court regions and were chosen to prevent defensive hits by the opponent.

Where the CPU targets its hits is mostly predetermined and unaffected by the serve choice.  __''Sometimes''__ the 'Human' character positions can affect the targeted point, but when it does and where the character had to be to alter the target point was not consistent.  As my limited trials of position altering showed little consistent benefit, this strategy was mostly ignored in making this TAS.

Side notes on targeting:

There is an U/D L/R input glitch that moves the target point to strange locations, but they're always on the 'human' side of the court and thus this glitch is not useful for a vs. CPU game.  It might be interesting in a PvP mode though.

!!!Potential Improvements
As each volley can alter the predetermined CPU targeting of the next volley, changing even one serve/volley would likely impact every volley thereafter.  It's ''possible'' that a different sequence of service choices could yield more short return combinations (#3 & #4) or even reduce some of the #1 returns to #2.   Any such sequence variations may shorten the overall video, but the volley on which that run deviates from this run would likely be slower than the current volley.

To test all such permutations would be impractical (309,237,645,312 if my math is correct).
