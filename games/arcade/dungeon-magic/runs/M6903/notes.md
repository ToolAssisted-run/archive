> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6903M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Dungeon Magic, known as Light Bringer (ライトブリンガー) in Japan and Europe, is a video game released in arcades by Taito in 1994. The game is a beat 'em up with an isometric perspective and includes some platform gameplay. Blood and gore can be adjusted through a setting. (Taken from https://en.wikipedia.org/wiki/Dungeon_Magic).

*This tas uses the default dipswitch options.

*Submitting the Goal as "1 player" since this is a game with up to 2 players by default but in the options it could be increased to 4 players.  

*This is a re-submission since massive parts of the tas had to be redone.  

!!Gameplay
All the characters have a basic combo attack which hits mid to high enemies. There is a dash, but the dash ONLY  works left or right.  It requires a bunch of frames to not have any directionals too.  The dash can be combined with an attack.  Each character has a special attack which is used by holding attack button long enough then released.  There is a level 2 version which requires a much longer holding period.  The magic attack of each character requires a magic stock item.  Magic is not infinite and while the player starts with three stocks, additional stocks need to be picked up in the stages or have the three stock refreshed after a continue is used (no continues are used in this tas though).  Each character can jump and attack in the air.  Characters can grapple medium to human sized enemies and throw them, but the damage is quite low and it takes a long time.  Various items can be picked up through chests, destroyable objects like statues, or enemy drops.  

The characters have several types of main weapons that can be picked up and used.  These are the basic weapon, the elemental effect weapons, or the power weapon.  While the basic weapon (and I believe the power weapon) can also do critical hits, the critical hits are fairly rare.  I went with basic weapon, then holy weapon route.  A predictive lua script for critical hits might have better luck with using the basic and power weapons.  When there is text above an enemy saying "Hit Weak" this means that the enemy is weak to whatever element just hit it.

The main item types are health pickups, weapons, shields, magic stocks, and items that give points.  Drops that give high amounts of points are extremely important in this game due to its leveling system.  The game has ever increasing thresholds of points that increase health and various cooldowns once reached.  The best items to get are the diamond crown and the jewel brooch at 50,000 points and 40,000 points respectively.  Using RNG manipulation I cause them to drop from statues that would not waste time when possible. The main statues that have the high point items are the half broken woman statues.  Casually doing this is risky since the statues can also cause effects that can harm the player like poison, transformation magic, or lightning.  Not all woman statues give random high points rewards though. Some give nothing or a fixed drop.  Killing bosses gives a large amount of points, and afterward a bunch of high point items drop from the golden chests that spawn after. All chest drops seem fixed. Once the candle is dropped in favor of the weapon effective on the last boss,  levels are not as important though.

The dungeon layouts consist of a series of connected rooms.  Rooms that have multiple exists usually need specific actions to open other doors besides the normal one.  The actions usually consist of killing all or a certain number of enemies, activating a switch on the wall or floor, or destroying objects.  Room and enemy arrangements are usually fixed, but some rooms change things up a bit.  This can be changed by waiting or taking an alternate path.  

Boss fights usually include some kind of additional enemies in the fight.  As the fight continues enemies will spawn and cause problems.  In the tas though the bosses are defeated so quickly additional enemies are not spawned. The only exception is the spider woman where she spawns spiders, but that is an expected part of the fight itself.

The one useful oddity is that character state can carry over to the next room.  The dash can be used right at the exit trigger to a room, then that dash can carry over into the next room.  The dash has some challenges  though. This is because of how the dash is restricted to only moving left and right oriented on the screen NOT on the isometric axis.  This state is extremely useful for carrying over the weapon charge into the mini-boss fight, although the initial map display as to go away through timeout since it is normally skipped with the same button as the attack button.

Every level gained decreases the level 2 charge by 20 frames.  This is relevant for the candle since the fire special that occurs when holding it only comes out when level 2 charge is ready.

There is a bug where dashing off a ledge allows the character to then jump while in the air.  There is only one spot where this might have been useful in stage 2.  However it would only save 10 frames, but then mess up the rng with the ghost spawns in the next room annihilating any gain.


For more details look through the gamefaqs link below.
*Speedrun by iast for SGDQ 2018 in 13:47: https://www.youtube.com/watch?v=54Hkt90KOEg
*Gamefaqs Guide: https://gamefaqs.gamespot.com/arcade/568165-dungeon-magic/faqs/21418
*Speedrun by Replay Burners using Gren in 18 minutes: https://www.youtube.com/watch?v=pc2I5ZU3lFY
*TAS using Cisty by ULTIMATE PLAYER【TAS】: https://www.youtube.com/live/B0q21ftasiI

*Extended Input Movie with Credits : https://tasvideos.org/UserFiles/Info/639012097036563097

!!Stage 1
Gren is for the tas since he has a lot of nice properties.  His magic is a fire element aoe attack which works well for ice enemies.  One quirk of the magic is that while it is an aoe attack the hitbox is much wider left and right than it is up and down. The aoe magic range also extends high enough to hit flying enemies.  Gren also has a strong attack string that can be looped indefinitely on most enemies and even bosses.  The string is three punches, followed by a wait, then repeat.  There is a fourth knockdown punch which is quite strong but it is slow. The other characters might be good as well, but the game would have to be tased with them to really see how they perform. 

In the rooms with lots of enemies the idea is to try and group them together to keep doing the punch loop combo, and if necessary use the magic.  

In the first starting room of the game is the Candle, the most powerful holding weapon in the game.  This weapon will disappear on getting hit or picking up anything else.  This is very useful, but comes with some major tradeoffs.  The first is that to use it the character needs to hold attack until a Level 2 charge is ready. This takes a significant amount of time although this is mitigated with leveling.  Leveling decreases the charge time 20 frames each level.

The Giant Snake is not a boss where levels would make a huge difference since most of the time the player will be attacking the various segments of its body.  All attacks on a segment do fixed damage so the idea normally  here is to hit as many segments as possible. Gren's special sword attack is one of his only moves that can actually damage the segments.  The head can be hit with the first two punches of the basic combo too.  However, with the Candle this boss fight become trivial.  First, hold the attack charge state from the previous room to the mini-boss room.  The initial map display has to go away through timeout since it is normally skipped with the same button as the attack button.  Then target the head of the snake.  In two Level 2 Charge attacks the Candle as its fire attack shoot off and this is very effective. 

The boss's main attacks are the sword swing, which here never happens since after getting hit while holding the sword it drops.  However the sword flies back to its owner and can hit the player along the way. The boss slow walks towards the player hoping the grab the player to do damage.  As long as those are managed the boss goes down quick.  Slightly being above the boss has the boss go towards you and ends this section faster since the boss after it is defeated needs to walk back up.

After the boss is defeated is the largest rng manipulation section in the game besides the last boss.  Several of the woman statues can drop the diamond crown which I get to drop, but in addition to that I also get the pillars to drop decent items as well. The pillars do not drop high point jewelry, but they can still drop decent gems, stacks of money, or the gold chalice.  Leveling increases damage very slightly and also slightly decreases the weapon charge time.

!!Stage 2
Similar to the last stage, but there are a couple standout rooms in this stage. 

The first is a chapel like room where two lizards jump in.  The strategy is to ignore the statues here and just blast away an orc and a lizard with the Candle. This room used to have a lot of complex movement and rng manip to get two diamond crowns, but it saves nearly 200 frames to use the Candle and just exit quickly.

In the room with the descending stairs there is a useful bug that could be used.  Dashing off a ledge allows the character to then jump while in the air.  There is faster for this room but is slower overall, since then Gren would be under leveled due to missing the diamond crown on the bottom which gives 50K points.

One room has poison water around the edges of the long horizontal room, and the left side is filled with coffins.  The coffins contain skeleton enemies, or a poison gas effect and treasure.  Two Ghosts spawn and move around horizontally in addition to a flying imp that throws spears.  This room is very tricky since it requires a certain number of enemies to be defeated.  The ghosts can count towards that and they have low hp, but to kill them in one blow requires a strong hit otherwise they respawn elsewhere.  The skeletons slowly come out of the defeated coffins, and the imp is a serious problem since it is a flying enemy.  Flying enemies besides weak bats are very difficult for Gren, and thankfully they are extremely rare in this game.  The strategy here is to break open the first coffin, then move in such a way to avoid the imp's spears, hit the ghosts when they come in, hit two skeletons, then kill them all with Gren's Magic attack.  This is one of the hardest rooms in the game by far with the rng movement and the flying imp causing massive problems with its thrown spear.  At the end here there is a wait added before exiting the room to get a good cycle on the spikes in the next room.  Being able to just slide straight across is much faster.  Besides the wait, inputs are added just as the room exits to start moving left way earlier. This is possible because of how the game carries over some states into the next room.

A special note about the ice dogs that start to appear in this stage.  They suck.  They are short little chihuahuas that only specific attacks or grapples can damage. They can be hit from normal standing attacks only if they are airborne and doing a jump attack. These little chihuahua dogs can freeze the player, and while frozen the player takes continuous damage.  The dogs can keep using the freeze attack essentially stun locking the player to death.  The dogs can only be hit with punches or the Candle when they jump to eat your face.

Before the boss room is where there are a bunch of lizards that spawn in and swarm the player.  There is a good spot near the middle where I have Gren jump in, then he can continually use the punch combo.  With the lizards though the punch combo needs a specific timing or they break out of the combo and hit the player. Usually this room gets out of control without good positioning.  I was unable to manipulate any good criticals here.  The best critical I could get was almost perfect, but the last lizard named "Dinosaur" survives the critical hit and this one unit seems to be a special version of the lizardmen with nearly double health.

The boss is a spider woman, and the rng for the first section is very obnoxious.  Sometimes after a couple hits the boss will flinch and take damage, but it does a lengthy knockdown.  Sometimes attacking her while being too low or high on the screen immediately causes knockdown.  Here a wait is added after the first couple attack strings to avoid a knockdown.  About halfway through the boss's healthbar tons of tiny spiders spawn.  Gren's AOE attack is perfect to destroy these.  After that, avoid a jump attack and its time to spam attacks. Manipulated a critical hit at the end.

!!Stage 3
This stage has three paths.  Here I take the path that has the holy weapon since it is seems to be the fastest path.  However due to having the Candle the holy weapon is not picked up.  The stage is long and the goal is to activate three magic structures in three separate rooms.  Once complete, the game warps the player to the boss room.

While a lot of rooms can have some tricky things in them the path with the holy weapon for Gren is pretty easy.  The hard thing would be to figure out how to advance and avoiding traps.  One tricky statue shoots out lightning when destroyed even though it is the trigger to open the next door.  A couple rooms have some no time loss pickups which I take.  There are two no-time-loss magic stock pickups, and one room has just enough free time for me to manipulate a diamond crown out of a statue.

An early difficult room that requires heavy re-syncing for any change, which drove me nuts, is the room which consists of a very long stair guarded by two black orcs and two slimes.  The black orcs have two unusual characteristics.  The first is that on death their axe spawns as an enemy projectile that is thrown out and this axe weapon can hit the player.   The other odd thing about these orcs is that after death their shield also becomes a low positioned enemy that shoots outs projectiles.    On the stair with the right position Gren can punch the prone shield, but the shield has an extremely high hitbox bizarrely.  To open the gate in this room four enemies need to be defeated. Here I start to punch the orcs, make the timing of the second series of punches align with a slime that jumps, then use the heavy hit from the basic attack combo.  This knocks back an orc downward somehow.  Then I make a break for it towards the door.  This works since when knocking the orc down, he gets annihilated by the statues below that shoot out fire.  This room really sucks especially with the orcs defending a lot and the slimes that like to creep up and hit your feet.  As a reminder getting hit would make the Candle drop and disappear which would erase a lot of time saves.

There is one hard room in this path however with a bunch of coffins with hard red skeletons.  Moving and positioning in the right way allows the punch combo to continue and taking them out without much of a fuss.  Manipulated a very nice critical hit too which finished them off fast.

The boss is highly susceptible to the basic looping attack string.   There is some slight rng manipulation to prevent knockdown.  Also did rng manip to get a critical as the final hit.  The final hit is the only spot acceptable for the critical hit since it does massive knockback and it knocks enemies down as well.

This Lesser Demon boss has a strange bug if you break a crystal at the time as killing it (think that is what does it). The boss disappears then falls to the ground near the summoning circle, then dies like normal. However this takes a couple more seconds of time than without.

!!Stage 4
The last stage has a hard fight with a pack of dogs and skeletons. This took some doing to be able to take out all the dogs with the Candle quickly.  Lots of position testing and manips.  The issue here is that the game devs gave the dogs JUST enough health so they would survive Gren's Magic AOE attack. These Ice Skeletons have enough health to survive a Candle hit, and like wandering around aimlessly so getting them together is a must.  Here I manip a critical to finish them off together too.

The re-fight has the boss also has a shield which can fly and shoot lasers, but besides that it is the same fight.   After the re-fight boss with the Knight is complete, a shield is picked up. Picking up the shield removes the Candle.  

Then the final boss follows shortly after.  The player's shield blocks the initial attacks from the last boss while also allowing the character to get in close to start hitting. The boss can be looped using the weapon attacks, but requires rng manipulation. The final boss would use invincible attacks or dodges without the rng manips. A critical hit was manipulated to finish him off too.  Note that the Candle does decent damage to the last boss per hit, but it also does the knockdown which takes long so it is not used.

Once the final boss is defeated no further inputs are necessary so I do not do anything more for the main submitted video.   

In the movie with extended inputs however I do move around, pick up treasures and try to make it interesting for the viewer since there is an extremely long wait.  After the credits I input initials and the video ends.

One interesting thing is that in the Japanese version on the bottom area after the last boss is defeated you can unlock a bunny woman who gives you more items to pickup. So if there was a maximum score tas that version would probably give the most points.

!!Potential Time Saves
This is a complex game with a lot of choice.  While ideally I could test everything out the time spent making the tas would become exponential.  I made a good effort with this, but there are potential improvements. 
*A different character might be faster, but no way to tell without using the character in a tas. The Wizard Vold seems to potentially be fast.  Lots of strong AOE attacks and can do the infinite attack string as well.
*A predictive lua script for critical hits would improve fights.   

!!Special Thanks
Rick Dangerous for linking me that speedrun that pointed the Candle out to me.
