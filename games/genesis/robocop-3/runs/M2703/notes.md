> **Imported**
> This run was originally published at https://tasvideos.org/2703M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is a tool-assisted superplay of RoboCop 3 for Sega Genesis/MD.
RoboCop 3 is a 1993 video game published by Ocean and later ported to the Sega Mega Drive/Genesis, Sega Master System and Sega Game Gear by Flying Edge. Comparing to the NES version, there is no zonal system damage; different levels, weapons, enemies.

!! Game objectives

* Emulator used: GENS-rerecording 11A
* Aims for the fastest time
* Hardest difficulty
* Genre: Platformer
* Genre: Shoot'em Up

!! Comments

I didn't expect the game will be short, but I didn't even pass the first boss (enemy attack) of the 2nd level using easy diff. in my childhood!
NES (Famicom in my case) version was easier, but I didn't know what to do on the last stage with 2 ninjas =)
It was one of not many games I remember, most of them are TASed now and I think the best game choice for TASing is a childhood game.
This game is s perfect example for TAS practicing because it asks for all tools for a comfortable play!

! RAM addresses:

It was the first time I've found addresses myself, after rereading the [MemorySearch|Memory Search] article some times!

1. 00FF05B9 - Player X/Y position (?) - It was the only right address for movement I've found in 3 searches! It should be 2 addresses for each position, but I don't understand the function of this one: it changes when I walk/jump/walk and jump simultaneously, but it doesn't show the equal value when I go on full speed!

2. 00FF293B - Random Enemy HP - It shows the HP of an enemy which you face and shows it for some time after he've left the screen. If there are 2 or more enemies, it doesn't change its value until the shown enemy dies.

! Enemy HP:
Bandit in blue - 2

Bandit in red - 3

Rocket Bandit - 4/5

Bikers - 3

Bike - 4

Satellite - 8

Silver killer (rocketgunner) - 4/6/8

Red Killer (lasergunner) - 4

Big/Small robot - 6

Rock - 32

Air Fly Satellite - 5

Air Fly Silver killer (fireballer/bulletgunner) - 9/7

Red Devil (Level 2 Boss) - 64

Flying Krang from TMNT (Air Fly Level 3-1 Boss) - 214

Giant Warplane (Level 4-1 Boss) - 216

Ninja (Level 3-2, 4-2 Boss) - 28

! Weapon damage:
Bullet/Triple bullet - 1

Laser - 4

Flame - 1

Rocket - 4

Punch - 2

Air Fly Double Laser - 2

3. 00FF1A23 - Ninja HP (Level 3-2 Boss) - I don't know why the REHP address didn't show the HP of the him during the fight. The strange is that it shows value not from 28 to 0, but from 228 to 255.

!! Level by level comments

! Level 1: Streets of Old Detroit

We appear on the street full of bad guys and start shooting them up from our simple hand-machine gun using Frame Advance to change weapon and shoot again (1 shot per 2 frames), thanks to strong Genesis' hardware for almost no lag frames and ability to perform every action in a single frame! Some guys survived for entertainment or wasting time to kill'em. Walking around during the boss fight to spawn the enemies faster.

! Level 2: Way to Parking Area

First of all we walk to the elevator for windows and shoot up all the bad guys. During the going up I decided to play in pacifist a little and dodge bullets. Someone can't shoot down (guess who) and someone can't shoot up like enemies from windows so some guys survived again. I took Laser Gun because I just didn't have enough ammo to kill the enemy attack (first boss). After walking on the rooftop, we go down on the top of another elevator and meet a new kind of enemies - flying robots. They decrease the energy during the contact. One of them pushed me down and disappeared after a while. Then we meet another guy written in Paint who repairs the robot and runs away when the enemies appear. My try to talk to him crouched didn't bring the success! Anyway, I allowed the robot to shoot some times so it showed its usefulness or otherwise I wasted 5 seconds looking at the repairment. On the way to the boss I didn't take any weapon because with flamethrower and rocket launcher I kill the boss 4 frames later.

! Stage 3: Air Fly, Church

An innovation in RoboCop - a classic air shooter view! We're flying and shooting in everything that moves. The only weapon is Double Laser with some upgrades. There I decided to play in pacifist again because there no ability to destroy all the enemies like in other similar shooters. I had improved the boss fight twice before I got the fastest tactic. If he was slower, I'd make some more point blanks.

In the Church I tried to take as less damage as I could. Laser Gun wasn't taken to save time. New add-ons are stairs and door that require keys. Who jumps up the stairs and goes through the steps?? Even RoboCop 1 for NES has more realistic animations! Anyway, its used to save time. I tried to bypass the door performing all possible actions and cut the route to the first door (fall down), but nothing helped! Funny that you can jump once after the falling if you haven't reached the floor, but no more second jump (taking damage didn't help too)! The boss is too easy: he can't damage you if you are too close to him, but you somehow can't use your weapons.

! Stage 4: Air Fly 2, Final Boss fight

During the second fly, I tried to kill as many objects as I could, but I also used pacifism in some parts. By the fighting with boss I didn't kill anyone to configure the address to show boss HP. A strange thing that I got a desync during the fight, I watched playthroughs and they got they same result: sometimes RoboCop interrupts on 0,5-1 seconds and then starts working again, but I redid the fight and also improved it.

Final Boss are 2 ninjas as one in the church and you can't use your weapons again. Second ninja only helped to finish the fight faster because I shouldn't jump after him to punch. The bad thing is that RoboCop punches too slow in frame advance (1 punch per 29 frames), but with ninjas with their skills, it's no a problem!

THE END 

!! Suggested screenshots:

25986 - looks like RoboCop's jetpack destroyed, but no, tank's explosion animation is placed on a wrong layer.

30718
