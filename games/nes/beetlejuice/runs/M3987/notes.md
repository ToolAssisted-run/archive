> **Imported**
> This run was originally published at https://tasvideos.org/3987M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Emulator used: Bizhawk 1.13.1
* Primary objective: speed
* Uses deaths to save time

!! Background
There has been some console speedrun activity for this game lately and a new shortcut in the sewers has been found. By spending time manipulating the screen position after the first cave frog, you can go straight right, instead of making a detour to the top of the level. Afaik, this was found by 'bartaan'. In a TAS, the shortcut saves almost 300 frames over the route taken in [3737M|3737] (exact comparison a bit difficult to make, because other things have changed in this section as well - more about that in the level-by-level comments).

When learning about the new shortcut, I decided to put a TAS improvement on my to-do list. I'm glad I did because I found a few new things in the process and also managed to tidy up some inefficiencies.

!! Game mechanics
The comments for [3737M|3737] and [5988S|5988] are still valid, so I will only add a few things.

! Additonal notes about the mouse
In one of the rooms of the overhead section, you need to catch a mouse to scare away Delia to be able to continue. This is a low-probability event and demands a bit of manipulation. I decided to take a closer look at the mechanics behind this time.

The mouse always starts moving up and then calculates a new (or keeps the current) direction every time the global timer in $3BB is divisible by 32. If the mouse hits a wall, it will continue in the opposite direction until the next direction calculation is due. The direction is tracked in $673. Input to the calculation of a new direction comes directly from the RNG-addresses in $24-$27. 

Around the mouse room, the only player actions able to manipulate the mouse are by either delaying entering the mouse room (which means entering the room with a different value of $3BB) or by throwing a potion at different frames. The former is for obvious reasons undesirable, while the latter is well adapted to a bot search. In all of my three TASes of this game, I've used [Forum/Posts/361672|Bobo the King's bot] for this purpose.

However, due to the fairly "stiff" nature of the mechanics governing the mouse movements and the narrow corridor it needs to pass through, there are only two paths to get to the left side without incurring time losses. And they only work under certain starting conditions. Most starting values of $3BB will see the mouse over- or undershoot the narrow corridor, no matter what. The only way to fix this is to delay entering the mouse room until $3BB has one of the required starting values. This is illustrated in the two images below.

[https://i.imgur.com/vryFO4N.png]

* Blue arrows indicate the mouse paths
* Red crosses are where a new movement direction is calculated for the mouse
* Turquoise arrows represent Beetlejuice's movements

In case any RTA-speedrunners read this (like myself!), I'll also include a few words about the likelyhood of getting the mouse on the left side. I haven't found anything indicating this to be possible to manipulate in any way, so with the current knowledge, it's just a game of pure luck. The path in the left image is possible with 4 out of the 32 starting conditions and requires three favorable direction changes (so 1 chance in 4^3=64). The right image is possible with 5 out of the 32 starting conditions and requires two favorable direction changes (so 1 chance in 4^2=16). The probability then becomes (4/32 * 1/64) + (5/32 * 1/16) ~ 1%. This calculation is very simplified, since you could accept one or a few wrong turns from the mouse, but on the other hand you'll also need the mouse to not immediately run away from the calculated end positions. Hopefully, the calculation will still give a somewhat representative estimate of the probabiilty (and my RTA-experience from this game doesn't disagree).

! Free umbrella scare at the cave frogs
If you don't have any scares when approaching one of the cave frogs, the game will spawn a free umbrella scare. This is to prevent the game from essentially being soft-locked. You can't escape these fights and the frogs can only be damaged by scare attacks.

Once the game starts to lock the screen around the frog, the game will spawn the umbrella scare within 64 frames (code section starting at $9A9C). The exact timing depends on the value of the global counter ($3BB) when the polling starts. The fairly long cycle means that there can be waiting time for the scare to appear without any possible way to mitigate. However, it's only about a 10-frame window, out of the 64 possibilities, that results in waiting time for the two scares collected this way with the current route.

!! Level-by-level comments

I'll mainly focus on what has changed since [3737S|3737] in the below comments.

! Stage 1 (town)
Two things have changed in this stage.
* The first change is around the shop. One birdman scare (1x 150 credits) was purchased instead of two medusa scares (2x 100 credits). This meant 50 credits less required and some more liberty in possible bug spawns outside the shop to meet the credits requirement. The additional possbilities allowed settling for a set of bugs that could be stomped 18 frames faster than in the previous two submissions.
There are still 17 frames that could theoretically be saved by perfect bug luck. Unfortunately, the means for manipulating the bugs are very limited this early in the run and there are several parameters that need to be aligned (three bugs spawning timely, the bugs being of the correct types and their movements).
* The second change is a minor change in the platforming around frame 3683 (1:01). Instead of stopping at the edge of the platform, enough horizontal speed was taken out during the jump to avoid the beetle, but without coming to a complete stop at any point. 4 frames saved.
* Finally, 3 frames were saved in the screen transitions around the boss. I've noticed a bit of variation of these during the different attempts I've done in this game, but I haven't found a way to reduce them without wasting more frames than it's worth. With the current knowledge, they're just a random given.

! Stage 2 (sewers)
This stage has seen the biggest changes of all.
* First out is using the additional jump height of the birdman scare to get off the raft earlier. A consequence of using the birdman scare was a forced death against the second octopus instead of damage abusing through it. In total, 7 frames saved.
* Next up is one minor and one major change around the first cave frog. The minor change was to avoid the 12 immobility frames after the frog was defeated by a well timed jump out of the "immobilization zone". The major change was going left after the fight to manipulate the screen position and set up a shortcut right after to the first cave frog. This saved almost 300 frames.
For the sake of completion, it should be mentioned that the new shortcut can be tweaked in TAS-conditions to save even more time by completely skipping the first cave frog. However, the level boss doesn't spawn unless all three cave frogs have been defeated, so it's not going to be useful unless something new is found. For reference, a wip that skips the first frog and is 540 frames faster than the previous TAS has been uploaded here [userfiles/info/56131164687288034].
* 56 more frames were saved from the shop until the boss fight. Most of them came from skipping the immobilization frames after the last cave frog fight through better positioning and a well-timed jump.
* 4 frames were saved in screen transitions around the boss.

! Stage 3 (overhead, basement)
Very short stage and nothing new here.

! Stage 4 (overhead, house)
* 36 frames were saved in the fight with Delia's art pieces. It's now a perfect fight (no time losses to detours for taking out the art pieces) and also managed to collect a bug (1 health regained) from the last art piece. The addtional health allowed an additional damage boost in the graveyard stage. Even though the art pieces have less health than most other enemies in the game, this fight is pretty tough to optimize. The room for manoeuvering is fairly restricted and the only significant way to manipulate the enemies is to throw the potion at different frames. In the original attempt, this wasn't enough and I had to go all the way back to the early part of the sewer stage to get a new set of RNG that eventually led to this fight.
* 2 frames lost in the screen transitions to the next stage.

! Stage 5 (overhead, attic)
The previous TAS was "perfect" (no loss of movement due to detours for fighting enemies etc), so no improvement possible (unless something major is found). It's still worth mentioning the great deal of manipulation required to produce the result seen in the movie. Each potion thrown served to manipulate upcoming low probabilitly events. It's also worth noting that the mouse room was entered at the earliest possible time in the cycle to make a flawless catch possible. Unless arriving here 22 frames earlier or more, any time save before this point would just have meant a corresponding waiting time before entering the mouse room.

! Stage 6 (graveyard)
* Thanks to entering this stage with one more hit point left than last time, a damage abuse was made possible near the beginning resulting in 8 frames saved.
* 23 frames were saved from various minor platforming optimizations during the rest of the stage. Slightly disappointing to see that there was so much room for improvement in my previous efforts, but oh well...
* 1 frame saved in the screen transitions around the boss.

! Stage 7 (overhead, attic maze)
Nothing of note here. Just warping to the exit. Also 1 frame saved in the screen transitions to the next stage.

! Stage 8 (afterlife)
No change here. There is still one frame lost at the very beginning to manipulate a frog out of the way on the right side of the level.

!! Credits
* The most significant route change compared to the last TAS was found by 'bartaan'. See frame 5707 (1:36 in the encode) and onwards.
* I have to again thank Bobo the King for sharing his bot in the forum. It would have been very time consuming to manipulate the mouse manually.
