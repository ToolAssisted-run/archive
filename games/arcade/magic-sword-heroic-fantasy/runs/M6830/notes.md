> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6830M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

*Magic Sword: Heroic Fantasy (マジックソード) is a 1990 hack and slash video game developed and published by Capcom for arcades. The player is cast as a hero who fights through a mystical tower to save the world. The player can use a sword, axe or magic, and can also rescue and recruit potential allies of various character classes, each with special abilities. (Taken from Wikipedia)

*This TAS uses the default Dipswitch settings.

!!Gameplay
*Game plays like that of a side scroller fighter. At the start the player is given a choice of floor to start on.  There is a random partner assigned when choosing a higher floor.  The floors all have an exit door, but some floors also have a hidden door that can warp them up a couple extra floors.  This tas chooses the highest available floor to start on which is Floor 33.  This is the hardest selection since the player does not have the time to build up companions or resources.

A second player could also join.   Each character can have a single NPC companion at a time.  The NPC companion choice is very important since they can be very useful.  The companion also has its own level which can be raised by finding the same character (?) from cages or for a red heart item.  Companions also can take damage and die. 

Every so often there are boss floors and the boss has to be defeated before a door appears.  There are accessory pickups which vary in usefulness but the main good ones for bosses are the Gauntlet, the Power Stone, and the Magic Potion.  Gauntlet though has little higher damage than Power Stone.  The Magic Potion is not gotten since I did not have the RNG for it, and to get it would lose several seconds.  The shield can block some weak attacks when not attacking, but it is almost completely worthless in this tas since it only blocks a single attack when the character was already invincible.  The Power gauge fills as you do not attack and the more it fills the stronger the strike, at a certain point it will shoot out a magic attack too.  The Special attack (Attack + Jump) causes a rage like mode where the Power gauge is at max for a time allowing consecutive strong strikes.  The downside to the Special is that is reduces your health by a full bar.  The game also slowly removes a half bar of health every twenty or so seconds.  But there are health pickups and after some bosses some health is awarded.  All of the accessories are also temporary and get unequipped after two floors.  Almost all cutscenes can be sped up by pressing button 2 at the start of the cutscene.  Certain sections in stage transitions are considered cutscenes and are sped up as well. For more info check the "A Guide on how to 1CC Magic Sword." below.

*TAS of Magic Sword in 3:25 by New King James:  https://www.youtube.com/watch?v=gWD62GKgL1Y
*Speedrun of Magic Sword in 5:38 by New King James https://www.youtube.com/watch?v=GFO7LQNPptw
*Extremely good guide on Magic Sword "A Guide on how to 1CC Magic Sword." by baf  https://www.youtube.com/watch?v=H_kn-VV04sY 

*Extended Input move file with initials entered: https://tasvideos.org/UserFiles/Info/638971350617456295

!!Movement Glitch (Jump + Left + Right)
Pressing Jump + Left + Right on the same frame has some bizarre movement effects where it shunts the character off to the right.  Sometimes it will stop near where the right side of the screen was, but sometimes if there is no floor on the next frame (which sometimes doesn't load) it will keep shifting the screen right until the character lands somewhere or ends up inside a wall.  To use this bug to its full effect it is best to use it on a spot where the next spot also does not load.  The best spots will have the character shift right through multiple screens and end up near the exit door.  Finding good spots to use it sometimes requires backtracking.  Enemies are also an issue since those will spawn too sometimes in unwanted spots like on top of you.  Using the Special is one way to get invincibility frames or kill them, but that causes slowdown.  You can use the Special on the same frame as the movement bug which would be (Attack + Jump + Left + Right). Attacking works well but it can also lose a couple frames to get into a good position.

There are some other unwanted effects though from this bug. The bug tends to crash the game a couple frames after a character is moved inside or near a wall.  It is important to quickly use the bug again in such cases to prevent the game from crashing.  On stages with a hidden door there is a chance the floor will fail to load and the door will fall through the floor which causes the game to crash.  The game also can be softlocked where the exit door does not load, becomes unreachable because the platform it was on does not load, or the way to get to that platform failed to load. An odd effect is that sometimes the door will only partially load, which may or may not be usable.

When falling through the floor that fails to load the character does not die, but instead fall down from the ceiling.    Also the character seems to become weirdly offset compared to the rest of the stage.  The character will fail to interact with with some game objects and this seems to vary depending on how many times you fall.  Doing this on a boss fight makes the game softlock since you cannot damage the boss.  This is not used in the tas. 

Another issue is that on the Blue Dragon using that bug will cause the boss's hitbox to go...somewhere else?  I am not sure what is occurring exactly, but the special move will still damage the boss so I am assuming the boss's hitbox is still somewhere nearby.  Using the movement bug near the boss room is also risky.  The game usually takes control of the character, but when its position is not as expected the game can easily softlock.  The game forces the player to move towards the boss, but as is usually the case odd protrusions or a missing floor can make the spot unreachable so the player just keeps walking endlessly.

Treasure chests do not just float in place, but can fall if there is no floor.  On the Blue Dragon stage it is necessary to not use the movement bug near the chest since otherwise the weapon will fall into the floor not loading.  Treasure chests can spawn into walls sometimes when using the movement bug, and it is perfectly possible to get them.  If you fail to get them shortly after the item loads in, the item will start moving up through the wall and shortly become unreachable however.

When inside a wall as mentioned previously using the movement bug again can move you out of it, but there are some ways to move when in a wall.  Sometimes just pressing the directional away from the direction you want to move in will pop the character out after some frames.  Pressing Jump + Left or Right can make the character jump further into or away from the wall.  Not all walls act the same though.  Just pressing jump could make the character jump up a bit in the wall or out through the top.  As a bonus if you press Up + Down at the same time as Jump and/or other directionals the character sprite will change palette for a time.

!!Floor 33
At start manipulated the game to give me the Black Magician which seems to be the most flexible with good damage.  It is one of the only characters whose attacks can attack in multiple directions. This floor has some very nice health pickups as well as the lots of floating jellies which also give good health.  However those are not important here so we use the movement bug to quickly get near the door.  Hit a bear to knock it away from the door and hold Up to open the door to the next floor.  

!!Floor 34
There is a hidden door which is activated by hitting a column hanging down from the ceiling. Due to the movement bug there is just a solid wall there, but hitting that same area still activates the hidden door to appear.  This floor is full of bad locations that cause the game to crash when activating the movement glitch.  In fact the game would crash in about 6 frames when at the door if the door was not opened in time.  

!!Floor 36
Movement bug is not used here near the first chest since it would fall through the floor which fails to load after using it.  It cannot be used too close to boss room either since the Blue Dragon's hitbox goes somewhere else (?) and is not able to be attacked.  However it can be used to get to the area where the game takes control of your character for the boss cutscene.  The first treasure contains the powerful Gauntlet pickup which increases attacks.  The Blue Dragon has three phases and bosses are invincible during phase transitions.  There is a platform to the left which works well when on the very edge of the left.  Using the Special and getting that power gauge at max for a time along with the invincibility works great to deal high damage.  When to attack for bosses is not simple and is highly variable due to competing attacks from your NPC companion and just unclear damage variation.  

!!Floor 37
Very short floor that is more of a reward for defeating a boss, and a chance for recovery. With the movement bug from first input to when the screen blacks out  it is over in under half a second.

!!Floor 38
Only one orc enemy that needs avoiding.

!!Floor 39
This is a tricky floor.  There is this large wheel of slimes that turn over a unloaded floor that needs good positioning to get past. Then after that there is a strange structure that appears where it is two large walls with a tiny gap in the middle which you can fall into and then crash the game.  The end has to loaded a certain way to get the hidden door. The trigger area is this block that has to be attacked, but here there is nothing visibly loaded, but it can still be hit.  However the golem enemy spawns in midair and falls down into the fire, a fire which is not there normally since usually there is a platform there, and it is in the way and there is no real way to get past it without lots of time lost.  You can fall down down into the fire and while falling attack.  Take the hit from the fire, then jump out to the hidden door.

!!Floor 42
This floor's main challenge is getting the jumps set up so that the door is reachable.  Most setups just show the lock to the exit door floating in mid-air.  For extra fun if you fall into the pit near the door the game crashes.  The fastest way is to make a sliver of the original platform appear then move to the very edge which is just enough to get in.

!!Floor 43
Enemy density is high on this floor.  A couple times the movement bug has to be used in conjunction with attacking.  Lots of giant walls appearing and invisible enemies in them too. This is one of the few areas where the final stretch needs a little walking otherwise the door it not accessible. This may be because you get the best sword in the game from a forced cutscene drop from a chest, the Thunder Sword.

!!Floor 44
Fairly complex movement is needed here.  A couple movement bugs with attacking, and some specific adjustments were necessary to get to the door.  The final stretch has a small raised platform, and the character is inside a wall. Pressing Jump + Right gets the player out of the wall and jumping up to the platform. Then the door is available just from the edge.

!!Floor 45
Odd loading level where there are stretches of invisible platforms.  There is a good stretch near the end where the movement bug activates for a relatively long time in comparison to other uses.  When using the movement bug if the next position the character is moved to is not on a floor and it causes the character to fall the movement bug gets activated again for the next frame.  So it gets activated for nearly half a dozen times on this floor in one go.

!!Floor 46
This one requires a large left adjustment a bit into the stage to get to the end as fast as possible.  There is a slight wait for the wrecking ball before once again using the movement bug.

!!Floor 47
Lots of walls in this one.  There is a point where using the movement bug any further would render the ending door unreachable so here I use the bug to get into a wall, then use short jumps using Jump + Down + Up + Left, which hops the character through the wall forward. Then one movement bug activation to get to a platform, then jump up towards the nearly invisible door.

!!Floor 48
This was difficult to get done quickly.  Lots of hazards with fire and enemies everywhere.  For some reason using the movement bug seems to nearly always cause a small protrusion immediately in front of the character so the only fast way forward is to again use the movement bug.  This is one of the only areas where a forced Special (Attack + Jump) is used for the invincibility frames.  The ending door is in this small corridor with protrustions with a small fire area on the top of them. Using invincibility is the best way to get on top of a protrusion to open the door.

!!Floor 49
Final Chimera boss of the game. It has three phases where each phases causes it to respawn.  When it respawns it will form above your character.  After dealing enough damage on the first phase I use the movement bug to move towards the ending door.  Dealing damage much faster than intended causes it to phase shift while still in mid-air.  This is done by first using the Special which causes a rage like mode where the Power is at max for a time allowing strong strikes. Then moving away from the boss with the Thunder Sword along with a powerup item, in this case the Power Stone.  The Full Power strike causes lightning which is in several parts and when you move away it sometimes will hit more than once.   When it dies there are fairies that open a spawned chest from where it was defeated that move to the final door.  Getting it closer to the door saves time.  

!!Floor 50
Lots of testing went into this one to try and get to the boss asap. This floor also has a lot of challenges in actually starting the boss fight without crashing or softlocking.  The starting area is a bit higher than most of the rest of the level unlike most floors which helps in having the movement bug activate every frame while falling.   There is a small area which will keep activating the movement bug all the way to the very end of the stage to the boss. But only a pixel or two range allows the bug to hit the boss cutscene trigger and to start the boss fight without softlocking.  It can softlock in two ways, the first is the cutscene triggers and the game takes control, but because the area is blocked off with various half formed ledges and walls there is no way to get to the spot the game is trying to move the character to. The second softlock is where you can move, but there is no way to escape that area beyond the boss since the movement bug only moves the character right in the stage. 

Once the cutscene ends the game moves the character back in bounds, but the stage is not fixed.  The character is on the right side of the screen inside a wall. Jump out of the wall with Jump + Down + Up + Right which moves the character left. Note that there is a chest inside the wall on the far right which CAN contain a Gauntlet with proper RNG. Sadly this attempt did not garner a Gauntlet.  Something changed in the rng which removed the Gauntlet so I have to make do with the Power Stone.  The Power Stone is only slightly weaker than the Gauntlet however, but enough to erase some time saves.  As a note it is possible to use the movement glitch and grab the item in the wall, then escape back out in time to hit the boss when it becomes vulnerable.

The boss floats around and shoots out destructible homing projectiles.  Using the Special helps a lot to either avoid damage or to destroy them.  The main challenge here is to deal high damage per attack while jumping around the area without falling into the newly formed pits.  The companion needs to not take too much damage either. While the NPC can damage and still attack it does seem to interrupt charging the next attack slightly.  The NPC is a huge help in this fight as long as you can get the attacks in. There is also a slight trick where if you press Up on the same frame of jumping you get some extra height which is very useful for this last boss.  There is a similar trick where pressing Down on the same frame will get a shorter jump which also comes in handy when the boss is hovering low.

In this fight the health I have carefully preserved will be used for the final phase of the boss where the boss will start to float higher in the air and use attacks more intensely. The boss is high enough that the main character has trouble reaching it with a sword.  The Special does 200 damage per use, when the damage actually gets in since a lot of times it seems to just miss for some reason.  This extra damage does a lot of work to whittle that final phase health bar down.  The raised hovering can be avoided for a time if the character is away from the boss when it does the phase transition.

To get the final cutscene to play as fast as possible the character needs to be as far left as possible on the ground.  The game will take control move the character to the far left, then move it a bit right.  There is some dialogue and the game gives you an option to destroy the orb, or to take the orb and replace the last boss.  Destroying the orb gets more points and is the good ending and has the credits roll.  The bad ending only has the text game over and a picture of the last boss.

!!Potential Improvements
*Understanding how the loading works better could lead to better movement bug use.
*Understanding how RNG works might get better enemy positions and different enemy and treasure drops.  

!!Stage Times
Rounded stage times based on first input to when the screen blacks out for that stage.  Final stage ends on final input.  Average time on non boss stages is only a little over three seconds. 
|33|3.2s|
|34|4.5s|
|36|35s|
|37|0.4s|
|38|3.1s|
|39|4.1s|
|42|3.2s|
|43|6.6s|
|44|3.2s|
|45|2.8s|
|46|3.0s|
|47|3.2s|
|48|3.4s|
|49|24.1s|
|50|49s|
