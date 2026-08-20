> **Imported**
> This run was originally published at https://tasvideos.org/5707M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

RoboCop 2, any% fastest completion.

!! Game objectives

* Luck manipulation
* Uses death to save time

!! Comments

! General
You play through 13 different levels and fight the final boss 3 times.
In each level, you are supposed to destroy at least 60% of nuke (bottles with the letter N) and arrest 60% of villains. This is the main and the fastest strategy.

* You do these objective by touching nukes and villains respectively. Some __villains__ walk towards you, some of them just stand still.

* Some levels don't have enough __nuke__ to collect, so you are supposed to find and enter a nuke warehouse sub-level and collect the lacking nukes.

* The game runs at stable 60 fps. If there are too many objects on the screen, they blink.

* The game has advanced physics movement for the player. You gradually gain and lose momentum, like everything is covered with oil. You lose momentum when you shoot. No matter, if you're on the ground or in the air. Sewers nuke levels have low inertia factor. Final Boss fights have even lower inertia factor.

* Your standard weapon is a double shoot. You can interrupt it by crouching down or getting up, although it was never used in the TAS.

! Level Enemies 
* When you bump in an enemy's front perspective, you lose all your momentum. Sometimes it happens with target villains too, so in such situations it's faster to touch villains while in the air, and regular enemies don't stop you if you lend past them.
* Some enemies kill you on touch.
* If you take damage while not shooting, lending, crouching or getting up, you go into a short pain state animation.

!! Stage by stage comments

! Levels 2-3

Those green enemies in red hats kill you on touch. 

Those big emitters on Levels 2 and 3, which transfer electric lightning between each other, caused big difficulties for me. It’s not clear when exactly they “wake up”, but this happens when you come close enough. %%%
They can be affected by RNG. Level 1 was finished 1 frame later to mute emitters at the beginning of Level 2.

After the secret nuke warehouse on Level 3, 3 frames were lost to manipulate emitters at the end of the level.

! Level 4

The first pink guy, which shoots from the water, always shoots in the right moment for you to touch his bullets if you run forward right away and jump. So I had to lose some time to make him shoot 1 time.

! Level 8

Boss Cain fight.
First, he has to shoot 14 missiles at you. During this phase, he is invincible. 
Back in childhood, I noticed that __pausing__ the game sometimes makes his shooting pattern faster, so here I tried my best to make him shoot me as fast as possible.
When he has done shooting, he walks towards you and you are forced to fight with your fists. Cain has 20 hp and shooting him near the end saves some time. A bullet deals 2 damage and fist hit deals 1 damage. If you crouch down, your hits don't push him away. A minor manipulation was done to prevent Cain from calling your pain state.

! Level 10

On Level 9, I collected a weapon which kills enemies in 1 hit (10 rounds). On Level 10, there is another weapon item you can collect to refresh your ammo. You lose 45 frames, if you choose this pass. I decided to bypass it because of lower time loses on further levels with your longer animation of your standard weapon.

! Level 11

The 3rd nuke (the one that comes after the first set of lifts at the beginning) doesn’t spawn in, if you don’t collect the 1st nuke.

Levels 11 and 12 (Floors 3 and 4) feature those rockets with magnets flying from behind. If you touch one, it takes you across the whole level and you die at the end.

! Final Boss fight

You fight the boss 3 times, each time it has a different attacking pattern which loops over and over until the boss dies.
Weak spots for each fight:
# Anything
# Legs only
# Everything, except legs
When you shoot it, it slides back a little bit. On the last fight, there is a period when the boss is pushed back too far and my bullets couldn't reach its hitbox line. 
You are also restricted to 4 bullets shot on the screen, so there is a short slowdown at the beginning of each fight to get closer to it.

!! Possible improvements

* This is a platformer with complicated physics. There might be tiny improvements here and there. Fortunately, the game is flexible to input editing and resyncing.
* WhiteHat94 [Forum/Posts/516914|told] that he had a glitch with one of the magnetic rockets (the one which flies when you are near a lift on Level 12, I guess) which took him across the level and he didn't die. It would be a good improvement!

!! Suggested screenshot
10486
