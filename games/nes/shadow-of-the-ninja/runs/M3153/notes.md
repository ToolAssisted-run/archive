> **Imported**
> This run was originally published at https://tasvideos.org/3153M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

A new TAS of Shadow of the Ninja is right here. This time it is faster by 1018 frames over the current [948M|published] run, 894 frames faster than my [4521S|cancelled] submission and 277 frames than xipos [http://www.nicovideo.jp/watch/sm20892340|unsubmitted] run. Improvements come from ultra optimizing every detail of the game.

!! Game objectives

* Emulator used: FCEUX 2.2.2
* Uses glitches to save time
* Takes damage to save time

!! Comments

! Improvement table

||Stage||klmz||xipo||TASeditor||Relative(klmz)||Absolute(klmz)||Relative(xipo)||Absolute(xipo)||
|1-1|2333|2317|2307|-26|-26|-10|-10|
|1-2|3328|3289|3275|-27|-53|-4|-14|
|1-3|4824|4834|4821|50|-3|1|-13|
|1-4|6054|5809|5799|-252|-255|3|-10|
|2-1|8985|8690|8648|-82|-337|-32|-42|
|2-2|10282|9985|9940|-5|-342|-3|-45|
|2-3|11307|10998|10944|-21|-363|-9|-54|
|3-1|18077|17698|17556|-158|-521|-88|-142|
|4-1|20563|20159|19971|-71|-592|-46|-188|
|4-2|23564|23014|22787|-185|-777|-39|-227|
|4-3|25122|24548|24313|-32|-809|-8|-235|
|5-1|27998|27439|27167|-22|-831|-37|-272|
|5-2|35299|34558|34281|-187|-1018|-5|-277|

! Tricks and Glitches

The game uses an unique system for position units - called "u" from now on - 1u is equal to 1/16px.

;Odd Rule:The odd rule is the ability to move at 25u/f, instead of 24u/f.

;Getting Odd Rule:Acceleration is at 2u/f while walking or in mid-air, but deacceleration is at -4u/f on ground and -1u/f in mid-air when releasing R/L button. Being in mid-air and releasing the R/L button for one frame, causes the X velocity to be 25u/f. Or after doing an Item Boost before landing so that X velocity is (oddnumber + 1)*2u/f will result in the X velocity to be 25u/f too.

;Holding Odd Rule:The Odd Rule can be kept by never releasing the R/L button during climping ladders and platforms, ducking, charge attack and level transitions.

;Item Boost:With all items and weapons it's possiple to speed up X velocity by attacking in mid-air. The first optimal frame to initiate and Item Boost is when X velocity is at least 23u/f, X velocity will be 25u/f when the boost actually starts. In general it is (Xv-1)*2u/f and then it decreases 2u/f until the end of the animation. When it hits that point X velocity will be (Xv/2+2)u/f. With sword animation length is 11f, shuriken and bombs have a lenght of 4f and hook is 19f. Odd Rule is lost when animation length is an even number. When landing while boosting the X velocity will be (Xv-2)/2u/f, it is the best to start the Item Boost before landing so that (Xv-2)/2 is a odd number. To optimize Item Boosts level layout is a key factor.

;Item Boost Half Interupt:When relasing R/L button while boosting the resulting X velocity will be (Xv-2)/2u/f. Useful for positioning and thus lag reduction.

;Item Boost Full Interupt:When pressing the opposide R/L button of the currently held R/L button while boosting X velocity will be 0u/f. Again useful for postioning and lag reduction.

;Item Boost Delay:Sometimes it's not the most optimal to start an Item Boost on the first possible frame, but to delay it for reducing lag.

;Landing:While holding R/L button and not boosting the resulted X velocity will be 0u/f, (Xv-1)u/f when releasing R/L button and not boosting and (Xv-2)/2u/f when boosting.

;Climbing platforms:Climbing a platform can cause being higher or lower afterwards depending on the Y position. Being higher is better when moving horizontal and camera scroll has no optimality priority, so a single frame Item Boost can be added. A lower Y position is better for vertical movement or when camera scroll has priority.

;Frame-Rule:The game has a frame-rule of 16 frames. After each boss fight the game start the explosion animation if the frame-rule is 0xF and then the animation counter increases each time the frame-rule is 0xF until the animation timer is 0x10. The frame-rule is counting up and halts on lagframes, which means 1. A frame is lost when a lagframe occurs and position optimality decreases; 2. A frame is gained when a lagframe is removed and position optimality increases; 3. 16 frames are lost when removing a lag frame and decreasing position optimality and the frame-rule goes from 0xF to 0x0 on the last hit on the boss; 4. 16 frames are gained when adding a lag frame and increasing position optimality and the frame-rule goes from 0x0 to 0xF on the last hit on the boss.

;Camera scroll:The camera will scroll horizontally while on ground or in mid-air, it will scroll vertically while on ground or climbing platforms. Horizonatal scroll speed is the same as characters horizontal speed. The camera scrolls horizontally until the player is in the middle of the view, even when the player is not moving.

;Input processing causes lag: Sometimes when doing R+L or U will cause the game to lag, even if these buttons don't change anything. Releasing buttons can also cause lag.

;Moving further when ducking:Holding R/L when ducking sets X velocity to 0u/f, releasing R/L causes the X velocity to be (Xv-4)u/f on the first frame.

;Jumping:There are 4 different jump heights, 1f, 3f, 4f and 5f, the A presses cannot be distributed.

;Double jump with charge attack:After a charge attack there's a one frame window to jump in mid-air.

;Zipping:Climbing a plaform which has a adjacent wall to it will cause the player to zip upward with the right positioning and R/L are held.

;Level transitions:When the player can move after a level transition is not constant, it's each third frame.

;Double damage:Attacking an enemy whose variables are in odd RAM addresses with level 2 or 3 sword and the right position hitting the enemy twice.

;Vertical ledge boosting:The player can boost up a ledge by holding R+L or Item Boosting, which normally can't be with a normal jump.

;Collision detection:Interaction between enemies and player is every other frame. When the player collects a power up or after being hit, he's invunerable. Attacked enemies can't harm the player for some frames. 

!! Stage by Stage comments

! Stage 1-1

Frame 690 contains the only time releasing R/L to get odd rule, 4-3 has it too, but there it doesn't matter. Climbing up the first platform later at frame 948 requires to slow down at first, but saves time afterwards. Falling down into the gap at frame 1085 to add an Item Boost. Killing the monkey is needed to not have it in the way and to reduce lag. Doing the Item Boost at frame 1334 cause to lose Odd Rule, but it's still most optimal. Very long Item Boost delay on frame 1351 and interrupting it at frame 1356. Another delay at frame 1367. Loosing Odd Rule doing Item Boost at frame 1385, the lag didn't allowed anything else. Delaying the Item Boost at frame 1578 to make the boss appear sooner. The boss is manipulated in such way that he stops sliding as soon as possible by positioning.

! Stage 1-2

Jumping through the enemy at frame 2636 gives a small boost, at first dropping to (18->16)u/f then going to (46->44->42->31->33->35->37)u/f. Delaying climbing at frame 2901 for one frame to make the next missle launcher not attack. Good vertical positioning saved frames. Attacking the running enemy at frame 3098 to make him turn around, as well as getting hit at frame 3117 to efficiently bypass the enemy at frame 3172. Also good positioning after getting hit to reduce lag. Turning left at frame 3152 and pressing D next frame for better position and lag reduction.

! Stage 1-3

The rotating platforms depend on a local timer when they're loaded. Getting the sword upgrade which is needed later in 2-1. Jumping higher at frame 3930 to make the enemy not fire antother bullet. Getting bombs at frame 4050 for faster boss fight. Killing the enemy with the bombs to prevent him from shooting and causing lag. The next enemy will fire towards the right in an optimal way, so that the bullet doesn't hit the player when climping the last platform, but also to be as far to the right to reduce minimal speed. The bullet has priority, any added lag which causes better player position wont save time. Some glitchy hanging at fram 4586. Picking up the health item to be invunerable. Not doing an Item Boost at the end wastes one frame, but let's the player and boss start moving earlier.

! Stage 1-4

Using bombs for this boss saves a lot of time. The frame-rule in this stage is one frame away from beeing beaten.

! Stage 2-1

Getting the second sword power-up to have homing-shurikens for the mid-boss. It's needed to delay a frame spawning the mid-boss to prevent collision at about frame 7094, also some delay of throwing the shurikens to prevent lag. Massive amounts of reduced lag to the last attack. Some short interrupting of gameplay at frame 7237. The steam cycles depend on local timer and fire two steams each time, the timers have proirity so the fire as soon as possible. Deaccelerating on ground at frame 7443 and 7445 to be able to jump over the enemy. Delayed the Item Boost at frame 7742 for two frames to reduce lag. Climbing at frame 7830 was delayed for lag reduction too. Getting a second set of shurikens for faster movement and better lag reduction. The second thrown shuriken is killed by the steam at frame 8101 to prevent lag. Doing R+L to take the upper platform, benefits are not waiting for the steam cycle and lag reduction due to the shurikens not spawning off screen. Running both legdes and doing Item Boosts at frame 8491 was faster in this case, with different positioning it would be more optimal to only run down one.

! Stage 2-2 

Starting an Item Boost with sword at frame 9117 right before collecting the bombs let's it last longer than just with bombs, but it's stopped earlier due to bombs animation. Jumping and pressing R at frame 9306 to move 3u. Throwing bombs at the enemies at the end of the stage to not get hit.

! Stage 2-3

Firing a sword beam at the boss after the second bomb throw hits him at frame 10221, right before the first bomb hits him, which was enough to beat the frame-rule once more. Pressiong D at frame 10533 to reduce lag, as well as at frame 10857, the rest of them don't reduce lag.

! Stage 3-1

Attacking the first enemy so he wont fire to the right, which saves lot of time when jumping over the third enemy at frame 11843. The section after frame 12005 is tricky, an enemy who has priority spawns in the right upper corner at frame 12095, but he's stuck there for a while and moves back and forth, adjusting camera is needed to make him just not lose his low position when he can move. Also not causing any lag until the enemy is hit is always better. Some reduced lag afterwards doing jumping at frame 12274. More reduced lag by delaying jumping at frame 12403 for one frame and not Item Boosting, causes to hit ceiling and loosing vertical momentum at frame 12417, but it was still the most optimal. Reducing lag by good jump height adjustment at frame 12473 and delaying the Item Boost at frame 12501. Getting shurikens and charging attack at frame 12928 to perform double jump, attacking the box from the left corner of the platform and starting the charge from there isn't working, the camera has priority  and needs all the way to the right when performing the zip. Manipulating the little enemy so he wont be on screen when the charge attack fires to reduce lag. Pressing L at frame 13281 to reduce lag, pressing R at frame 13328 and then releasing it for positioning. At frame 13354 getting odd rule. At frame frame 13666 the camera needs to be first shifted all the way to the right. Killing the enemy, instead of getting hit. The box with the shurikens at frame 13814 is destroyed in such way that falling into the platform where the box is is unnecessary. Killing the enemy at frame 14033 to jump low and thus adding one more Item Boost and having the next one delayed for long. Delaying the last Item Boost at frame 14208 for 8 frames to make the boss appear earlier.
The frame-rule is one frame away from getting beaten again.

! Stage 4-1

Saved some frames by vertical positioning when climbing. Camera has priority until frame 18547 to make the missle launcher fire as soon as possible. Hitting the missle launcher at frame 18679 with the sword beam, so the next sword beam passes through enemies which let's the enemies at frame 19110 killed in two slashes instead of three. The upper section is really laggy and requires delaying Item Boosts. Doing the second slash at frame 19124 while standing and pressing R+L to move 2u to the right, instead of continue ducking. Killing the enemy at frame 19356 with double hit to reduce lag. Speaking of lag the next section is still very laggy and applied the usual lag reduction techniques to it. Killing the missle launcher at frame 19562. Collecting the health item at frame 19694 to bypass the next missle launcher efficiently.

! Stage 4-2

Caused losing odd-rule at frame 20226 for positioning to extend walking on the conveyor belt. Saved some frames when jumping at frame 20352 due to prior vertical positioning, as well as when jumping up the next round platform. Firing a sword beam to the enemy at frame 20529 to make him move.
Waiting on the platform at frame 20916 to avoid death, also camera has priority and thus minimal air time is optimal. Extended walking on the conveyor belt by interrupting movement by releasing R on frame 21007. Collecting bombs at frame 21440 for boss fight. Waiting for the elevator to be high enough without spawning the moving box enemy. It's possible to jump up to the ledge at frame 21666 earlier and boost up vertically, but it requires a bomb which can't be wasted there and R+L trickery doesn't work since this isn't a ledge to the right. The spawning of the box enemy is delayed for so long that jumping into the middle hole is possible. The next box enemy has priority and removed lag is always better. Now R+L allows a ledge jump, but it isn't useful. Coming up a laggy section after climbing the elevator. Throwing a bomb to the enemy at frame 22244 to prevent getting hit. Instead of jumping once more at frame 22311, climbing down the platform at frame 22335 to make the enemy attack and not move to the right. To move in the elevator cutscene R+L is pressed at frame 22436, which causes the camera to stay in place horizontally. After the zipping a the camera needs to be high enough in order to die when jumping down, so the player actually spawns at the right side of the screen where the exit is and exiting the stage.

! Stage 4-3

After throwing the last bomb attacking the boss with sword slashes to make the bombs cause damage faster.

! Stage 5-1

Jumping over the first enemy is not possible, so waiting until he jumps is needed, his actions depend on global timer. The second enemy is hit to delay his attack. Good positioning saved a frame on the third enemy. Delayed jumping to the platform at frame 25371 for one frame to make the camera scroll vertically when climbing up. Saved some more frames due to vertical positioning. Getting the sword upgrade at frame 25806 to bypass the enemy, unfortunately the invincibility time doesn't last long enough to bypass the second enemy more efficiently. Getting hit by the enemy 25926 is unavoidable.
Manipulation camera scroll as far to the right by letting Item Boosts last as long as possible without losing player position. Since the player is in the right side of the screen the camera will always scroll right no matter which direction the player takes and Item Boost make the camera move faster to. Good examples for moving the camera faster are the Item Boosts at frame 26209, 26223 and 26250, these only benefit camera position. Getting shurikens at frame 26442 to move faster.

! Stage 5-2 

Pressing R+L at frame 27476 gives a small boost to 55u/f due to the enemy reverse ejecting the player, same with the enemy at frame 27619. When entering the auto scroller, the camera needs to be so much to the right that the boss isn't to much to the left when he jumps to the left. Getting the hook for optimal boss fight. Killing all enemies possible before collecting the bombs to reduce lag. Pressing down at frame 30337 reduces lag, aswell as at frame 30400, 30464, 30496 and 30541. Moving back and forth to make the enemy on the right not throwing his spear. Releasing D on frame 30561 reduces lag, same as frame 30657 and 30689. A down press at frame 31010 reduces lag. Another one at frame 31072. And more at frame 31201, 31232, 31264, 31296, 31328, 31360, 31391, 31424 and 31457.
Getting the scroll item to fully power-up the hook, throwing the second bomb through the wall due to fully powered-up items and collecting the health item on the other side to be able to perform a charge attack. When attacking the boss with the hook double damage can be caused by good positioning. The hook will fire a beam each time up is pressed when attacking in mid-air and thus causing damage to the boss. Landing on the ledge at frame 33909 was enough to sqeeze out two frames from the boss fight.

!! Other comments

! Thanks to

* klmz the previous run
* xipo for his TAS, new tricks and being helpful
* not mtvf1 for pointing out xipos run to late
