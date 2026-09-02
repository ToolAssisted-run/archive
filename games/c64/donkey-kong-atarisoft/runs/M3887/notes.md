> **Imported**
> This run was originally published at https://tasvideos.org/3887M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Donkey Kong
for Commodore 64 (because the workbench needs more DK games).  

This run uses the Atarisoft port licensed by Nintendo.  There is also a 1980's port published by Ocean and a 2016 port by Oxyron.

!! Goal
*Beat all unique sub-stages as quickly as possible.

!!Game Notes
*This particular port of DK has all four sub-stages seen in the arcade version.  This port, however, does not include the "How high can you get?" screen with stacked DKs.
*Tricks
**Ladder Boost - Only when traveling from left to right, climbing a ladder for 1 frame then immediately returning to the ground positions Mario further to the right on-screen than he would have progressed simply running past the ladder.  This works with both ascending and descending for the first frame (broken ladders cannot be descended).  This trick is used in both girder stage and rivet stages.
**Spring pseudo-clip - While jumping normally loses a pixel of horizontal distance compared to running the same number of frames...On the top of the elevator stage, it is possible to jump toward an oncoming spring so that Mario can progress past the spring without being hit even though the spring would hit him if he were just running.  This is not jumping over the spring (which I couldn't accomplish anyway), it's jumping through it.  This trick is not used in this submission.
**No other beneficial glitches were found in this port.

!!DK for C64 can be considered endless.
*There's no kill screen (that I could find in my testing).  
*Once level 99 is beaten, the game drops to level 0 then back to level 1 and loops.
*Contrary to the game manual, DK does not increase the rate of barrel rolling at higher levels.
**In all levels there is a 90 frame wait for DK to turn to grab a barrel.  DK turning back to center requires 39 more frames.  At this point he will either:
***Immediately drop the barrel and the 90 frame counter then starts over.  The barrel will fall either straight down or along various angles downward.
***Turn a second time (after 39 more frames) to roll the barrel along the girders.  He then takes 24 more frames to return to center for the 90 frame counter to start.
*There were, in fact, no discernible difficulty variations between various levels.

!!Determining game-end
There is no kill screen, so as per movie rules, we must determine where difficulty stops increasing and no new content is left to complete.

As with the arcade version, there are 4 different sub-stages in this port. 

The game can be started on any of levels 1-5.  Which level is chosen determines the cycle of sub-stages through the first few levels as follows:
*Level 1 - Girders, Rivets
*Level 2 - Girders, Conveyors, Rivets
*Level 3 - Girders, Conveyors, Elevators, Rivets
*Level 4 - Girders, Conveyors, Girders, Elevators, Rivets
*Level 5 - Girders, Conveyors, Girders, Elevators, Girders, Rivets
Level 6 and onward are identical to level 5 even after the level rolls from 99 to 0 and back to level 1.  

Since difficulty doesn't vary between levels. This chart clearly shows the shortest path to see all 4 unique sub-stages is by starting at Level 3 and simply playing directly through the 4 sub-stages to see all ''visually'' unique content.  (This submission.)

!!HOWEVER!!!!

There are ''technically'' more than 4 unique sub-stages in this game.

In memory, there are actually 20 different unique values for sub-stages.  

Starting from Level 1, every sub-stage has a unique memory identifier up through level 5.  Level 6 and onward uses the same memory identifiers as level 5.

Levels with multiple girder sub-stages, use different identifiers for each girder sub-stage within that level.
*There are 8 total values for the girder stage.
**The only discernible difference between these is the direction of the first barrel throw; all other gameplay mechanics are the same.
*There are 3 values for the conveyor stage.
**I couldn't identify any specific variations.
*There are 4 values for the Elevator stage.
**The first spawning of a spring seems to have a slight difference in timing between these.
*There are 5 values for the Rivet stage.
**No identifiable variations.

So the question really becomes "Where do we start playing this game?"
*Generally we allow/encourage starting at the highest difficulty selection available from the beginning of a game. Which would be level 5 in this port.
**But as already mentioned difficulty itself doesn't vary between levels, so is starting at Level 5 actually a 'higher difficulty' than starting at Level 1, 2, 3 or 4?
*Then there's the issue of unique content...rules state that the game must reach a point where no new content will appear.  Thus it must be determined what is considered unique enough for publication purposes:
**If unique can be considered ''visually unique'', then this submission (starting at level 3) should qualify as the fastest method of seeing all ''visually unique'' content; even though it neither plays the 'hardest' difficulty available from the start screen nor plays the last available unique sub-stage memory identifier.
**If however, unique content is based on the technicality of sub-stage memory identifier; the only way to truly have no further unique content is to complete Level 5.  This approach however, results in a longer more repetitive run due to the 2 additional girder sub-stages which themselves offer nothing new or unique ''visually''.  
***If it's determined by the community/staff that this is the necessary approach, I have also completed a run using this method available [=userfiles/info/52336592446257238|here].  Some tricks are/aren't used in that run compared to those used in this submission.

As a side note, to see ALL technically unique content (in regards to sub-stages) would require the game to start at level 1 and progress all the way through level 5 resulting in a MUCH longer video.

!!Special thanks to Fortranm 
Having recently submitted multiple ports of DK, he was struggling to get the C64 version working.  I originally started this as way to help him use C64 in BizHawk, but ended up doing all the recording.  He also offered some good insight to a few things in the run as well.
