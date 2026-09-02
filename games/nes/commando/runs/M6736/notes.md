> **Imported**
> This run was originally published at https://tasvideos.org/6736M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Commando
Commando is a relatively simple non-autoscrolling vertical shooter.  You control Super Joe and are tasked with rescuing hostages and stopping the evil army.  

!!Game Basics
Joe can move in all directions but the screen will only scroll downward limiting how much backtracking is possible.

Joe is armed with a rifle and some grenades with which to fight his way through the evil army.  While most of the game is above ground, there are some undeground areas that can be accessed via ladders.  These ladders are found by throwing grenades at cetrain areas on the battlefield.  The hostages you are supposed to be rescuing are in some of these undergound areas, where others are traps or have bonus items.

The game consists of 4 sequential levels of difficulty each with 4 sub-stages.  Each of the 4 sub-stages within a level is different, but all 4 main levels contain the same sequence of sub-stages, though they may have ladders/items in different locations.  The enemy difficulty/agression simply increases with each level.  Once the 4th level is beaten, the game ends.

There are some weapon powerup items in the game (gun upgrade, grenade upgrade) obtained by rescuing hostages, but neither are seen in this run as it would take far to long to retrieve them.

Other items can be found are revealed similarly to ladders by grenading certain locations (or certain enemies).  These include:
*__Wireless Remote Radio__ - calls the helicopter to take you to the next sub-stage.  This is present in the 1st and 2nd sub-stages of all levels.  This requires 2 grenades to reveal (how someone would figure this out aside from accidentally, I have no idea).
*__Medal of Honor__ - Extra life (not seen in this run)
*__Binoculars__ - shows the ladder entrances without having to grenade them first. (not seen in this run)
*__Bullet Proof Jacket__ - protects Joe from 10 bullets or 2 grenades (not seen in this run)
*__Hand Grenade__ - These look like little boxes on the battlefield and increase your grenade count.  These do not need revealed as they are already visible.
*__Super Hand Grenade__ - When obtained, the next grenade thrown will kill all enemies on the screen.  This can be revealed by simply walking over a specific location. (not seen in this run)
*__Flashlight__ - When found underground, the screen goes dark and the enemies cannot see Joe. (not seen in this run)
*__Money Bag, Rations, Corporal Stripes, Lieutenant Stripes, Gas Can__ - These all are simply bonus points. (not intentionally collected in this run)

!!TAS Notes
Since the game does not autoscroll, the fastest way to win is to never stop moving north if at all possible.

For the first two sub-stages of all the levels play moves forward until reachign the location with the Wireless Remote Radio which is used to skip the rest of the stage.  (Perhaps this run could be considered a 'warps' version of the game, but I've left the goal blank for now.  If someone submits a version that doesn't utilize the radio and beats the stages normally, that could probably be considered warpless.)%%%
For the other stages, Joe moves through the whole battlefield and fights the end boss/fortress fight.  In these fights, Joe must kill at least 15 enemies and the stage ends when there are none left on screen (the green grenadiers don't have to be eliminated but can add to the 15-enemy tally).  In this run, I generally tried to have the final kills be enemies just emerging from the door.
*There seems to be a glitch of some sort that occurs when any 4th sub-stage is beaten that pre-sets the kill-count RAM address to 12 kills; this carries over into the next level which makes the very next end-stage fight only require 3 more kills.  This occurs 3 times in the run.  If this is an intended feature of the game, it seems odd to me unless it's some sore of unacknowledged/unwritten reward for beating an entire level, given that the first boss/fortress battle doesn't also start with only 3 needing killed.  FWIW, the RAM gest set to 12 when the fire shows up in the windows of the fortress.

I used maps I found online to locate the wireless radios and then used Lua monitoring of on-screen stuff to help confirm that there weren't any in the other stages.  Invisible stuffs' on-screen positions are stil stored in RAM before something is revealed.

There are lots of things happening on screen at any given moment and there seems to be some randomness/RNG involved, but I didn't dig into it much as I didn't feel the need.

!!Potential Improvements
Unfortunately, any improvements would likely impact the randomness, necessitating resyncing/redoing everything beyond the found improvement.
*There may be a frame or two here and there where I stoped moving upward in the stages.  If a way was found to eliminate these delays the run could potentially be slightly faster, but only minimially so (probably less than 16 frames) from such a change.
*It may be possible to have more efficient stage boss/fortress battles.  I, again, think this would be relatively minimal improvements.
*It may be possible to find a more efficent way to reveal the wireless radios and speed up their acquisition.

!!Other Thoughts
As mentioned above, I feel there could be a 'warpless' run goal for this game.  I also feel that a 3rd goal of "all rescues" would be valid.  ---I may look into doing these at some point, but I don't have any specific WIP's for them aside from this submission.--- I decided to start doing these as well.
