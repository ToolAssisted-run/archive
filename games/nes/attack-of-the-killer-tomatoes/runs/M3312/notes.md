> **Imported**
> This run was originally published at https://tasvideos.org/3312M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

The old TAS was horribly optimized, I was a bad TASer back then. This one is better.

!! Game objectives

* Emulator used: FCEUX 2.2.3
* Minor glitch abuse
* Takes damage to save time
* Manipulates luck

!! Comments

This one improves the [2491M|published] run by 370 frames, mainly due to better speed cycling and luck manipulation. Unfortunately there's an 8 frame-rule for every screen transition and a 16 frame-rule for the credits, so small improvements are cancelled out.

To make TASing this game easier I created a [=userfiles/info/35790233850650263|lua script] that automates assigning input based on the current game state, control markers and variables. It lead to faster TASing, because then I didn't had to draw inputs by hand, many mouse clicks were reduced to one or zero. You can read more about the functionality about the script [/Forum/Topics/18670|here], but the script is utter garbage anyways since I coded it before thinking about it and doesn't work as idealized as in the submission text.

!! Tricks and glitches 

! Mid-air speed cycling

The non-deterministic automatoe below represents optimal speed cycling in mid-air. The expression in the circle are state properties, the expression next to the lines are inputs. Other inputs are possible as well, but those usually lead to worse states, less efficient speed cycling or don't minimize input. As you can see the inputs leading from a state are all the same which means caring about the state which comes next isn't necessary and thus no rerecording involved for automating speed cycling.

Here was the automatoe. RIP. :'(

State (numbered from left to right, top to bottom) optimality is as follow: s_1 < s_2 < s_3 < s_4 < s_5. Which means state 5 is the best due to having the highest speed. Goal was to maximize the state optimality, going from a low state to a high state as quickly as possible and to remain in the highest possible state as long as possible.

! On ground movement

The animation time for normal walking is 5, while for running it is 3. Another timer which increments after each step is responsible for how many pixels the character will move. The character will move when ¬r:a=4→a=3, r:a=2→a=1. The rate of movement just depends on the animation timer. Both timers reset when the d-pad is released, second timer also resets when jumping. The rates for the second timer are: 768, 1280, 1024, 1024.

;Walking: (s|s∊a>2) × ¬d → (s|s∊a=0)%%%(s|s∊a=0) × d → (s|s∊a=4)%%%(s|s∊a=4) × d → (s|s∊a=3)%%%On the last state change the character will move 768 pixels and from releasing d in the first state change the animation time is reduced to 3, leading to faster walking despite always having lowest speed.

;Runing: (s|s∊a=0∧r) × B∧d → (s|s∊a=2∧r)%%%(s|s∊a=2∧r) × d → (s|s∊a=1∧r)%%%(s|s∊a=1∧r) × d → (s|s∊a=0∧r)%%%Now the second timer wont reset due to never releasing the d-pad, so the speed cycles through all 4 rates of speed.

! X Speed and Subpixel behaviour

The speed value in the game is unsigned, which means high subpixel is always nearer to next position tick no matter what direction the character is moving. The direction flips instantly while the speed stays the same when pressing opposide direction on the d-pad.%%%
When jumping the x subpixel is set to 255, to 0 when landing.

! Jumping 

The A presses for the jumping are distributable, which means 2^11 possibilities to adjust jump height in total, because the timer for accepting A presses is 12. But it's not needed to test all 2^11 possibilites, after working out the y positions the character can get the possibilites are reduced to 175, for landing it's even less.

! Landing

f: (s|s∊¬g∧a=0) × ¬B → (s|s∊g∧a=4)%%%
f: (s|s∊¬g∧a=0∧r) × B → (s|s∊g∧a=2∧r)

Here are the for what's happening when the character lands based on wheter B is pressed or not and pretending I actually understand the stuff I write here. As even the untrained eye can see these are quite smiliar to walking and rerecording is needed in order to go to the more optimal state and to minimize button presses.

Also:∀(s|s∊¬g) → (s|s∊g) : s_k × d → s_l ≡ s_k × ¬d → s_l%%%
As you have correctly guessed it, it means pressing a directional button prior to landing doesn't do anything.

! Despawning enemies

Some enemies can be despawned by pausing the game on certain position. Which means taking damage can be avoided.

! Luck manipulation

It depends on time. To adjust the RN for the next action a simple pause is the best solution. Appliances for luck manipulation are damage boost, since they depend on enemies direction or avoiding taking damage. 

! Frame-advance

When the game is paused S can be used to advance a frame at a time ingame. It also can be hold, which has a small delay upon start then goes at 30 fps. This is useful to reduce pauses to 1 frame. And it is actually the first time I used frame-advance in ages.

Appendix:%%%
r: running, only possible after a certain level%%%
b: damage boost%%%
l: move left flag%%%
d: direction input function, d: l,b -> L,R%%%
v_x: x speed%%%
g: ground flag%%%
a: animation counter%%%
A,B,S,T,U,D,L,R: buttons%%%

!! Stage by stage comments
Maybe later or never.
