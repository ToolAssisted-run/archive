> **Imported**
> This run was originally published at https://tasvideos.org/4306M and entered this archive as a voluntary
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

H.E.R.O. was ported to numerous systems, but many of the ports have unique attributes that create a unique TASing challenge. Details on what make this port unique are further down.

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

!!Attributes Unique to the Colecovision Port
*Speed is faster than both Atari 2600 and C64
*"Toe-Catch" bomb drop
**It is possible to catch the players toe on the corner of a ledge and drop a bomb while rising upward.
**This is one of the unique time saves that prevents landing delays.
*Bomb explosions are avoided with only one frame of elevation.
*Can lay a bomb while moving either direction (uses a dedicated button to lay bombs instead of pressing "down")
*Holding "Left" or "Right", against a wall displaces the main character a pixel or two. This has help to cut time, where delays are used to avoid creatures.
*Map has the same general room layout but different rock wall locations compared to other ports.
*There is considerable delay for spinning up the helicopter compared to Atari and C64.
*Laying a bomb, slightly in range of a wall, will cause partial damage but not completely destroy the wall. 
**This is the only port that this occurs in to our knowledge.
*Backwards Kill:  It's possible to kill an enemy while facing the wrong direction.
**When firing, the laser projectile overlaps the helicopter blades. Thus, by touching the blades to an enemy and firing appropriately, the enemy can be killed even when the character is facing the wrong direction.
**This is used, in combination with pressing against a wall, to keep from turning around in one location to get past a green snake.  This eliminates needing to destroy a wall and saves time.
***The developers likely intended this snake to be impassible.

!!How this submission came to be
NYMX was working on the C64 port of the game on his own.  This prompted DrD2k9 to investigate the Coleco version.  Once each of us completed our own TAS, we swapped files and reviewed each other's work.  We each made improvements to the other person's TAS then swapped back again.  During all the back and forth, we decided to investigate the published A2600 run.  Using knowledge gained from doing the other two ports (and a bit more file swapping), we effectively did a complete reTAS of the A2600 port by testing alternative inputs room-by-room.  This resulted in improvements on every level through the run. As we each worked on and made improvements to all three ports, we are both authors on all three submissions.

!!Suggested Screenshot
*Frame: 30863
