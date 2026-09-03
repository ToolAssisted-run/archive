> **Imported**
> This run was originally published at https://tasvideos.org/4304M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! H.E.R.O. : HELICOPTER EMERGENCY RESCUE OPERATION
Reach miners trapped miles under the surface of the earth! Use the Prop-pack
to maneuver through a maze of mineshafts! Blast vile vermin with the Microlaser Beam! Dynamite
walls! Negotiate across the lethal lava flow! Rescue all the miners you can before running out of
lives or power!

__H.E.R.O.__ was ported to numerous systems, but many of the ports have unique attributes that create a unique TASing challenge. Details on what make this port unique are further down.

!!General Game Info
*The goal of each stage is to reach the trapped miner at the bottom of each level.
*Navigation is done by running left and right, hovering/flying with the prop-pack, and falling.
*Lasers can be shot from your helmet to kill enemies.
*Bombs must be dropped to destroy walls created from rock cave-ins to progress through the game.
*Hitting any enemy is instant death
*Hitting the water/lava at the bottom of a stage is instant death
*Hitting a hot rock wall is instant death
*Your own bombs can kill you instantly if you're too close (but there's ways around this)

!!TAS Objectives/Notes
*Beat the Game as quickly as possible
**There are 20 unique levels in the game. After that the level number changes to "PRO" and earlier levels simply repeat until the player loses all their lives.  
**The game manual states "You've saved the day when the score reaches 1,000,000."  But this is not a true endpoint for the game as play can continue beyond that point.
***At 1,000,000 points, the score display simply becomes asterisks because the RAM addresses for score are maxed and the programmers had this display change instead of rolling over to 0.
***It is possible to continue scoring after this score display is achieved, thus a Max-Score run is not an option for this game.
*TAS created over various BizHawk versions and completed on v2.5
*To save time, unneeded bombs are dropped prior to ending a stage to limit time lost to bonus coundown.
**Occasionally a minor movement delay is necessary to drop an extra bomb, but the bonus time saved at the end of the stage is worth the movement delay.

!!Attributes Unique to the Atari 2600 Port
*Speed is slightly faster than C64 Port
*Helicopter movement is a bit easier to control. Response time is faster in taking off compared to other ports
*Avoiding being killed by bomb explosions:
**On other versions, only 1 frame of elevation is needed to avoid being killed. In this port, it take serval frames to avoid damage. This limits  use of a time saving strat more easily used in Coleco and C64 ports.
*It is necessary to be completely 'stopped' to lay a bomb; no other inputs can be in the same frame as the down press to drop the bomb.
*Uses "Down" to lay bomb; other ports (like Colecovision) use dedicated buttons.
*Holding "Left" or "Right", against a wall displaces the main character a pixel or two closer to the wall. This helped cut time, where delays are needed in other ports to avoid creatures.
*Creature speed, most notabiy the green snake, is the fastest among all the ports we explored. This makes slightly unique routing over the other consoles.
*Map has the same general room layout as that of the Coleco and C64 ports, but rock walls may be in different places.
*Of the three ports we worked on, Atari is the only one with bomb persistence.
**Explosions from bombs droped in one room that don't explode until after the main character has entered the new room can be used to destroy walls that are on the far right of the new room
**The game moves the dropped bomb's horizontal position to a location that will destroy the rock wall.  
**This allows for more continuous motion through some of the horizontal passageways as there is no delay from having to stop and drop a bomb near the rock wall and then wait for the bomb to explode.
**This is the most significant time save of all strats compared to other ports.

!!How this submission came to be
NYMX was working on the C64 port of the game on his own.  This prompted DrD2k9 to investigate the Coleco version.  Once each of us completed our own TAS, we swapped files and reviewed each other's work.  We each made improvements to the other person's TAS then swapped back again.  During all the back and forth, we decided to investigate the published A2600 run.  Using knowledge gained from doing the other two ports (and a bit more file swapping), we effectively did a complete reTAS of the A2600 port by testing alternative inputs room-by-room.  This resulted in improvements on every level through the run. As we each worked on and made improvements to all three ports, we are both authors on all three submissions.

!!Comparison to Current Publication
Some of the improvements result from emulation differences between BizHawk versions; most notably at the start of the game.  Others come from dropping bombs further from the rock walls; the current publication gets closer than necessary in a number of cases before dropping a bomb which then results in a later passage through the hole blown open.  The rest of the improvements come from movement optimization.

This submission is 164 frames (approximately 2.74 seconds) faster than the current publication.  The following table breaks down where in the game those frames are saved.

|| ||1st Visible Frame||1st Visible Frame||Frames Saved||Cumulative||
|| ||for Current Publication||for this Submission||this Segment||Frames Saved||
|''Reset'' to Start game|6|1|5|5|
|Stage 1|8|2|1|6|
|Stage 2|546|538|2|8|
|Stage 3|1249|1237|4|12|
|Stage 4|2192|2153|27|39|
|Stage 5|3372|3330|3|42|
|Stage 6|4489|4441|6|48|
|Stage 7|5842|5790|4|52|
|Stage 8|7624|7565|7|59|
|Stage 9|9491|9421|11|70|
|Stage 10|11531|11449|12|82|
|Stage 11|13671|13585|4|86|
|Stage 12|15976|15881|9|95|
|Stage 13|18196|18089|12|107|
|Stage 14|20513|20401|5|112|
|Stage 15|22661|22545|4|116|
|Stage 16|24962|24833|13|129|
|Stage 17|27042|26901|12|141|
|Stage 18|29210|29061|8|149|
|Stage 19|31443|31289|5|154|
|Stage 20|33647|33489|4|158|
|Final Input|35414|35250|6|164|

The following is a video comparison of the current publication (left) vs this submission (right).  Due to emulation differences between the versions of BizHawk on which the old and new TASes were made; instead of staring the comparison from power-on, this video cuts the first few frames of the old TAS to allow the first frame of character control to be synced between the runs.  This allows for a more accurate representation of improvement from game-play differences.%%%
[module:youtube|v=UxVXWgHq9iE]

!!Suggested Screenshot
*Frame: 32529
