Ashen is considered one of the best games on Nokia N-Gage.
It's quite surprising how big the bet was for this game to succeed. They made a lot of 3D graphics for the game, for the pre-rendered screenshots. Also, a cool trailer, a CGI TV commercial, a fine game case, an instruction manual, and even some promo items.

The instruction manual can be seen [https://www.scribd.com/document/287391223/Ashen-Manual-NG|here]. 

!!! Movement

You can walk, strife left/right, tilt the camera in any direction, jump, swim. The physics is good for a handheld game: objects fall down, you swim slower, inclined surfaces affect your movement, you gain more speed if you jump off a descending surface, air control is present.

!! Engine

The engine looks advanced for its time for a handheld console. It features:
- dynamic lights (albeit simple), 
- inclined surfaces,
- voxel models, projectiles and particles, 
- stack of objects (no infinitely high entities),
- full 3D environment ("rooms above rooms", camera tilting).

Friendly fire is available (including melee attacks), but there is no monster infighting.

Auto-aim sometimes lacks efficiency, but it is alright comparing to other FPSs I played.

!! Bugs
# Fire deacons perform pain animation before shooting.
# Items floating in the air if a lift moves down.
# Gibbed pieces floating in the air.

!!! Difficulty choice

The difficulty follows a typical formula of FPS from the 90s. Easy difficulty means less monsters and more items, and hard means the other way around.

I chose Hard difficulty. During TASing I also noticed that some monsters perofrm attacks when a player is out of sight. Maybe their decisions are planned ahead.

!!! Monsters

! Hunter
The first monster you encounter in the game. Tall, shoots projectiles at you.
There are two types of hunters.
The attacking ones approach you, while and the stationary ones keep their positions, although it's still possible to make them run at you.

Health = 80

! Crypt Crawler
Looks like a spider. It climbs along the walls and ceilings, can climb upon neighbouring sectors (for example, from a wall DOWNWARDS to the ceiling), which is a surprising mechanic considering the game's limitations. It occasionally spits at you, which deals the same damage as a hunter's projectile.

Health = 65

! Wraith
This monster is only visible when you put your goggles (Ghost Vision) on. However, they remain real all the time and can always deal or take damage. It does fast melee attacks, and it's deadlier than a hunter's projectile. Its hitbox is quite big although there are cases where you can run underneath it.

Health = 130 (2 bytes)

! Fire deacon
A classic monster which shoots from its both arms. It's hard to dodge their projectiles, but, what's more important, they deal high damage with their punches.
Fortunately, they have a roar animation, which gives you some time to take action.

Health = 200 

! Brood Paw

A flying creature which explodes on death. Like a crypt crawler, it occasionally stops to spit a projectile. Given its small size and altitude differences, the player's auto-aim sometimes misses it.

Health = 60

! Psi Stalker

Some skull with big arms hanging on two giant legs. The user manual provides the following description:
"This huge entity serves as a leader amongst the Maqabir creatures.
While slower than its smaller brethren, it is easily the most powerful, attacking both from a distance and in melee."

Its hitbox is huge. It's hard to miss and it's relatively easy to deal full shotgun damage from a distance. It serves as mini-boss twice in the game, because you cannot proceed while it's alife.

Health = 900

! Aquasore

Looks like an isanosaurus. Underwater, it can perform a long-distance attack, which is a hunter's projectile. On the surface, it runs, charges and lashes.
It runs at the player's speed, which makes it the fastest monster in the game. 

Health = 300

!!! Weapons

! Pistol 
Damage = 28
Firerate cycle = 31 frames
Reload time = 168 frames

! Pulse gun
Damage = 20
Firerate cycle = 26 frames

A replacement for your fists if you run out of ammo. It's the weakest weapon in the game, but its ammo replenishes with time and it's the only weapon which works under water.
Also, it doesn't stay bright in dark rooms, despite its burning flame animation.

! Dual Pistol 
Damage = 20 x2 
Firerate cycle = ~27 frames
Reload time = 136 frames

A good weapon to kill a hunter or a crawler fast. It's a bit weird how it fits 15 rounds in each pistol.

! Shotgun 
Damage = 7-84
Firerate cycle = ~29, 29 frames
Reload time = 138 frames

Shoots fast, but it's effective only at point-blank range. A shot consists of 12 pallets and each one deals 7 damage. It's not clear if it's about big spread, or the distance check, or fails of the player's auto-aim.

! Machine gun
Damage = 16
Firerate cycle = ~ 6.5625
Reload time = 182 frames

Such weapon needs no introduction. A good medium-distance weapon, which still needs close distance to deal damage efficiently.
Sometimes it shoots 2 bullets at once. I think this on how laggy the game currently is.

! Sniper Rifle
Damage = 80
Firerate cycle = 52/25 frames
Reload time = 134 frames

You must stand still to enter the scope mode in which you can shoot. What's interesting, you don't leave your scope mode until your firerate cycle is over, although you can still move and look around. Switching weapons in the meantime is also possible. In fact, re-switching to the sniper rifle lets you shoot once per 25 frames, but you have to stand still all the time.

! Grenade Launcher
Damage = 88.5
Firerate cycle = 40 frames
Reload time = 51 frames

Not a bad weapon, but it's hard to use its full potential. The trajectory of your shooting doesn't depend on the camera's angle. I think, it doesn't take auto-aim into account at all. It's up to your taken position and your predictions on how enemies may behave.

! Rocket Launcher
Damage = 88.5/91
Firerate cycle = 40 frames
Reload time = 51 frames

That's a good step-up from grenade launcher. Your rocket flies straight, but I think now that's auto-aim which decides if your rocket hits the target or flies through it.

! Gatling Gun
Damage = 17
Firerate cycle = ~ 5.14
Reload time = 69 frames

Basically, this is an improved machine gun, with gibbing effect included for better feeling of impact. Surprisingly, even aquasores explode. 
The first shot is usually a misfire, unless your target is close enough.

!!! Level by level commentaries

! Chapter 1-1: Seven River City

First, you're supposed to visit the apartment of your sister Vanessa and pick up the Ghost Vision goggles, which will come in handy as the game progresses. You can take a shortcut which lets you reach the exit without visiting the apartment, but then you'll face "Objectives incomplete" message at the end, which makes the timesave not that cool, just couple of seconds.

! Chapter 1-2

Not much to say on this one. It looks a bit weak because shooting the hunter which tears you while you swim past it, while take some of your time.

At this point I decided to show some parts of the game, including wraiths encounters, through the goggles view for the viewer to see the situation easier.

The two switches to lower the exit bridge can be done pacifist, but I found that there killing hunters saves time.

! Chapter 2-1: The Trail

Starting from this chapter, the combat intensifies. Well, neither I, nor the viewer don't mind to see more acts of shooting!

You cannot jump across the bridge barrier prior to the spot where you "hear" screams and your mission objective updates.

! Chapter 2-2

The exit tunnel features the first aquasore entity. Doom experience gave me a solution at once: the monster bumps into the still opening gate and, since there is not enough space to run sideways, it has to run back until it either reaches the other end of the hallway or if I stand straight in front of it, so it could turn around to attack me.

! Chapter 3-1: Cathedral District

This the chapter where wraiths start appearing (hi, goggles!) and they often block your pass.
The labyrinth section was difficult to optimise because walls often cut your momentum.

! Chapter 3-2

There are 2 fire deacons in the main church room, which you're supposed to kill for the door to open, which takes you upstairs.
  
Machine gun
200 hp / 16 damage = 13 shots
13 * 2 monsters - 1 last shot = 25 total shots
26 * 6.5625 avg firerate = 171 frames

Shotgun
200 hp / 84 damage = 3 shots
3 * 2 monsters - 1 last shot = 5
5 * 29 avg firerate = 145 frames

By calculations, shotgun is faster, but I decided to take the distance advantage with MG.
I tried spending the rest of my ammo on a deacon upstairs, but the auto-aim didn't play much in my favour. 

2+1 deacons must be killed for 2 doors to open.
When I reached the top floor of the church, I didn't expect my health situation to be that bad. So many attackers all around! 

! Chapter 4-1: Roof tops

The Hard difficulty justifies its name here. There are more wraiths around the map. 

! Chapter 4-2

You reach Vanessa and there is wave of monsters you need to destroy before the gate to Vanessa opens. Monsters just pop up from the air in 30 secs once your dialog finishes.
What's interesting is that those monsters which were put on the map beforehand don't need to be killed by you to progress. Only the wave monsters must be.

The rest of the chapter is just running through.

! Chapter 5-1: Maqabir Pillars

Not much to say on this one. Another runthrough. The movement was difficult to optimizes because of inclined surfaces Also, I like that jump across the river.

! Chapter 5-2

So, you need to turn off 4 pairs of dark pillars. Well, it's self-explanatory. I tried to take the fastest route. Once the last pillar is off, a psi stalker appears in the auditorium and you must destroy it to somehow make the severs gate open. 
The battle itself could be improved, but the fire deacon standing in the auditorium pulpit reacts to my movements and appears to be close to that psi stalker. I think it's still possible to run in-between them, but I took a different path which is bit slower.

! Chapter 6: Summoning Machine

There are 4 summoning machines you need to destroy. I puzzled and tested various routes and stopped at the one which goes through the underground section and waits 5 secs for the crushers to raise. Maybe going back once you destroy the 2nd machine would be faster.

Also, notice that short cutscene of the portal openning up. Looks like, Jacob's model isn't loaded to save some resources, but his hand with the weapon is still rendered.

! Chapter 7: Maqabir

So, first lift starts moving up once you activate the left switch and it's cycle is 617 * 2 frames. So that's roughly 20.5 secs of waiting.
The second lift starts moving down once you activate the right switch, and its cycle is 436 * 2 frames. That's roughly 7.2 / 21.6 secs of waiting.
The left switch path should be taken first.

The rest of the run is running, jumping and waiting for lifts.

! Chapter 8: Eliezer's Mansion

It's the only chapter in the game with mandatory underwater section. Also, it features an aquasore which swims and uses its unique shooting attack. If you don't kill it, which takes time to do, it swims towards you and I even managed to climb upon it to gain some momentum.

The final boss, the Prime Entity, has 3000 hp.
By the plot, you find Eleizer's note which states that attacking its limbs lets you subdue it. I decided to check if destroying the limbs outside the room with the final boss gives you any benefit from it. No, it doesn't.

The limbs themselves have no collision. You can jump through them.

After all 4 limbs are injured, the final boss can be attacked. After some time in "knock-out", it restores its limbs and become invincible again, although it still reacts to your shots. However, while stun-lock it, it cannot restore the limbs, which means you can shoot 2 full Gatling Gun clips.

!! Possible improvements

- Collect less Shotgun and Machine Gun ammo. I didn't expect Chapter 4-2 had so much ammo supplies.
- Do the sniper rifle re-switching trick in more places. I'm not sure if it will save much time because, as I mentioned earlier, you need to stand still to pull it off.

!! For the verifiers/reproducers

This TAS was migrated from one Chimera/EKA2L1 version to another 4 times, and didn't do any resyncs. Any combination of them starting from September 26th should replay this TAS just fine!
