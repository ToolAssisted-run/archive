> **Imported**
> This run was originally published at https://tasvideos.org/6246M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This year was quite productive regarding the games based on the classic horror heroes: Dracula and Frankenstein, based on 1990th movie adaptations. 4 games have been covered: Frankenstein for 
[5833M|Genesis] and [5831M|Sega CD], and Dracula for [6149M|NES] and [6135M|Gameboy]. I decided to join the coincidental marathon, beat Dracula for Sega CD and obsolete my old slow-motion TAS I made in 2013 ([https://www.youtube.com/watch?v=8__altBSe-k|part 1] and [https://www.youtube.com/watch?v=UJBfSBxCujE|part 2]).

Not much to say about the game. It's side-scrolling beat 'em up, where you go from left to right while beating and dodging animals and monsters, with a boss at the end. I'd say, it's one of the worst games among those which have a similar gameplay.

%%TOC%%

!! Game objectives

* Completes the game in the fastest time (typical any%)
* Takes intentional damage
* Uses intentional deaths

!! Comments

The game uses full-motion videos (pre-rendered 3D graphics) for backgrounds. As the player moves to the right, the background moves at the __static__ speed. The keyword is "static" and, I assume, it's made to match the hero's walking speed, to have the hero stay in the middle of the screen. However, his jump speed makes him travel forward by around 30 pixels per a jump cycle (47 frames), and this is used as a basis of the speedrun strategy: I try to stick at the right side of the screen, so the background would keep moving while I fight the enemies, as you can't skip most of them.

! Combat

The main hero has 48 HP. All bosses, which utilize "Dracula" lifebar, also have 48 hp.

* Forward Jump (Forward + A) - 47 frames
* Elbow Hit - 25 frames (Backward + B while walking) - hits forward and backward
* Punch - 20 frames (B) - 1 hp
* High Kick* - 19 frames (Up + Forward + C) - 2 hp (3 hp, if you leg is lifted maximally up)
* Medium Kick - 25 frames (Forward + C) - 3 hp
* Low Kick - 22 frames (C) - 1 hp
* Back Kick* - 28 frames (Down + C) - 3 hp
* Jump Kick - 28 frames (Up + C) - 1 hp
* Roundhouse Kick (B + C) - 63 frames - 1 hp (back hit), 1 hp (low kick), 3 hp (medium kick), 3 hp (2nd medium kick)
* Crouch (Down) - 10 frames
* Crouch cycle (crouch and get up) - 15 frames 
* Injury animation - 14 frames

\* - not mentioned in the [https://www.segakore.fr/media/segakore/downloads/jeux/megacd/mcd_bram_stokers_dracula_manual_u.pdf|manual]

! Death mechanic
It takes 50 frames for the player to fall and get up. While in death state, the screen doesn't move. On the other hand, it's beneficial because certain enemies, like scorpions, go away after killing the player.
Throughout the game, death is used when the conditions allow you to lose as less time as possible.

! Enemies
They move towards the hero and try to kill him.
* Variation = Var.

Flying enemies:
* Bats - fly according to patterns when in groups, can fly up or down based on the hero's position.
* Eagles (Level 1), Owls (Levels 4 and 7) - fly according to patterns, can fly up or down based on the hero's position. If the player evades them, they turn around and try to attack again.
* Gargoyles - spawn on the ground and fly around. Upon being hit, they fly up, then fly down at the hero.

Floor enemies:
* Rats - run on the ground in the pre-defined direction.
* Spiders - run on the roof and lift down on their web when the camera reaches a specific point. They turn around to the player upon stepping on the ground.
* Scorpions - shoots fire at you. Var.1 shoots one fire, Var.2 shoots three-way fire.
* Snakes - jump towards the hero until they get close to him. After some time, they jump at him.
* Wines - stationary. They periodically swing towards the hero, but it's easy to evade. If the player jumps across them, they turn around at it.

Humanoid enemies:
* Monk - stands still, but on rare occasions he can step back. He throws tomahawks at the hero, often while being outside the screen. When you come close to him, he can hit you with a stuff. Has a low hitbox: when your lag is lifted up, you can't hit him and you have to wait for your animation to lower your leg to hit him.
* Ghoul (zombie) - walks slowly. Spits acid when they player is away. When in close combat, Var.1 spits acid on the floor, and Var.2 hits the hero. 
* Skeleton with a mace and a shield - runs towards the player and hits him. It's impossible to dodge its attacks by jumping or crouching.
* Sword trooper - a variation of the skeleton.
* Skeleton with a spear - runs at the player and swings its spear. There is plenty of time for the player to hit it faster.
* Axe Knight - moves slowly, swings its axe once the player is close enough. It's the most durable enemy in the game.
* Dude with pocket on his head - moves slowly, kicks slowly.

! Miscellaneous facts

* There is a solid hitbox offset when you perform a jump, so it makes sense to turn around and then perform it.
* Some enemies are not programmed to turn around. If the player is supposed to be on the left, they will always face right and never adapt to exceptional situations when it managed to jump over them. 

!! Stage by stage comments

! Level 1
Not much to say on this one.
* Monk - 4 hp

! Level 2

* Ghoul (spitting zombie) - 5 hp
* Ghoul at the end of Section 7 - 16 hp
* Skeleton with a mace and a shield - 7 hp
* Gargoyle - 12 hp

* Section 1
When a camera reaches a specific point, a spider comes down at the upper left corner of the screen. One way or the other, the camera has to stay idle for the time you have to spend to kill that spider.
I decided to do so by the end of the section because the spider manages to cover a solid distance towards me.

* Section 2
There are 2 possible routes near the end of the section. I don't understand the condition, which transfers you to the door on your left (from the character's perspective), but according to my tests, you must kill the final spider which comes down from the ceiling.
The alternative route is taken in the TAS because it's faster by real time. In this [Forum/Posts/532312|post], I've explained the details on the main route and provided the input file (in case someone wants to experiment or has doubts).

* Section 8
__Boss__: Dracula

He can do the following actions:
# Strangle while holding his right stand - if the player is close to him
# Approach quickly and strangle - if the player is far away
# Light up the shield, which injures the player
# Step back, then perform another action

I found the tactic of keeping small distance the best one, because it usually makes Dracula step back. Other actions make him invincible. %%%
It's possible to reach the end of the screen, then kill the spiders and make Dracula's back appear in front of you, but then he constantly tries to strangle you or light up the shield (without even turning around), hence keeping himself invincible.

! Level 3

* Fire scorpion - 6 hp (a close Low Kick deals 1x6 damage). It stays alive with 0 hp.
* Three-way fire scorpion - 8 hp. It stays alive with 0 hp.
* Skeleton with a spear - 10 hp. After taking damage, it slides away until a specific distance from the player is reached.

It's possible to dodge scorpion's fire by performing a kick at specific moments.

* Section 2
There was a flashing spider near the middle of the room, by killing which you get chalice (health), but I forgo it in favour of death.
When scorpions surrounded me, I managed to take damage from all 3 fires from the right scorpion. Then the left scoripon finished me and went away, so I didn't have to spend time on killing it. %%%
I tried to improve it, but no matter what I was doing, the transition to Room 3 kept happening at the frame 34000, like there is some kind of a frame rule system.

* Section 4
At the end, when I was attacked by 2 skeletons with spears, the one to the left is scripted. The player is supposed to fight the one to the right, while left one was throwing spears. After killing the right one, left one goes into the close combat, like usual. However, if you approach the left skeleton right away, it attacks you and runs away, which saves time.

* Section 5
At the end, you face two pierced skeletons which come alive one by one. You first fight the right one. As soon as you reach the stairs area (or wait for a while), the left one comes alive.

* Section 7
A lot of enemies and hazards drained my health to minimum. When I reached the end of the room with two pierced skeletons. After killing the right one, I let it kill me while it was still disappearing. Thanks to this, only 38 frames lost, which are a little more than 2 animations of taking damage.

* Section 8
The first flame grid you encounter burns for quite a long time. That damage had to be taken in order to not lose time. This looks naive in the light of what happens next. In order to transit to the next room, you need to kill the ghosts which appear near flame grids because they cannot leave the screen (like regular enemies) or disappear on their own.

* Section 9, 
__Boss__: Big Gargoyle

It seems like the control was made harder for this boss fight, because (Up +) Forward + C don't usually lead to powerful kicking here. %%%
The damage you deal is doubled. Sometimes high kick deals the same amount of damage as medium kick (3*2=6), but the gargoyle becomes vulnerable in 32 frames after being hit, so medium kick was used. Besides, high kick is difficult to perform he, because you need to go forward, and you can't kick it while you're too close.

! Level 4

* Axe Knight - 20 hp

* Section 5 (Kitchen)
Some time would be saved at the end, but hitting the last top pot spits out a book which gives you extra points, and you can't leave the screen without picking it up (if it's present).

* Section 6
__Boss__: Beast Dracula

If you hit it while being close, it performs a fireball attack and hits the player if it gets close. However, it's still possible to kick it. %%%
If you hit it while being not enough close, it transforms into a head and flies to the other end of the screen while hitting the player on its way.

I found a trick near the left edge of the screen when the beast, upon being hit, transforms in and out, without flying anywhere. I assume, it happens if it's pushed far enough past the edge of the screen, it reaches its destination point immediately. Too bad it doesn't work on the right edge of the screen.

! Level 5

* Sword trooper - 12 hp
* Ghoul - 10 hp
* Skeleton in a dark mantle shooting fireballs - 8 hp. It's possible to hit it twice with a medium kick, if you come close.
* Dude with pocket on his head - 6 hp. I don't know why he always faces the other direction. Maybe because of the fast scrolling.

* Section 2
__Boss__: Bride

She spits blood on being hit, and after that, she either tries to touch you or throw a fireball. I didn't come up with anything better than kicking her once it's possible.
Since it takes quite long for her to do all that, I decided to die and restore my health.

* Section 6
At the end of the section, I've faced a [https://www.youtube.com/watch?v=8PvqNtnL91A|scroll glitch] which ruins the walkthrough. If I let the background reach its end while fighting the gargoyle, the game area (not the background) starts scrolling left, and when it's dead, the boss fight wouldn't begin. It's demonstrated after I kill the gargoyle, but the script to initiate a cutscene fixes the glitch.

__Boss__: Young Dracula

He can do the following actions:
# Run and jump across you - if the player is far away from him.
# Perform a hypnosis (or yell, I don't what know what kind of attack that is) - if the player is at a close-medium distance.
# Jump and hit the hero with his stick - when the player jumps. Often he switches to this attack when he is still running at you.
# Hit the hero with his stick - quite rare, usually when the player jumps. I don't fully understand the conditions, but it definitely cannot be manipulated to save time.

The best tactic I came across is make him run and jump and kick him at a tiny gap when it's possible.
Here is a more entertaining [UserFiles/Info/638649621934702780|version] of the fight, where I use a jump kick to hit him while he is already in mid-air, making him stick to the roof and face the other direction. Unfortunately, it appeared slower.

! Level 6

During the carriage chase, you're supposed to shoot it 10 times. A bullet's speed is a static shifting away from the hero (if you slow down, it slows down as well). 
If the sword hits you, you lose quite a major chunk of your speed, so I had to jump over the first one because it's thrown at me right away. 
If you bump into the carriage, you lose 10 hp and some speed. If your speed was too high, the rattling happens and you lose one life. However, since you resurrect in no time, I decided to lose a life and replenish you health. However, I lose 10 hp because of the 2nd thrown sword right at the end of the chase because you automatically slow down, and if a sword doesn't leave the screen when you land, you take damage. If you die while the screens fades out, a [https://www.youtube.com/watch?v=Ln8tnqlEihg|softlock] happens.

! Level 7
* Monk - 9 hp (dies when 0)
* Axe Knight - 20 hp (dies when 0)

* Section 3
It's possible to quickly kick the knight to the left side from the player, but you still have to destroy it because the room is small and you can't scroll the screen too far for it to despawn.
It's not clear if it's possible to use the alternative route, like I did in Level 2, even though the game lags in the same way when the player almost reaches the end of room. At least, no walkthroughs and longplay demonstrate it, so let's consider it buried.

* Section 6
__Boss__: Dracula

Due to the errors in Dracula's code, his light-shield is positioned correctly only for his left perspective, and it pushes you away, if you come close. When he faces right, he can't hit you with the it. However, his hitbox (in this case, the blocking area) is shifted to the right, keeping you away from him. %%%
This has an impact on tactics. While he's facing left, I can either do a medium kick right away, or try to get closer to do a combination of high kick + medium kick. If the 2nd option is selected, he is able to strangle you or throw a fireball.
While he's facing right, everything works fine and I'm able to reach him before he's able to do anything, which makes a combination of high kick + medium kick and 2 medium kicks possible.

!! Other comments

! Notes for publishers
Sega CD BIOS sequence will be a separate video.
Record the footage until, after the credits, "The End" disappears. "Beware" is already an element of the startup sequence.

! Suggested screenshot
73744
