> **Imported**
> This run was originally published at https://tasvideos.org/5736M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Playlist with all TAS videos: https://www.youtube.com/watch?v=Xolq3YCmJ-o&list=PL3V0eG1j-1vJAcsTO-gJcR8WEzHvJLJzQ

%%TOC%%

TMNT 2: Battle Nexus is the second game of Konami's trilogy based on Teenage Mutant Ninja Turtles 2003 TV animation series. Unlike TMNT 2003 (first game), TMNT 2 provides more gameplay diversity and is not always tight to plain beat-'em-up. This TAS completes the game in the fastest time by beating only necessary levels.
 
!! Game objectives

* Emulator used: Bizhawk 2.8 with Dolphin 5.0-16426 core [https://tasvideos.org/Forum/Topics/23347?CurrentPage=1&PageSize=25&Sort=CreateTimestamp|implemented] (syncs on Dolphin 5.0-16426)
* Takes damage to save time
* Luck manipulation
* Uses easiest difficulty

!! TAS Playback setup

__Game data__

Teenage Mutant Ninja Turtles 2 - Battle Nexus (USA) (Disc 1).rvz %%%
SHA-1: ea373ed9ce433f46eb783f93ed81798ed652bf45 %%%
MD5: 78226fcfb3b12090a6d06e9754ab2262 %%%
CRC32: 8e1cd4f7 %%%
Redump.org Status: Good Dump 

Teenage Mutant Ninja Turtles 2 - Battle Nexus (USA) (Disc 2).rvz %%%
SHA-1: d5e581c87302dba7518e2a1d95d5107adc5bc62b %%%
MD5: 88532ad2719be508171d6ffa3f2703b4 %%%
CRC32: 93a6c844 %%%
Redump.org Status: Good Dump %%%

Here is a [https://ibb.co/Zxw5TQx|screenshot] of Bizhawk settings for Dolphin. Basically, it uses default Dolphin settings, but all memory cards are removed and MMU is enabled.

__Notes__: 

1. Bizhawk Dolphin 5.0-16426, as of the day of submission, is incapable of reading GameCube ROMs of any format other than .iso, so I converted both ROMs into ISO format using Dolphin's built-in conversion tool. %%%
2. For DTM multi-disk input files, ROM name is limited to 40 characters (if I remember correctly), so I intentionally renamed the ROMs to "TMNT2-USA-Disc1.iso" and "TMNT2-USA-Disc2.iso" respectively.

!! Difficulty differences

On Easy difficulty, enemies and bosses use block moves less frequently and act less aggressively, although they still use dirty moves, like pre-fire. Basically, playing on Hard would make me do more manipulations throughout the game. I thought it would drain my motivation much quicker, so I decided to go with Easy.

!! Crystals

Unlike TMNT 2003, here it makes sense to collect crystals to improve your combat and save time. Each one works for 15 seconds.

* Red crystal increases your attack power in 2 times.
* Orange lets you perform a charged attack at once.
* White gives you infinite shurikens.
* Green decreases the taken damage. It has no purpose for this TAS.

Crystals' effects are maintained when you move to the next area, but the screen fade-out and fade-in take a big amount of time. If you face a loading screen, the effect goes away.

!! Combat

For simplicity, the following legend is used:

__A__ - weak attack %%%
__B__ - strong attack


;A-A-B: This is the only available combo at the beginning of the game. It deals 4 hits. To unlock new combos, you need to collect crystals which doesn't make sense in scope of an any% speedrun.

;B: A single attack move which pushes enemies away. 
* If you hold B for 56 frames, you character performs a charged attack. Raph's attack was used to kill the vast majority of enemies when it saves time, especially during the active effect of an orange crystal.

__Dash__ is the movement, which makes you push forward and cover a short distance swiftly. A player can perform it while standing still and in the middle of a combo move, but not in the middle of a standalone strong attack.

!! Characters

The player can switch between 4 characters in a loop while standing still. Since the game uses no save progress, all 4 characters are the Turtles.

* __Raphael__ was used as the main combat character. All his attacks (combos, standalone strong attack, charged strong attack) deal more damage than other turtles' attacks, his strong attack pushes enemies furtherer away and takes less time to finish.
* __Leonardo__ was used mainly for faster movement. He is the only turtle who knocks enemies down while performing a dash move (deals damage of a strong attack), which is also useful to activate levers. His jump attack makes him do a fast jump-kick at an angle, which is almost always faster than regular landing.
* __Michelangelo__ was used only to fly across distant platforms, thanks to his nunchuck helicopter ability.
* __Donatello__ was used only to perform jump attacks on the Spasmosaur (Episode 5-7) and for a pair of other activities when there was no preference which turtle to use for them.

Raph throws shurikens slower than Leo and Mike.

!! Control

* While doing combos, you can maneuver left or right (like in tank control), which lets you cover more area to some extent.
* You can maneuver while in the air, although it's not that powerful.
* Wall-jumping is always done in the opposite direction from the wall. However, if a jump is done after that, you can perform a jump-attack in the desired direction. However, all turtles, except Leonardo, are affected by the inertia.

* You cannot change direction while throwing shurikens. After you have spammed your only target, you have to wait for 24 frames before you can change direction. You cannot dash or somehow cut this action. 
* The best strategy is inline yourself with 2 targets, eliminate the first one and expect the second one run into the line of fire. Otherwise, you have to wait for the same 24 frames for the game to lock on the new target.

!! Enemies

* You cannot harm enemies during their spawn animation, with the exception of Foot Tech Ninjas (invisible ones) for specific episodes. It's explained below. 
* When enemies walk out of their spawn points, they must cover a certain amount of distance before you can harm them. You cannot move enemies with your movement.
** For a specific episodes, like Episode 2-3, you can move utroms with your attacks, making them vulnerable quicker.
* There is no spawn framerule, like in TMNT 2003. Each spawn point has its own timer and its place in the spawn sequence.
* Surprisingly, patrolling enemies can be affected by different input coordinates of your analog stick.

* Freezing and toxic barrels don’t deal much damage. A Triceraton big guy takes 1 dash with Red Crystal and flies at a barrel and then takes 6 shurikens, as opposed to 8 shurikens.
* Only regular enemies can detonate barrels by falling into them, as well as be hit by a thrown barrel which deals even more damage than explosion. However, there were no situations when it would be faster than combos.


! Misc

* Most of the moving objects on levels have prescribed launch moments.
* All laser barriers in the game come with invisible walls above them, so it’s impossible to jump over anyone of those.


!!! Stage by stage comments

! Episode 0-1 - 0:41

This level is like a tutorial to make the player do various things the game has to offer. The red crystal saves a little time although it wasn’t that necessary to take it.

The exit door opens only after you eliminate all foot ninjas and mousers. The white crystal saves a lot of time because you don’t save time on movement.


! Episode 0-2 - 0:27

The first gate opens after you eliminate 2 archers and 2 katana ninjas near it.

The combat cycle of combos and dashing is not in sync with Hun’s retaliations. Sometimes I had to dash away 3 times instead of 2, even if I maneuver my last combo to gain some distance.


! Episode 2-1 - 0:46

Two utrom people must be eliminated in order to remove the first barrier. After the second barrier, you need to kill all utroms which show up. Their spawn pattern is predefined.

In the next area, after you cross a long hallway, you need to kill all 4 utrom big guys to remove the exit barrier. 


! Episode 2-2 - 0:17

First, you must reach a group of 4 big guys near the barrier. After you do this, a special squad of 3 troopers spawns behind you. All of them (4+3) must be killed in order for the barrier to get removed.


! Episode 2-3 - 1:34

This level has 2 exits. %%%
* The __regular exit__ is archived if you wait for the timer to finish. You open the path to the planet Zero and episode 3-1. 
* The __secret exit__ is archived if you eliminate all the enemies before the time runs out. Then, the planet Zero is skipped and you move straight to the planet D’Hoonnib and unlock episode 4-1. That was my objective.

You have 3 “factories” which produce red mousers, flying utroms and walking utroms respectively. Each factory has its own limit of spawned enemies as well as the general limit of enemies and the internal timer to spawn a new unit. The “factory” which spawns walking utroms (big guys and shooters) is the bottleneck here, so the fastest way to finish the level is to satisfy the conditions so this factory would spawn the enemies without any pauses.

I don’t know what the actual limit of enemies is and if the mechanic of “spawn weights” from TMNT 2003 is present here, so I was trying to keep the total number of enemies at minimum. 

Some versatility is shown near the end because it wasn’t necessary to kill the remaining enemies as fast as possible. Only the spawn limit mattered. 

The score given to your technics is weird. I can assume, you should unlock and use all the combos and all charge attack levels to have higher scores.


! Episode 4-1 - 0:32

The escort mission to take the Fugitoid from point A to point B. You move very slowly while carrying anything, so the fastest strategy is to throw him and pick him up again. 

The Fugitoid can survive 4 throws. If he runs out of health, he stands on his knees and turns off, and this is indicated as a mission failure. That means I had to plan it in the way he falls down in the exit area on the 5th throw. Then the mission succeeds before failing.

! Episode 4-2 - 0:58

This level has 4 long hallways with obstacles. I tried to route the path to cover as less distance as possible.

Leonardo’s dashing is useful to destroy the crates and push the mousers away, but not the explosives. Thankfully, I spent only a couple of extra frames on character switching because after a dash with the direction change, the switching takes no time.

! Episode 4-3 - 0:23

Not much to say about the regular part. It has the maximum concentration of dashing at the very edge of a cliff. You cannot jump at the wall near the arena entrance.

* Boss fight: __Ninja Rats__

They share the same lifebar, so the fastest strategy is to deal damage to multiple enemies at once, although it wasn’t that easy because Ninja Rats move and jump around like crazy.

The arena features an Aerial crystal. I have tested the shuriken tactic and it appeared slower. https://youtu.be/cVGn2qhDZ90


! Episode 4-4 - 0:17

We have covered a lot of X-distance recently, so now it’s time to cover a lot of Y-distance and jump high upon high.

It wasn’t necessary to switch characters, but that robot flying above the lava stream was shooting me, so I had to switch the turtle and do the full cycle. There is a red crystal in the box at that spot, but I skipped it because it doesn’t save time.


! Episode 4-5 - 0:29

As soon as you bypass the lava and jump onto the platform with the lift and conveyers, two federation big guys appear and you need to eliminate them as well as 4 troopers on the way to the lift. Then the lift barrier disappears and you go up to fight Slahuur. 

It’s impossible to jump over the lift barrier because of the invisible wall above the lasers.

Some time is saved by jumping up to reach the level exit boundaries earlier. It’s not possible to do a wall-jump within the lift area.


! Episode 4-6 - 0:47

Not much to say about the short travel to the bar. Breaking through as Leo helped me manipulate the guarding soldier to approach me. Killing him removes the barriers.

4 atoms walk into the bar. Ha, ha. Like in episode 2-3, you have to fight incoming enemies until the “factories” run out of fuel. There are 2 “factories” this time: one spawns triceratons (big guys and troopers) and one spawns federation soldiers (guards and troopers). Each one has a limit of 4 units.
Unfortunately, there is no bottleneck here. The last triceraton gets vulnerable a little later, but this doesn’t let you prepare for it, so I had to take the red crystal to kill the remaining enemies with less time loses.

A thrown explosive barrel deals enough damage to take down a triceraton big guy on contact (not explosion) which would be a great workaround for a kill in the fastest time, and then the crystals screen wouldn’t appear in the end.

In this episode I faced the first desync =(


! Episode 4-7 - 2:50

This is a time-based level. Since I decided to go for real time instead of in-game time, it was necessary to finish the level with a low score to avoid any extra screens.

I would do something funny in slow motion, but that version of Bizhawk doesn’t provide any bindings for analogue sticks. Maybe an external controller would do, but I don’t have one. Still, I decided to do some shooting.


! Episode 4-8 - 0:35

Once you get into the forest, you need to destroy a spaceship to reveal the passage to the exit. Leo’s dash attack deals damage twice, which gives a little advantage here comparing to combos. %%%
There is no spot to destroy it without being fired by the federation troopers, so I had to dodge one blast. 

There are 4 triceraton troopers at the end, which must be killed in order to reveal the exit. Since they die of barrel explosions, I took an invulnerability to execute the fastest tactics.


! Episode 4-9 - 0:18

It’s another level with a barrier. Taking the path to the left or to the right leads to the same time result. 

There is a triceraton big guy walking around the barrel to the left from the barrier.  After you go enough far to the left from the barrier, a special triceraton big guy spawn in front of the gate. Both of them must be eliminated.

I managed to get the same exit time with and without the red crystal.


! Episode 5-1 - 0:16

This episode and beyond requires Disk 2 of the game. Even though the game keeps the map, the control and the music in its RAM, swapping disks while moving the turtle sign (to save time) results in the screen with the request to insert Disk 1. After you select an episode which requires Disk 2 and see the respective message, only then you need to swap a disk.

The fastest route through the Triceratons Republic is through the secret exit in this episode. 

The secret exit route is quite simple with Mikey, although it requires manipulating the trooper behind 2 lasers not to shoot you.


! Episode 5-4 - 0:34

The first area is a long hallway which requires precise movement. The red crystal saves time with killing the guards.

The second are is a big room where you need to kill all the triceratons. Unfortunately, the red crystal’s effect was enough to kill only 2 of them, so I decided to use the white crystal for the whole thing.

I actually lost a couple of frames on the central tricerator because I still needed to throw 6 shurikens (vs 8 normally), but it was a manipulation that helped me spam other targets one by one without any time loses. If I had dashed straight to the white crystal, one of the big guys below me would approach me, hence getting out of sight of my the shuriken autoaim.


! Episode 5-5 - 0:35

This episode introduces levers which open doors. Unfortunately, the door opening animation must play till the end before you are able to come in or throw shurikens. %%%
After you enter small rooms, you are supposed to kill the triceratons present in the room to make the doors open.


! Episode 5-6 - 0:34

The first pit setup is not comfortable to cover because the swinging axe manages to cover the platforms across the pit, and it cannot be manipulated. So I had to do a long double jump.

* Boss fight: __Traximus__

The devs didn’t come up with something new this time. Ironically, Traximus is not that different from Hun, but he inherits the combat mechanic from Shredder from TMNT 2003. He lets 9 hits (calm state), then he stops going into the pain state and does an action. Here is what he can do:

# Swings his axe
# Swings his tail
# Jump back, then block you hits
# Jump back, then do an action
# Jump up and hit the floor (when the player is on a distance)
# Rush at you (when the player is on a distance)

In order to make him go calm, you have to let him finish his action, which is slow for TAS. %%%
If you attack him during his action, he goes into the pain state once, and then does an action. The whole fight is done like that in this TAS. 

My priorities were actions #1 and #2 because, when he jumps back, he is invincible. The circumstances sometimes happened in the way so I had to lose some time to make him do an attack I want, and wait for the damaging element (axe or tail) to bypass me, so I could start a new attack.


! Episode 5-7 - 1:06

* Boss fight: __Spasmosaur__

It has to crush into walls 4 times in order to be destroyed.

The first chase is prescribed, to show the player how to fight it. You can hit it right away and it always crashes into the southern wall. In fact, your presence is not necessary for this time, so this is a dose of free time for you.

For the further chase, you have to wait for it to start attacking you, and then you jump and hit its mouth. Spasmosaur has to turn purple from you hit in order to start chasing you. Otherwise, it will just go into the pain state and then initiate another attack.

After each crash, it moves to its initial position. It’s important to be in front of it after it stops moving, so it doesn’t spend time on turning at you. %%%
The initial position is almost at the center of the triangle arena. The closest spots are northern columns of the opened doors to the left and to the right from the center. Spasmosaur should crash into them. If it moves straight towards these doors between columns, it takes 8 additional frames before the game detects a bump.

Spasmosaur can do the following actions:
# Spit a gluing ball at you
# Blench
# Swing his tentacles

Action #1 is the fastest. While doing action #3, its mouth is invincible.


! Episode 5-8 - 2:50

Another spaceship flight. This time I use all 4 turtles, so people wouldn't be that bored of hearing the same 3 voice lines for the whole episode.


! Episode 6-1 - 0:10

It’s another level with 2 exits. 

For __normal exit__ (to episode 6-2), you need to cross the bridge and kill all Foot ninjas you come across. 

For the __secret exit__ (to episode 6-4), normally you need to cut the bamboo near the bridge, reveal the secret passage, move away the giant box and enter the secret room behind it. However, the exit boundaries are so big you can actually exit the level by falling down near the specific bulge, which is above the secret room. Since all your hitbox is within these boundaries, the game detects the level as cleared.


! Episode 6-4 - 0:23

The wheel section would be a point of interest, but the barrels cannot be all destroyed with 1 shuriken and you stay vulnerable to archers.

This wide pit with 4 red barrels on the other end cannot be crossed from the right side.


! Episode 6-5 - 1:23

This is one of the few episodes where you are supposed to kill all the enemies on the location. This episode may have some space for optimization because these melee Foot Ninjas often pre-fire as soon as you are near them. I don’t know for what purpose Konami did it, but they made ninjas invincible when they do backflips. Also, the nearest pit is often too far away for you to kick a ninja out.

The last section looks sloppy (at least, to me). When I threw a shuriken at an archer, it flew below the target unless I was on the same height with it. Also, the autoaim struggles finding the targets. I can assume, by this time, the player is supposed have the ability to throw shurikens while jumping, to be closer to archers.


! Episode 6-6 - 0:09

* Boss fight: __Feudal Japan Shredder__

You fight on a small arena surrounded with barriers. There are 2 tactics to choose: %%%
* Destroy a barrier and push Shredder off the cliff
* Fight him (you can watch it [https://www.youtube.com/watch?v=7KfKniu1kXg&list=PL3V0eG1j-1vJAcsTO-gJcR8WEzHvJLJzQ&index=6&pp=iAQB|here])

Of course, the first tactic is much faster, although it takes effort to execute because Shredder dashes back to the center of the arena, if you take too much time to knock him away.

The second tactic is complicated. Like Traximus, Shredder goes into the pain state only once in-between attacks. He can do the following actions:
* Swings his sword twice and shoots 3 fireballs at you
* Catches and throws you
* Does a massive blow-up of multiple fireballs (if he performs 2+ dashes on his way to the arena center)

The whole fight is about doing a combo (or 2 hits + 1 strong hit) and dodging his attack. Unlike with Traximus, you have to let Shredder do his swings, although his second swing doesn’t have a big hitbox.


! Episode 6-7 - 0:38

This episode has the same spirit as the one found in 6-5. You need to kill all the enemies, and it still has problems with shurikens, even though you have to use them a lot.

Since the area is relatively small and there are no “factories”, the enemies here jump from the sky. Most of the enemies have spawn sequences where a new enemy of the same kind spawns in a different place. %%%
The bottleneck here is the invisible ninja. It has a sequence of 5 units and, of course, you have to wait for each one to completely spawn in. This is the only reason why I started the upper section first.

The shuriken problem is, again, the auto-aiming system. Due to the lack of 3rd dimension here and a lot of targets being “in sight”, the autoaim often selects a wrong target to throw shurikens at, even if it’s far away and shurikens won’t hurt it. The targets also move which means shurikens miss them on even medium distances. These freezing barrels also have little to no purpose here.


! Episode 6-8 - 0:56

The left side was quite complicated regarding the distance to the transitional device for utroms placed near the wall. Shredder’s attacks are predictable, so the route was selected accordingly to avoid his attacks.

When you throw an utrom, Shredder immediately strikes you with a big projectile and you fall back, even though it looks like a time saver, it’s actually slower. Regular throw animation takes 48 frames while fall-rise sequence takes 64 frames, although you decrease some frame loses, if you would otherwise need to run to the nearest utrom. Little projectiles do it faster: 50 frames, but they usually come in pairs.

Unfortunately, I haven’t found a good way to bypass the antique, but that was a small loss of time after the episode. 

The right side has less covers, which means you have to either take damage or wait until the projectiles get blocked by available flasks. I tried to take advantage of the distance I covered of falling back.

! Episode 9-1 - 1:21

You’re supposed to kill 15 purple dragons, mobs and Foot Tech ninjas in order to complete the level.

There are 14 spawn points on the map: 
* 3 entrances, 
* 4 cracks between buildings, 
* 2 box spots next to the broken buses 
* 5 Foot Tech spots which form a cross if you look at the map from a flying bird’s perspective. %%%
Each spot has its own timer and sometimes a small queue, like for Foot spots. The area is divided into zones and the presence of the player in one or another may affect the spawn operation. I cannot say how it works. 

Purple Dragons sometimes throw grenades which do the same damage as barrels, but they don’t throw them at the player. The map is filled with so called “target spots”. If a player is near one of them, there’s a probability that a dragon may throw a grenade at the spot.

It’s not possible here to push newly spawned walking-out enemies with your dashes to make them vulnerable quicker.

! Episode 9-2 - 2:50

It’s the last necessary riding section and the least one I was prepared to. At first, I tried to play in “Floor is lava”, but the game didn’t bring much furniture I could jump at. By the end of the episode I came up with an idea of giving each turtle its own style of riding, but I didn’t want to redo the TAS. I didn’t have an option to pass the level in slow motion because, unlike Dolphin, it’s impossible to bind analog stick leans in Bizhawk.


! Episode 9-3 - 0:37

Another platforming section with not much enemies to fight. 

After you run across the scaffolding and reaching the last part where you do a rectangle run-around, there is another weird engine restriction. Surprisingly, while flying on nunchucks you cannot fly across the whole screen. There are invisible barriers around the pipe platform. You’re supposed to reach the point B in order to have these barriers removed.

Footmech Splinter is an easy boss, if you don’t take much time to hit him. 
He often blocks your attacks, but you can prevent it by delaying your attack by 2 frames. When you let him attack you, you can always fight back because he doesn’t ignore damage.
When he decides to retaliate, he often does nothing but ignore damage, if you stand very close to him.


! Episode 10
__Episode 10-1 - 0:22__ %%%
__Episode 10-2 - 0:16__ %%%
__Episode 10-3 - 0:13__ %%%

Not much to comment on these ones. __Slashuur __didn’t get any harder.

!! About Elite Guard boss fights

Since I have to fight 4 Elite Ninjas in episodes 11-1 through 11-4, I’ll sum up something. %%%
Like in TMNT 1, they can do 2 special actions: %%%
* Shadow running – they do some preparation, then quickly run around you and perform an attack. For this whole period they ignore the pain state. So, if the boss does this, you have to dash away before he attacks you. For this reason, all 4 ninjas are manipulated to never do this action.
* Shadow cloning – they go into this long animation of multiplying. Each fight consists of two inevitable animations, which result in having 1 and 2 clones respectively. %%%
Clones act like Elite Ninjas, but they cannot do special actions. Since all 4 boss fights are nothing more than repetitive combos until down, the clones cause serious problems if they run at you from the real Elite Ninja’s side. They attack you and your range is not enough to prevent it. If they run at you from behind, they switch to walking and don’t attack you as long as you keep moving forward of doing your combos and dashes. 

The health thresholds, which trigger shadow cloning, are prescribed. So, if you measure the remaining health to 2 Raph’s combos, then throwing shurikens doesn’t save time. I mean, you will deal a little more damage with 10 shurikens (of 1 extra weak attack), but you will have the respective time lose (26 frames). If you can deal a strong attack at the end, then shurikens will result in a small loss of time. 

! Episode 11-1 - 0:59

Again, not much to comment on the platforming section. This episode is the only one which provides an alternative route, thanks to the discovered box glide (discovered by Veekron). I made a route comparison [https://www.youtube.com/watch?v=Bx04JdekeiM|video]

* Boss fight: __Elite Guard__ with swords

Despite having lots of barrels, Elite Ninjas cannot break objects by being knocked down into a box or a barrel. Still, I tried to detonate barrels using the last Raph’s combo move and moments when the Elite Ninja ignores attacks for a short while. I did this 3 times. Also, I managed to somehow detonate the barrel without getting knocked down. I tried to reproduce it, but got no luck.

!!! Box glide trick
There is an exploit on this map which lets you go through the wall. To do this, you need to jump onto the specific box and gently ease yourself forward into the wall, so you fall into the surface between the wall and the box. It is placed just enough away from the wall, so the game not only fixes your position and lets you lend onto this narrow space, but it also pushes you away from the box through the wall.

Unfortunately, this route is slower than the normal one. %%%
# You need your movement to be slight in order to not completely slide off the floor because your lending animation is too slow here. As soon as you begin gliding, run towards the box, so you will prevent further sliding once you’re able to move. If you fall into the water, you respawn back at the area you’ve just glided through.
# You cannot dash along the other side of the wall to cut your route. Your only option is to jump across the water using Mikey’s helicopter nunchucks. Leo cannot do that with his arrowed jump-kick. 

! Episode 11-3 - 1:09

This one has the most complicated platforming section for the real-time play, barely overriding 1-1 and 11-4. There are a lot of open area you think you can jump across, but no, all the space above metal meshes is an invisible wall.

* Boss fight: __Elite Guard__ with a spear

This fight is a little more complicated. There were no barrels to save time of doing combos and certain manipulations were done to prevent the Guard from doing his shadow running.


! Episode 11-4 - 1:02

A manipulation was done to prevent a plane from shooting me while jumping over the 2nd mesh.

In order to disable the laser barrier after the 2nd mesh, you are supposed to kill all Foot Mechs (bright shooting robots) and Foot Techs. 

* Boss fight: __Elite Guard__ with an axe


! Episode 11-2 - 1:30

I left this episode of the last because it involves more fighting. You appear in a small closed area and you’re supposed to kill all enemies in order to get to the boss. 

Turning 5 levers on the first floor opens the gate to the second floor, but sooner or later you have to kill 3 Foot Sumo mutants walking around, because they are enemies too. %%%
The area is not that comfortable for continuous fighting. Sometimes you need to wait for new enemies to spawn upon dead ones.

On this stage, when a Foot Tech Ninja (invisible one) spawns in, if you stand at its spawn point, it performs a jump-over attack, like in TMNT 1. If you own an orange crystal or have you super-attack charged, you can hit it without waiting for its animation of lending and becoming invisible to over.

* Boss fight: __Elite Guard__ with a trident
This one was the easiest of 4 elite ninjas. Also, I finally got satisfying conditions to use shurikens.


! Episode 11-5 - 0:29

* Boss fight: __Hun__

He became much tougher. First, he can do ground hits any time now, just like spin-punching. Second, I have 2 Foot Mechs shooting at me and I have no time to kick them away, so it was another point of manipulation.

It’s faster to make Hun do ground hits because he lets an extra combo during his animation.

At some point, he falls down, turns red and ignores any hits. Surprisingly, he punches through Donatello’s shield, although I expected to perform rattling with it, dealing damage rapidly. However, a different idea worked out: Leonardo’s damaging dashes, which I previously used to destroy a spaceship in Episode 5-7. %%%
The only manipulation I did here was to make Hun catch and throw me. If you dash, it’s easy to avoid it.


! Episode 11-6 - 0:19

* Boss fight: __Karai__ 

In close combat, she can perform a charge attack or a regular attack. %%%
* Charge attack - it can be avoided only if you dash away and to the side at the moment of attack, or be up in the air. It’s quite time-consuming and should be avoided.
* Regular attack (weak or strong) - it's faster. She starts ignoring your attacks and attacks you with one hit. You can either put a block (6+ frames slower) or run away from here (2 dashes or so) to make her refuse to attack

If you move away from her, she can jump up and throw a handful of kunais, which is also time-consuming.

She is also the only boss in the game who can block your attacks in the middle of your combos.


! Episode 11-7 - 0:52

Boss fight: __Mega Shredder__

I wish I could push him off the cliff like before. Of course, the final boss must be the hardest.

You have to fight 2 phases of Shredder. 

__Phase 1__ doesn’t provide much difference to what Feudal Japan Shredder does.

Barrels don’t help that much. Like Elite Guards, Shredder cannot detonate barrels by falling into them. I tried to throw one at him, but he takes damage only from explosion, which doesn’t worth it. The same concerns swinging hooks, which can harm Shredder only when he is being knocked down.

Here are the actions what he can do:
# Catch and throw you – it’s possible to break this animation by a swinging attack which hits from a side. Alternatively, you can dash anywhere in a specific period of time. He won’t catch you then, even if you dash into his hand. However, it’s not clear under which circumstances the catch gets successful.
# Block attacks – surprisingly, he can block you attacks even from behind. The fastest way is to stop dealing damage and wait for him to remove the block, but it’s still makes the fight slow.
## There is a safe strategy for RTA. If you play as Leo and make Shredder block your attacks, you can keep dashing into him until all his health is drained. You barely push him away and you have to occasionally do direction adjustments.
# Perform a torpedo attack – it takes a little more than 2 of your combos to make him fully charge. You can block this attack, but it takes quite a lot of time for you to be able to attack him again.
# Swing the sword twice – you need to dash away from either him or his hand with the sword to dodge his weird damaging area (it’s wider than what Feudal Japan Shredder has). If you’re lucky with your initial position, 10-14 frames have to be sacrificed to catch the right moment. After that any of your attacks break his animation.
# Initiate an attack which makes a lightning bolt strike you – it’s the fastest way to perform your combo, although it still some time to make him do this attack.

It’s a little faster to fight as Leonardo, thanks to his damaging dashes which come in handy here. However, Raphael still holds up because of stronger attacks.


__Phase 2__ changes the location. Shredder no longer does a lightning bolt attack, so the focus was moved to his catching move. However, it’s quite frame-tight to pull it out because often you have a gap of 2 frames to attack him, or else he catches you.

That's all.

!! Extra

! Publication input movie 

Contains input that surfs through statistics and unlocks after the ending credits. %%%
https://tasvideos.org/UserFiles/Info/638353324170393948

! BK2 input file

In case it's easier for you to examine the run and/or to encode the video in Bizhawk, here is the input file you can use for it. %%%
https://tasvideos.org/UserFiles/Info/638353335401863341

!! Possible improvements

* Even though it’s a matter of 2-3 seconds, I should have aimed for the in-game time instead of real time to be more confident in my time saves regarding episode ending screens.
* About 1,5 seconds throughout the game can be saved of throwing shurikens as Leo or Mikey where I do this as Raph. I didn’t discover it at once because there were moments when the game let me do actions with an extra 2-frames delay. I suspected some framerate drops which affected the logic processing, but when it doesn’t happen, Raph indeed throws shurikens slower.
* After finishing a section, change characters and pick up items only when the screen is about to or starts fading out, because otherwise the game delays it to play a voice line. I was doing it without knowing about it, until I realized this side effect. Episodes 2-3, 6-5 and 6-7 can be improved.
* The ending of Episode 4-6 looks slow. However, I didn’t manage to do it faster.
* Unlike TMNT 2003, I didn't gather any numeric information from the game's RAM, even by behavior. Looks like, the devs encrypted all enemies' health and other useful info or they are placed outside the visible RAM address area. All fighting strategies were executed empirically, so I might not always have used the fastest strategies.

!! Special Thanks
;[https://www.youtube.com/@Veekron/videos|Veekron]: For his Battle Nexus speedruns and Box Glide discovery. It helped me with my motivation and various examinations of what I had to deal with.

!! Suggested screenshots: 
24550 (First flight of the Fugitoid)
156709 (Elite Guard clones are sitting on their butts)
