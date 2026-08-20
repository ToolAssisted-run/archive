> **Imported**
> This run was originally published at https://tasvideos.org/7123M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Serious Sam Advance may be considered an ancestor to Doom for SNES: low-res graphics, terrible framerate, difficult control, good music.
However, Doom has the combat simplified for the player. If you just point in the direction of an enemy, you can be sure you will hit it in most cases. Hitscan weapons do their thing and projectiles fly where the target really is. Well, nothing like that is present in Serious Sam Advance. A target must be properly detected for your bullets to actually hit it, and projectiles lack aim correction. This makes the combat the worst among GBA first-person shooters. Even Medal of Honor: Underground feels better, despite having a ton of other flaws.

This TAS tries to make the game look somewhat decent.

!!! Game objectives

* Emulator used: GBAHawk 2.3.2
* Takes damage to save time
* Easiest difficulty
* Luck manipulation (not heavy, like "minor", because there isn't much luck involved)

!!! Comments

!! General

Turning depends on the global timer. The less lag you have, the more it is divided and, hence, smooth. Movement is lag-independent.%%%
There is no need to step away from the opening doors to run in faster. While you move, even against the wall, you gain momentum. The speed has 3 levels of "multiplication": 0 - while you stand, 1 - when you move for 1 frame cycle or released the movement keys, 2 - while you continuously move.

I think Climax could reference Doom's blockmap, because sometimes you take very minor damage from projectiles. A direct hit by a projectile might not deal any damage, only the splash does. I also faced a case when shooting an enemy didn't do anything.

Cycle of X frames = 1 non-lag + X-1 lag frames.

!! Enemies

Entities (enemies and the player) cannot take damage rapidly. Their "wounded" state must expire before they can take damage another time.

HP of teleported enemies are allocated when they become active. Such an address equals 0, when an enemy is in the process of spawning in or dead. Same addresses are often reused for newer enemies.%%%
What brings more complexity is that different addresses can be allocated for enemies' HP because of different lag.

Monsters can damage each other, although it's almost neglectable.%%%
Some enemies, like Cyclops and Reptiloids, shoot explosive projectiles and they can injure themselves.

* Kamikaze = 30 hp
* Methug Commander (green jumper) = 40
* Methug Soldier (green fat trooper) = 50
* Hermit Crabuloid (yellow jumper) = 60
* Bladder Beast (swarm thing) = 80
* Sirian Werebull (bull) = 100
* Aludran Arachnoid (scorpion) = 100
* Cyclops (space helmet with 2 big guns) = 100
* Aludran Reptiloid (big green 4-hands) = 130
* Gunrilla = 150
* Syrian Sphinx (boss 1) = 3000
* Wolfiator (boss 2) = 3000

Hermit Crabuloid have mechanic of hiding when the player is not close enough to them. The annoying part is that when their HP turns 0 (due to a rocket explosion) and they were hiding, they die only when the player makes them wake up.

Gunrillas perform pain animation if an explosion reaches them before their teleportation is finished. However, their health stays full.%%%
Also, they are quite eager to shoot at you. Most of the time, they injured their neighbors and ruined my tactics because of invincibility during the pain state.

!! Weapons

! Dual-barrel shotgun
Deals 60 damage. The shot distance is restricted.

! Tommy gun
Fire-rate is lag-based: first non-lag frame prepares the gun, every next non-lag frame is a shot.%%%
Deals 27-31-36-40 damage (the more laggy the game, the more damage you deal in one procession). After a successful hit, a target's pain animation has to finish before you can deal damage again. That's 2-3 frame cycles (~24 frames).%%%
36 damage = cycle of 8 frames

! Minigun
Deals 6 damage per a frame. Median is around 36. Basically, it's the same Tommy gun, but with higher damage. I read somewhere on the net that its bullets pierce through enemies, like Canon, but no, such effect is missing.

! Rocket launcher
A direct hit deals 130+ damage. ~120, if bad luck.%%%
Splash can deal up to the same damage if a wall is shot next to an enemy.

Rockets give you 5 ammo.

With a bit of luck, you can kill an Aludran Reptiloid with 1 rocket.

! Timestamp

Shoots once per ~48 frames. If the animation of falling object is successful, it deals 150+ damage. However, the target takes damage in the meantime, the effect of a timestamp is neglected.

! Cannon

Shoots once per ~42 frames. Deals 150+ damage. Cannonballs bounce of walls if the bounce angle is within (30-150 degree), although it's not clear when a bounce happens.%%%
They can pierce through 1-2 weak enemies. Such enemy as a gunrilla make a cannonball instantly bounce off.%%%
Maybe a cannonball has health counter? If you shoot 2 scorpions, the first one dies, the ball goes through, explodes and the second scorpion stays with 10 hp.


!!! Stage by stage comments

!! Level 1

Running through enemies until the end. I picked up a secret dual-barreled shotgun to perform necessary kills faster.

! Battle room 1

Wave 1: 4 kamikazes in the corner.%%%
Wave 2: 2 werebulls. Killing them opens the final door. Also, I managed to make the bull hit once just before I kill it, which boosted me a little bit.

!! Level 2

More running through. In fact, most of the time I run through enemies.

! Battle room 1

Wave 1: 4x2 crabuloids on each side of the room.

!! Level 3

! Battle room 1
Finally, I'm provided a decent weapon. Picking up an armor initiates the battle.

Wave 1: 2 groups of 1 werebull + 3 kamikazes.

! Battle room 2
Wave 1: 2 scorpions. %%%
Wave 2: 4 cyclops + 4 kamikazes. It takes a while for kamikazes to spawn in. So, taking a secret rocket launcher doesn't save much time: I lose time picking it up, but I instantly kill both scorpions.

!! Level 4

! Battle room 1
Walking over the rocket launcher initiates the battle.

Wave 1: 2 groups of 4 cyclops in the corners.%%%
Wave 2: 2 werebulls in the passage and 2 reptiloid on roofs.

! Battle room 2
Activating the switch, which opens the room with another switch, closes the door and initiates the battle.

Wave 1: 2 groups of 2 soldiers + 1 commander near the door. 2 pairs of kamikazes spawn afterwards, which is time-based.%%%

! Battle room 3
Grabbing a backpack initiates the battle.

Wave 1: 2 groups of 3 cyclops. 2 kamikazes spawn afterwards.%%%
Wave 2: 2 groups of 2 soldiers + 1 commander close to each other. %%%
Wave 3: 3 cyclops and 4 groups of 3 kamikazes. This wave is fully time-based, so I decided to use Tommy gun for a while.

!! Level 5

This level is different from the rest, because it doesn't have much enemies pre-spawned on the map. In the first room, you have cycles of 3-4 frames. Becomes quite playable, doesn't it? %%%
Unfortunately, there's a catch. In Battle room 2, there are 4 crabuloids guarding an armor you're supposed to pick up to initiate a battle. They are just regular enemies, which you don't need to kill in order to progress. However, if you don't kill them AS WELL AS the kamikazes spawned at the entrance of this battle room, then when you reach Battle room 3 and kill another 4 crabuloids at the room center, the 4 pairs of enemies surrounding you won't spawn in! This means, no further progression. I think this happens because there is an error in level's trigger logic.

! Battle room 1
Pick up a minigun to initiate the battle.

Wave 1: 5 cyclops in front of the passage. 4 kamikazes are spawned based on the wave timer. %%%
Wave 2: a werebull behind the wall and 4 kamikazes in the passage.%%%
Wave 3: another werebull behind another wall and 4 kamikazes in the passage.%%%
Wave 4: 3 soldiers and 2 commanders in front of the entrance area. 4 kamikazes are spawned based on the wave timer.

! Battle room 2
Pick up an armor to initiate the battle. Also, 4 pre-spawned crabuloids mentioned earlier are necessary to kill.

Wave 1: Then 3 soldiers. 2 kamikazes are spawned based on the wave timer. %%%
Wave 2: 5 commanders on the opposite side from wave 1.

! Battle room 3

There 2 waves happening in parallel.%%%
Wave A: 3 pairs of kamikazes spawning by timer. Killing the last pair opens the door you just came in.
Wave B0: Killing the 4 pre-spawned crabuloids, assuming the 4 ones in battle room 2 are dead, initiates the battle.
Wave B1: 2 pairs of soldiers on the right side of the room.
Wave B2: 2 pairs of commanders on the left side of the room. It opens the door with supplies that leads to battle room 4.

! Battle room 4
When 2 scorpions spawn in, a timer is activated to spawn 2 groups of 3 kamikazes one after another. Quite lenient.

! Battle room 5
Wave 1: Killing scorpions and kamikazes is necessary for armor to spawn which you have to touch, but it's dependent on the timer.

!! Level 6 

! Battle room 1

Wave 1: When you reach the arena center, two bulls spawn in and a timer to spawn the supplies for the next wave is activated. I decided to playaround with dual-barreled shotgun. kamikazes spawn is time-based and killing them is not necessary, strictly speaking.%%%
Wave 2: 2 pairs (bladder beast + cyclops) spawn in 2 corners.%%%
Wave 3: 1+1 soldier in corners, 5 soldiers and 3 commander in the center. 3 kamikazes on the opposite side where the staircase descends, by timer. 

! Battle room 2

When you reach the room, you need to wait for some time for the game to perform some manipulations for enemies to be properly spawned. If enter the room too fast, this prevent them from spawning, and it seems to be a softlock.

Waves 1-5: a group of 5-6 cyclops. Killing the final group spawns a backpack you must pick up.%%%
Wave 6: 3 scorpions. Again, you have to wait for some time before picking up the backpack.

! Battle room 3

The door closes in front of you and you need to kill the enemies which appear behind you.

Wave 1: 8 crabuloids. %%%
Wave 2: 6 kamikazes.

! Battle room 4

Once you kill kamikazes, 2 scorpions and 5 kamikazes spawn in the next room and their roaming logic is loaded. Once it's done, the door opens and you must kill them all.

! Battle room 5

Syrian Sphinx boss stands still and shoots lenient projectiles at you until its dead. It doesn't have wound animation, which means you deal damage whenever it happens. So, the fight is just shooting it from minigun.%%%
I could come closer to show how it looks like, but it reduces lag frames and hence reduces damage on rare occasions.

!! Level 7

! Battle room 1

Wave 1: 2 groups of kamikazes, spawned with a delay after one another.%%%
Wave 2: a group of kamikazes in the square's left corner from the starting point. Another group in the right corner isn't mandatory to kill.%%%
Wave 3: a group of kamikazes in the passage.%%%
Wave 4: 2 scorpions near the door.

! Battle room 2

Wave 1: two reptiloids on the center pedestals.%%%
Wave 2: 4 reptiloids on roofs.%%%
Wave 3: 2 groups of 5 beasts on the opposite sides, by timer. The supplies for the next wave spawn either on two groups being killed, or based on the timer (whichever happens later). 2 groups of kamikazes spawn on timers, but they are not necessary to kill.

! Battle room 3

I gotta admit, this area performs at just 6 fps! Probably, because of werebulls I ran through.

Wave 1: 2 beasts and 12 kamikazes.%%%
Wave 2: 2 scorpions and 4 werebulls.

!! Level 8

! Battle room 1

Wave 1: 2x4 gunrillas on roofs. Rocket splash does wonders.%%%
Wave 2: 5 kamikades at the room exit.%%%
Wave 3: 4 gunrillas at the room exit.%%%
Wave 4: 3 gunrillas at the room exit.

! Battle room 2

Walking [https://youtu.be/fEHXeKIroGU?si=5XnKbNDT9In9_wR0&t=824|out of bounds] doesn't make any sense. The doors are closed, only the first switch can be activated, the boundaries beyond the room are quite small and you can't go back inbounds only from the spot you came in. Going deep into the OOB spawns Syrian Sphinx at the center of the room and the game goes into infinite lagging.

Wave 1: 6 beasts and 4 crabuloids.%%%
Wave 2: 2 scorpions. 4 kamikazes spawned a bit earlier and not necessary to kill.

You need to press 2 switches to open the door with a lot of crabuloids waiting. Despite the fastest time, maybe I should have taken a different angle. %%%
I couldn't come up with any other way to clean the path than do a face-rocket to kill the blocking crabuloids. 

! Battle room 3

Wave 1: 2 scorpions and 7 crabuloids. It was very hard to optimize because crabuloids hide faster than a rocket hits them, making you approach them before the game registers their death.

Battle room 4 can be skipped if you not run through the main corridor to the exit.

!! Level 9

! Battle room 1

After you pick up a backpack, enemies start spawning in.

Wave 1: 5 bulls on the right passage.%%%
Wave 2: 4 kamikazes on each passage. A trigger health item has to be touched to proceed.%%%
Wave 3: 4 kamikazes on each passage. %%%
Wave 4: 4 kamikazes on each passage. Clearing the left passage is necessary.%%%
Wave 5: 3 soldiers and 2 commanders on the right passage. Opens the door behind them.

! Battle room 2

Wave 1: 6 gunrillas. Afterwards, 4 kamikazes spawn around the same line where gunrillas appeared.%%%
Wave 2: 2x2 kamikazes in corners of the wall from where gunrillas appeared. Soon, 6 gunrillas spawn near the exit door. Then 2x4 more kamikazes spawn in one by one. All are mandatory to kill.
After that, Timestamp weapon spawns in which you must collect for the door to open.

! Battle room 3

Wave 1: 2x4 bladder beasts in 4 parts of room.

On your way to the final room, there is a hallway with a gunrilla standing in-between two columns. The time it takes it to run forward is more than the time it takes to kill it with a timestamp.

! Battle room 4
Wave 1: 4 gunrillas near the exit door. kamikazes are optional to kill.%%%
Wave 2: 4 scorpions in the opposite corners.

!! Level 10

Here is the [https://ibb.co/hxzTCFt5|map] I drew for planning. Scale, boundaries and placements are imprecise.

! Battle room 1
Wave 1: 10 kamikazes around the streets. That was surprisingly easy to tackle. The shot cannon ball not only did its job to kill 2 kamikazes in the southern-west corner, but it also flew all the way to the southern-east corner and would kill another kamikaze standing there. Stop the movie at the frame 53562 to see that! You may leave some forward input to see it clearer.%%%
Wave 2: 8 gunrillas and 7 kamikazes around the streets. Here I ran out of health. It was difficult to perform the combat optimally. Also, the scorpion in the northern-west corner got fused with a gunrilla and a cannonball was killing the wrong target in most cases.

! Battle room 2

Wave 1: 5 scorpions and 5 kamikazes.%%%
Wave 2: 6 gunrillas and 3 reptiloids. It was the easier fight I had, thanks to the timestamp.

!! Level 11

! Battle room 1

Wave 1: 4 scorpions near the exit door.%%%
Wave 2: 7 gunrillas on the opposite side.%%%
Wave 3: 4 scorpions near the exit door.%%%
Wave 4: 7 gunrillas on the opposite side.

! Battle room 2

Wave 1: 7 gunrillas across the pit.%%%
Wave 2: 8 kamikazes in the passage I came from.%%%
Wave 3: 3 reptiloids across the pit.%%%
Wave 4: 8 kamikazes in the next passage.%%%
Wave 5: 1 reptiloid near the end of the passage.

! Battle room 3

Wave 1: 5 gunrillas near the exit door.

! Battle room 4

Wave 1: 8 gunrillas and 4 scorpions. 2 kamikazea, which spawn beforehand, are optional to kill. It was a pain to optimize because there were plenty of projectiles flying at monsters in the process of timestamp-ed destruction.

!! Level 12

Finally! The starting point is so optimized: 20 fps xD. But, once I start moving, it's a slideshow again.

! Battle room 1

Wave 1: 2 scorpions near the exit door.%%%
Waves 2-17: 2 kamikazes in one of the corner. I thought I could finally relax and do some slow-motion TASing, but no, it seems like you have to kill them in order to have next wave spawned quicker.

! Battle room 2

Wave 1: 2 scorpions spawn near the walls after you grab U.M.T weapon.%%%
Wave 2: 8 gunrillas around the room. Surprisingly, I managed to kill them with 7 cannonballs, instead of planned 8, because they bounce off gunrillas and there isn't much chance for a cannonball to hit-blow something else.%%%
Wave 3: 4 scorpions and 2 bladder beasts around the room. That was easy to pull off. Because I climbed at the 2nd floor, doing maneuvers with auto-aim pointing down makes rockets hit the floor, which lets powerful splash do the job better.

! Battle room 3

Wave 1: 4 scorpions.%%%
Wave 2: 10 kamikazes near the exit door.%%%
Wave 3: 4x2 gunrillas in the opposite parts of the room. Finally, the only usage of the only U.M.T charge I have.

! Battle room 4

Wolfiator boss, like his pirate copy 6 levels ago, dies of minigun storm. There would be a moment near the end of the find when its health stops draining while it performs some animation. Probably, to summon some monsters. I changed a variety of positions to prevent this animation.

The end! 

!! Other comments

Here is the [/UserFiles/Info/639136599850152052|Lua script] I used to see whether my movements are optimized.

! Possible improvements

* At Level 1, about a second could be saved if I skipped the quote on the score screen. I realized it too late.

! Special thanks to: 
[user:tapioca] - for his [https://www.speedrun.com/ssa/runs/yo4dd60m|speedruns] of this game,
FrameRater - for his Serious Sam Advance review
