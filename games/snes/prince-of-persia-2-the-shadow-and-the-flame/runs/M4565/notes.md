> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4565M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

I thought my previous run was very well optimized and a new TAS would improve by a few seconds, but I was completely wrong.

!!__Game objectives__

* Emulator used: BizHawk 2.4

* Aims for fastest time

* Uses death to save time

* Takes damage to save time

* Heavy glitch abuse


The improvement is 1:19.00 (4748 frames) faster than the [3277M|previous run], due to better optimization and new discoveries, such as new skips, more glitches, ghost glitch achieved even earlier (Level 7 instead of Level 8), and the inclusion of turn movement mechanic when the prince draws your sword (I didn't realize about this mechanic before).

!!__Development of the run__

On April 2021, GMP submitted [7096S|a run of the first game] and it brought my attention, because I discovered the Prince of Persia Speedrunning community some days later, and since I wasn't involved with Prince of Persia stuff for a while due to other projects, that was a great opportunity to contribute again with both POP1 and POP2.

Three months later, while I was watching a gameplay of the second game (SNES version), I noticed something on level 12: the player opened the exit by pressing a different switch button located on the room below the exit (a.k.a the third room). All previous runs wasted time going to the "special potion" room without realizing that the exit was already opened.

That flaw was unacceptable for me, leading me to work with this game again. But not before finding more ideas, since the previous run was made without TAStudio or using RAM Watch for heavy gameplay optimization - which turned out to be one of main keys of the new run). 

Some weeks later, eien86 and GMP finished a TAS of DOS version, which included an useful technique that was overlooked in the lastest run: the turn direction mechanic.

Before starting this project on September 1, originally I wanted to clean the input of the previous TAS (to improve the resync when starting a new work), but it caused a desync on level 4 and messing up with the original optimization.

During my 3 months of hard work, I found new skips and glitches.



!!__Table of improvements:__

||Levels|||Frames saved|||Total||
|Level 1 |      130     |  130  |
|Level 2 |      181     |  311  |
|Level 3 |      169     |  480  |
|Level 4 |      35      |  515  |
|Level 5 |      418     |  933* |
|Level 6 |      336     |  1263 |
|Level 7 |      323     |  1586 |
|Level 8 |      1120    |  2706 |
|Level 9 |      17      |  2723 |
|Level 10|      80      |  2803 |
|Level 11|      267     |  3070 |
|Level 12|      1588    |  4658 |
|Level 13|      90      |  4748 |


* The post-level 5 cutscene loads 6 frames slower for unknown reasons, so 6 frames were lost.


__Level 1__

* Adjusted running jumps on the first two rooms, saving 6 frames.

* On the fifth room, delayed a running jump for 6 frames to gain more distance between this room and the next room: not only I gained 3 frames but the landing after the next running jump was better this time, gaining more 3 frames (previously he was pushed back for 7 pixels when landing).

* On the seventh room, apparently there's nothing at the very left of this room, but in this version there's an invisible ledge that allows you to fall to the next room, with the cost of getting hurt when landing (it takes much time to recover). Once he starts moving again, I didn't need to optimize those running jumps, saving some time at the end of this level.

EDIT: The invisible ledge strategy was obsoleted with an unexpected new route I've found after submitting this run:


* If you fall into the pit of the sixth room, apparently it leads to a mysterious "completely dark room" and he still continues falling down before actually dies for some reason. This small amount of time was an opportunity to test: with some cheating (poking x position address), it's possible to reach the screen transition that leads to the pre-docks room, triggering the checkpoint but unavoidably dies because he is out of bounds. 

* Initially I tried this shortcut by doing a running jump earlier than intended and ignoring the ledge of the next roof (requires holding down button, though it only works when he isn't very close to the edge), but unfortunately he falls down so much that dies, with only one pixel away from reaching the screen transition.

* Trying to solve this problem, I have something I've discovered but went unused during the work of the previous run: on the previous room, if you get hit by a guard while climbing up, he will be knocked back into a wall at the same time he draws the sword and automatically turns direction, causing him to zip leftwards. 

* This glitch looks good but he gets out the wall of the next room and falls into the pit when tries to sheathe the sword - the little amount of time you have as soon as he starts zipping and the unavoidable turnaround contributes for this problem too. Facing leftward stops zipping but prevents him from running unless if you turn direction, though it causes him to zip again.

* After some frustration, I found an alternate way to clip which solves the entire problem, though the setup costs some time:

- First of all, wait 12 frames before climbing up so that guard will approach next to that wall;

- After climbing up, turn direction then start running and crouch before he falls directly to the guard;

- He will be knocked back and clips into the wall without turning around since he is facing rightwards;

- Now you have enough time to sheathe the sword so he won't get out the wall this time, and finally you can turn leftwards then do a running jump, allowing him to reach the screen transition!


* 77 frames were gained at the end of this level + 3 frames gained with another better optimization after restarting at the checkpoint.

* Once restarting at the pre-docks room, for some reason he was able to climb down at the very first frame possible when this game isn't supposed to do it. Strangely it also works at the start of level 4 after you beat the previous level, but this level isn't useful at all because it leads to a much slower (and completely useless) route.
 
* This unintended weird glitch saves 9 frames at the end thanks to an extra running jump.


__Level 2__

* This time I don't need to wait 3 frames before entering the next room because...

* You can skip the puzzle if you sink the last tile then climb down from the second-to-last tile, causing him to zip directly to the exit after he starts sinking, saving 98 frames.

EDIT: The puzzle section can be skipped even earlier by climbing down through the quicksand pond and waiting a bit before letting him go (at least 12 frames) in order to land into this trap instead of falling into the "pit".


__Level 3__

* Starting this level with a standing jump instead of running.

* On the third room, the turn direction mechanic when holding the sword is used for the first time - it requires good positioning because he can fail to grab onto that ledge. This is faster than doing a turnaround while running.

* When entering the next room, normally you must break a loose tile to open that gate, but this time this can be skipped thanks to gate clip discovery.

* After passing through this gate, turning direction twice (with precise positioning) is a good option for faster falling.

* At the exit room, for some reason I managed to remove 2 lag frames by pressing down button for a single frame while he is about to climb up.

EDIT: 

* At the start of this level, displaying "X minutes left" message (by pressing L button) for no reason looks suspicious, but somehow it helped me with one of the rooms of the next level. This game makes no sense.

* After improving the first 2 levels again, a frame was lost on the exit room for some reason. I tried to fix it, but no success.


__Level 4__

* I reverted to the old strat between the third and fourth rooms because this time you need enough distance to grab that upper ledge which can boosts you to the ledge below. 
 
* After landing and going to the next room, here comes a nasty problem: a single frame of difference can mess up with the gate while is still opening, messing up with the first running jump. I don't know exactly why this problem occurs, but I managed to fix it during most of my progress.

* Better optimization during the rest of this level.

EDIT: On the exit switch room, somehow I managed to avoid an extra lag frame by displaying that "X minutes left" message again. Actually this lag is so stubborn that I only managed to avoid it two or three times during the entire progress.


__Level 5__

* I improved lava glitch setup by forcing the skeleton to fall into the lava with a frame perfect strategy: 

- After climbing up, do a running jump as soon as possible;

- Turn backwards for skeleton positioning (he will move a bit more);

- Turn right then do a step, causing the skeleton to fall into lava instead of attacking you;

- Quickly draw your sword and walk;

- And finally sheathe the sword and do a running jump as soon as possible.


* The entire bridge section is skipped thanks to gate clip in the next room (in this version, that gate only opens when the bridge starts collapsing). 

* After passing through this gate, unfortunately I can't do a standing jump when turning backwards after he sheathes the sword because the collision detection sucks. So the option is climbing onto the ledge in order to progress, and I turn direction technique before he falls down, allowing a ledge grab. Some time is lost with additional climbing but this skip is indeed faster.

* The next room looks simple but when optimizing this game, this room adds 1-2 more lag frames for some reason. I don't know why it randomly happens, but I managed to avoid this problem with trial-and-error (alternating some running jump patterns before reaching this room).


__Level 6__

Since he loses the sword after beating the previous level...

* In this level, getting hit by a medusa head can be broken when doing a running jump, messing up his y position but this glitch can be really useful in the fourth room for 3 reasons: 

1 - If you climb on a loose tile, normally you can't do a standing jump because the loose tile collapses before he attempts to jump, but with this glitch and precise positioning before climbing up, he sucessfully jumps (perfect timing).

2 - At the same point where I previously skipped several rooms by doing an unintended ledge grab, this time you can walk through to the next room and land safely by getting hit by a medusa head if you do a standing jump (not included in this final version of this run).

3 - If you get hit by a medusa head while climbing up, he will be pushed inside a wall and if you turn rightward or do a step + a standing jump, he can go to the next room (turning rightward is faster).


EDIT: 

* During the update of this run, I delayed 4 frames before going to the fourth room (one from before starting this level and the other three frames are from waiting on the third room before he starts running) due to different RNG, affecting the other rooms too.

* Before going to the second-to-last room, I pause this game three times for manipulation: the first one is necessary because otherwise the second medusa head will defeat you, and the other two pauses are from the medusa head of the exit room - normally doing a running jump a bit earlier isn't a good idea but this enemy can be avoided if you pause and unpause after some frames (perfect timing and positioning).

* Some frames were lost with this different RNG, but fortunately I recovered them with the last medusa head improvement.


__Level 7__

* Usually getting crushed by a gate kills you, but if you hold the sword and get crushed, you can press down button to sheathe the sword (you must wait a bit because otherwise he will be crushed again), allowing you to continue. As soon as the gate is opened, you must wait until this gate closes. There's a switch button after this gate but it instantly closes completely, so waiting is unavoidable. 

* While I wait for the closing, I open the tunnel on purpose because when climbing up to the next section, this room lags.

* When successfully sheathing the sword after getting crushed, normally he crouches down because hitbox, but it's possible to avoid this problem with perfect positioning.

* This glitch works like the lava glitch: you can fly everywhere and walk through walls but you can't press switch buttons unless you reset the gameplay. Fortunately this level has a checkpoint so this glitch can really benefit through the first half.

* Despite having 0 HP, unfortunately this glitch doesn't make you invicible from sword traps. 

* After restarting in the checkpoint room, I optimized positioning before going to the next room to save time with the turn direction. Jumping through a sword trap only works when moving rightwards, for some reason.

* The climbing section is pretty annoying, because you must avoid getting hit by that medusa head. Fortunately I got a very good RNG pattern and I improved 6 frames before climbing by drawing and sheathing his sword instead of doing a step.

* On the next room, I discovered that the ghost glitch can be obtained by getting hit from a falling tile while crawling under the sword trap, costing frames but saving a ton of time for the next level.

EDIT: Due to different RNG from the previous level, I waste 2 frames before going to this room (that's why I paused this game once) - this enemy hits me when I'm about to skip directly to the exit room through an unintended climbing - I really hate it!


__Level 8__

* As I said before, I obtained ghost glitch so no more backtracking anymore!

* Different route between the second room until the fourth room: instead of climbing down to the third room and across some rooms before returning to the ground (due to running jumps optimization), it's faster going to an empty room located at the left of the second room because the ghost glitch also allows you to climb down from thin air, leading to the fourth room.

* When falling down to the fourth room, you must grab onto a ledge because otherwise he dies for falling too far. I wait a bit before landing because otherwise this snake will kill him.

* The rest of this level is straightforward.


__Level 9__

* This level has a weird problem: sometimes an extra lag or two appears while acrossing this level. Like level 5 this problem can be avoided through trial-and-error.

* Meanwhile, I managed to improve this level with better optimization and a slightly new route.


__Level 10__

* A new route between the last two rooms: if you already activated ghost glitch, when he climbs down at the very first tile, he will be pushed back to the previous room and lands into the air.

* Sometimes that loose tile lasts longer to break (this room is laggy), but this problem can be avoidable with a single frame of difference.

* After landing, I must optimize positioning so he can climb down without turning backwards at all.


__Level 11__

* In the eight room, it's possible to climb up to the tenth room, but you can't move because he is inside a wall. Fortunately drawing his sword allows you to move and the turnaround mechanic also helps in this room. Initially I optimized theprevious route, but this new route is surprisingly faster by a few frames despite losing time for being unable to freely move.

* In the thirteenth room, instead of breaking that loose tile in order to climb up to the next room, it's faster going to another room because there's a ledge that leads you to the intended room. In this run he grabs onto an unintended ledge at the very start of this room - since he is inside a wall, you only can notice this ledge grab by disabling Background Layer 1 on emulator. 

* In the intended fourteenth room, breaking that loose tile avoids lag when returning later to this room, with the exit door open.

* The next room is accessed by the intended way this time because it's possible to avoid that birdman without fighting at all with a nice running jump. And after climbing up, I managed to remove a lag frame while he starts the next running jump.
 
* Better optimization for the remaining rooms, and the exit switch button is pressed with a running jump + perfect positioning.

* More mistakes from my previous run: going to the exit room without closing that gate at all is actually possible by turning around a bit farther after landing, and I wasted time in the exit room by turning backwards before returning to the ground.


__Level 12__

This level was a biggest flaw since the very first run and nobody never noticed it. Actually there are two flaws:

1 - It's completely useless drinking the "special potion" just to press an switch located behind that gate, because the actual exit switch is located on the previous room.

2 - More important: this level actually has 2 exit switches, and the other one is actually pressed when he climbs down to the third room.

* So most of this level is ignored this time, saving a lot of time.

* The running jumps are the same as the previous run.

* On the aforementioned exit switch room, I managed to remove a lag frame by pressing down while he is about to climb up.

EDIT: With the update I luckily removed two lag frames instead of one (by holding down button from frame 26548 until 26552. Yeah sometimes it's not possible to remove an extra lag frame).


__Level 13__


* The loose tile of the first room sometimes breaks much later, but if you pause the game (as I did on the previous run) or start this level a frame later (I choose this option this time), that tile will break without delay and you can go forward without waiting at all.

EDIT: With another lag frame removed from the previous level, I don't need to manipulate that loose tile anymore.

* The rest of this level is better optimization with different running jumps.

* When entering the flame room, doing a running jump requires precise positioning enough to avoid that birdman and trigger the exit without the need to move further.

* With this nice positioning, I can avoid that enemy again without problem - that death glitch to make him invicible wasn't necessary after all.

* Before returning to the previous room, for some reason this room adds a lag frame when doing the first running jump as soon as possible. Fortunately I managed to avoid it (this one is very stubborn).

!!__Other comments__

I didn't expect to improve this game so much despite considering that the previous run was TASed without advanced tools, such as TAStudio and RAM watch. I should have worked harder at the time, since some of the new improvements I've found could be easily implemented, such as that extra ledge grab in the floating potion room of level 4 and avoiding a switch button that closes the gate before going to the exit door of level 11.

Although I achieved an impressive result (including sub-8), this project was very frustrating during the last 1/3 of the progress, because while I managed to squeeze even more frames, this game can desync on some points due to random lag frames. I really don't understand this SNES version so this TAS is a lot of trial-and-error abuse.

Well, seems I'm less active with TASing, but actually I have some games in progress. The next project will be an improvement for one of my first projects (from 2016).
