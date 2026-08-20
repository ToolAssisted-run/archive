> **Imported**
> This run was originally published at https://tasvideos.org/6843M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Dangerous Dave in the Haunted Mansion (aka. Dangerous Dave 2) is side-scroller where you shoot dreadful creatures and go from point A to point B. 

!! Game objectives

* any% (I guess, that's it. Nothing special here, besides the warp glitch on Level 2)

!! Comments

! How to replay this TAS

Despite most old DOS games being considered "abandonware", Dangerous Dave series still has an official distribution on [https://www.gog.com/en/game/dangerous_dave_pack|GOG].
When you install the pack, you will see 4 special folders in the game root folder. "DD HM" is the game folder used to make this TAS.

# Follow this [EmulatorResources/PCem#UsingPreInstalledVersion|instruction] and use this [UserFiles/Info/638314431260324188|script] to pack the files of the game folder. As a result, you will have a file called "TAS_CD.iso".
# In BizHawk, open this file as a ROM. TAS launches the game directly from disk D, so no copying to the system's hard drive (disk C) is performed.

! General description
There are 8 levels in the game. You need to get to the exit and kill 2 bosses. Dave ("the player" thereafter) dies of a single hit.

The game is well-examined by [https://forum.speeddemosarchive.com/post/dangerous_dave_speedrunning_thread.html|speedrunners]. TAS doesn't bring anything new. It just performs the tricks better and features minor route optimizations.

; Enemies
* Zombie - walks around, can go downstairs, dies in 2 shots. It performs a punch attack when the player is close enough. It's not clear how its hit area is calculated, but generally it's a human-tall hitbox in front of it.
* Knife-thrower - walks around, throws knife, dies in 2 shots. Throws knives on rare occasions from the edge of the screen when the player is in plain sight.
* Werewolf - runs around and jumps high. It can outrun the player. It has quite big hitbox while running and jumping. Dies in 3 shots.
* Ghost - flies towards the player. Blinking ones are not dangerous yet, they have to emerge first. Dies in 1 shot.
* Spider - lifts down when the player is below it. Deadly to the touch, but its hitbox seems to have little offset to the left. Dies in 1 shot.
* Slime - slides and jumps around. Can stick to the ceiling and the floor. Dies in 1 shot.
* Burning skull - flies slowly towards the player. Seems to be immortal.
* Devil's arms - "enemies" spawned by the final boss. Fly towards the player. Die in 2 shots each.

; Movement
The player's running speed is inconsistent: it's made up of 5 frames. Frames 1, 3 and 4 are idle. Frame 2 performs a slight offset. Frame 5 performs a big offset.

; Jumping
When you jump, you gain a small boost when you land. As a result, the more you jump, the faster you move. In the TAS, I mostly do small jumps for more boosts.
You can jump higher by holding jump button up to 15 frames. While ---going ---jumping upstairs, I found 11-frames jumps to be most useful, because you spend less time landing on the nearest step. 
Also, your hitbox is a little bit wider while you're in mid-air, which makes easier for zombies to hit you.

; Shooting mechanic
Performing a shot in any direction takes 32 frames.

When you shoot straight, you are pushed back slightly. If you are standing on the edge of a platform, you will end up falling down if you shoot.%%%
However, shooting diagonally (upwards/downwards) has a different impact mechanic. If you stand on the very edge of a platform, the impact becomes significantly weaker, which makes you fall and lend on the same place, hence making the act shooting faster.

It's possible to shoot __once per 3 FRAMES__ by positioning yourself on the very edge of the right side of a platform. However I didn't find a way to keep it consistent. After 3-4 shots, I end up losing that beneficial state.

; Reloading
Dave reloads a gun when no action input is provided. It takes 34 frames for him to start his reloading animation. The first shell takes 21 frames to load (as an emergency, I supposed), but each next shell takes 41 frames to load.

!! Stage by stage comments

! Level 1 + Level 2

You're supposed to enter the building, go on the top floor, open the exit door and enter it.

Speedrunners discovered a strange glitch related to some special conditions while exiting a level.%%%
If a zombie ends up within the exit door frame after you exit AND you keep holding Up (to open/enter a door), then Dave tries to do the same action (to exit a level in this case). For some reason, this results in exiting Level 2 immediately, saving around 25 seconds.%%%
Unfortunately, nowhere else this glitch is useful. Skipping Level 3 would save a lot of time, but Dave appears in some unknown place and you don't exit the level.

! Level 3

If you live a blank frame while walking off a platform located one "layout tile" away from the wall, you can walk through a single layer of wall. Here, it saves around 14 seconds because, normally, you're supposed to go one floor higher and enter the same pit through the giant gap.
Developers were probably aware of this flaw. That's why they made 2 layers of wall on Level 5.

! Level 4 (Boss 1)

As previously mentioned, you can archive extreme firerate by positioning yourself on the very edge from the right side, but due to the state inconsistency, there seem to be no time saves over the RTA's strategy.

A perfect fight would look like that. You stand on the very edge of the highest platform to the right, shoot 8 times in 24 frames, reload your gun, shoot the electric ball flying towards you and the remaining 7 shots to the boss.

! Level 6

This is where it gets tougher.

The first major time lose occurs on the platform with 2 zombies and a spider above them. Zombies end up crowding and spider always gets down as soon you are above it. Using the strategy of running past them works, but I still ended up dying at the very end. So, I had to eliminate at least 1 enemy. The platforms are located in such a way that shooting diagonally doesn't make sense while zombies were not close enough, so I chose to kill the spider and somehow manipulate zombies to let me through.%%%
I tried replaying the level from the beginning by skipping one frame on loading screen, but found no improvements. Maybe movement RNG is static or initialised at the beginning of the game.

The second time lose occurred with the werewolf, which was jumping around while chasing me. It takes a lot of time to make it run away, so I decided to shoot it down. Fortunately, 3 shoots is enough to benefit from the 3-frames shot conditions.

! Level 7

Narrow passage with 2 slime might be improvable, if you manipulate at least one of them to get out of the way quicker.

! Level 8 (Boss 2)

It's probably improvable too. The boss has a clear pattern of shooting fireballs and releasing Devil's arms. Because there are two of arms, it's difficult to jump over them.
I came up with a tactic which reduces running around, but I didn't manage to go into reloading 2 times only.

!! Other comments

Special thanks to: CapnClever for his [https://www.youtube.com/watch?v=GNicIvr8t-g|WR speedrun] and explanations about various game stuff!

! Suggested screenshots: 
11082
