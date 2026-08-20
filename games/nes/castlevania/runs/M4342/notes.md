> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4342M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Well, initially I managed to improve a very solid run, later I improved my own run with the help of Morrison, and now, this new improvement is a milestone for this game!

!!__Game objectives__

* Emulator used: BizHawk 2.4 (works even on most recent versions)

* Aims for fastest time

* Takes damage to save time

* Heavy glitch abuse

* Heavy luck manipulation

* PRG0 version used instead of PRG1 version.

The improvement is 3377 frames (56.19 seconds) faster than the [3780M|previous run], mostly due to a recently discovered glitch which can affect the level layout, meaning several new skips.


!!__New tricks and glitches__

* __Scroll glitch__ (the major glitch discovery) - discovered by InfoManiac.

NOTE: I haven't fully understand this glitch to explain properly, and I performed and improved it through trial-and-error.

According from scrimpeh, "the game only updates the screen every second frame, so by making the camera move only on the other frame, you can keep 
the level data that was in the area before around."

"It needs 6 frames to load one complete 32 pixel column essentially, the game checks if simon moves and it has to load the next tiles. If you just stand still when the scroll engine checks if simon is moving, no tiles are loaded normally that's no problem, because simon takes 32 frames to cross a column, so it should be done after 12 frames of constant movement."


Now, some of my explanation: it basically happens if you Turbo L / R. But I performed with Down+Left / Down+Right because it feels better (for entertaining).

During my work, somehow I managed to improve that glitch with a single turnaround (you must do it 3 frames after the last "turbo button" press).


This glitch also allows another new glitch:

* __Stair glitch__ (discovered by scrimpeh)

Basically, if you walk on a stair, you keep walking until you hit a solid block but if you glitch that block away, you just keep walking up forever.

There are several points which you can do it, but most just lead to another room with a glitched camera position where no stairs work. Some other lead to glitched worlds entirely.

There are a few places which this glitch works well, but only stage 13 was useful. I tried stage 08 and stage 15, but were slower because the camera can't scroll until you walk to central position.


* __Staying in the air (1-frame trick)__

When jumping, if you whip or throw a subweapon and the animation ends while falling, for some reason he "stays" into the air for a frame, but still lands on the intended timming! (in other words: without delay)

This trick is frame perfect, and can be used to grab those orbs a frame earlier.

I discovered it while I was working on the pacifist TAS (yeah I'm improving this category too).


* __New type of critical hit__

By having a powered up whip, you can kill a boss with a single critical hit!

It works because first of all, the height must be narrow (two blocks of space), and when doing a critical hit, the knockback will not occur, and you can also control left or right direction before he gets up, while you have enough time to kill a boss with enough hits - this type of critical hit lasts longer than "normal" critical hits.


I discovered it when I was testing scroll glitch, on stage 12.


!!__Stage-by-Stage commentary__


__Stage 01__ - No improvement.

__Stage 02__ - Reverted to the strategy from 2017 run, because stopwatch is no longer necessary after stage 03.

__Stage 03__ 

* Same as 2017 TAS, but with a slight change during boss battle: while I was working on pacifist improvement, somehow I managed to kill the boss a frame faster, so after some testing, the new strategy is waiting some more frames before jumping next to the stairs, and the vampire bat will move 1 pixel to the left so he'll come down slighty faster. Saves 2 frames.

* Since I used one more stopwatch, 2 frames were lost due to having more time left (2 seconds). Having more time left cost more frames.


__Level 1:__ 0 frames ahead, score 6770.


__Stage 04__ - No improvement. And on previous TAS, the stopwatch strategy saves a frame on the first room but soon loses because of an extra lag transition. 


__Stage 05__ 

* __First half:__ The previous TAS got an extra lag transition before, and this time not.

* __Second half:__ Before taking damage from medusa head, I have enough time to perform scroll glitch (this one I need to spawn a platform and remove same tile) which affects the very start point of next stage.


47 frames behind.


__Stage 06__

__First half:__ Now this room is skipped! 877 frames gained.

* For some reason I got an extra lag transition this time.

__Second half__ 

* Before boss battle, I spawn a raised tile, because this time... 

* A completely new strategy for medusa boss: it's possible to do a critical hit which allows Simon to defeat medusa with a single hit!

* I didn't use bommerang on Medusa while doing a critical hit because it's not possible to hit simultaneously.


Boss defeated 56 frames faster, but stage 06 second half is 44 frames faster (at the orb grab).


The published run finishes stage 06 with 339 time left, while this new run finishes with 348 time left, losing 9 frames.


* Boomerang art: having three boomerangs spinning at the same time, just for entertainment ;)


__Level 2:__ 864 frames ahead of the published run, score 22150.


__Stage 07__ 

* No damage shortcut this time, because with scroll glitch, I can reach the stairs directly (needs to spawn 2 platforms, so the glitch is performed twice). 87 frames saved.

* For some reason, I got an extra lag transition this time.

* Second half has no improvement, but I killed an extra crow just for earning points.

__Stage 08__ - No improvement.

__Stage 09__

* This time I aimed for earning more points, but this change caused a problem: the first skeleton drops invisible potion instead of the following skeleton (getting invisible potion from the latter is important because you can bypass that last bone dragon with enough time). So, in order to fix this problem, I got another rosary drop (from a medusa head).


__Mummy boss:__ Same as published run, but the orb grab is improved by 2 frames, thanks to a new (and frame perfect) trick.

* This trick was only useful on stage 09 because on other stages, would be necessary improving another frame.


The published run finishes stage 09 with 424 time left, while this new run finishes with an extra second, losing a frame.

__Level 3:__ 87 frames faster at the end. 

951 frames ahead of the published run, score 92300.



__Stage 10__

* This time I decided to earn a money bag at the start, since I must wait for those moving platforms anyway.

* Before the first stopwatch use, I spawn a tile and bring it (doing that glitch again while acrossing that shortcut) to those two moving platforms path, so waiting is no longer necessary. Also I got a lag. 

36 frames saved.

__Stage 11__ - No improvement.

__Stage 12__

* First of all, the first skeledragon can be manipulated by pausing, but there's a thing I didn't notice until I TASed this stage on pacifist TAS back from 2018: actually that manipulation occurs a few frames later. In other words, simply pausing and unpausing as soon as possible is enough.

* I waited a frame before unpausing in order to avoid a lag later (during second skeledragon path).

* Second, another scroll glitch use (twice, again): the first one needs to spawn a raised tile, because the second scroll glitch needs shorter distance in order to spawn a tile on the boss.

* Like Medusa, Frankestein is killed with a single critical hit! 


Boss defeated 143 frames faster, but stage 12 is 124 frames faster (at the orb grab).

The published run finishes stage 12 with 338 time left, while this new run finishes with an extra second, losing a frame.


__Level 4:__ 159 frames faster at the end. 

1110 frames ahead of the published run, score 141290.

__Stage 13__

__First half__

* With scroll glitch, I despawn those tiles at the top from the stairs, and also spawn some kind of "glitched" tile, for a new damage boost - saves some frames. 

* For some reason, you can't control Simon when landing. But this problem can be avoided while on "attack animation".

* Also, since this tile has lower height, taking a damage boost is the way to reach the next point. Using the first hunchback is slighty faster than the second one. And this route is a bit faster than not having that tile and getting a damage boost from a third hunchback (although that boost only goes straight up).

* Now I climb up the stairs directly to the room above. 200 frames faster

__Second half__ 

* Half of this room was already skipped, so no more damage boosts this time.

* Like stage 10, I perform scroll glitch twice to spawn a tile and bring it to a later point. And the meat is skipped this time.

400 frames faster + 200 frames faster from previous room = 600 frames faster.

__Stage 14__

* Skips upon skips: the first half is now faster thanks to that scroll glitch from previous stage, and no damage shortcut this time.

* I got 2 extra lag transition frames this time. I tried to avoid it, but without success.


__Second half__ 

* I have no idea, but in the lower area, the camera doesn't scroll left at all, and there's an exit trigger inside the wall! 

* In order to trigger it, first I need to glitch that wall, so return to the beginning to lock the camera.

* I performed scroll glitch twice: that first one is for the next major skip.


__Stage 15__

* __First half:__ With some tile removed and by having some tiles at the start, you can damage boost from red skeleton above, skipping most of this room.

* __Second half:__ another scroll glitch, another boss defeated with a single hit.


Boss defeated 15 frames faster, but stage 15 second half is 4 frames faster~.

The published run finishes stage 15 with 396 time left, while this new run finishes with 425 time left, losing 29 frames.


__Level 5:__ 1796 frames faster

2906 frames ahead of the published run, score 175440.



__Stage 16__ - No improvement, except during transition which this time on PRG0 version, avoids an extra lag frame!

__Stage 17__ 

__First half:__ A lower tossing bone from the skeleton can be possible with pausing. It's 5 frames faster.

__Second half:__ Last major skip (once again performed twice) - the first one is to spawn a piece of gear, and the latter one is to spawn some tiles.

* You can simply go directly to the last stage, but there's a problem: I need to kill enough enemies and destroy enough candles in order to get a II multi-shot before the Dracula encounter.  

* Initially I took the original lower route (as well as throwing boomerang on the opposite direction), then waiting some time for another enemy spawn. But later I manipulated the first eagle (by stopping for a frame) to appear on the opposite direction so I took the upper route and solved the situation without wasting much time. 427 frames faster.

__Stage 18__

* While I was optimizing this game, I noticed something I've overlooked at the time: I haven't tested throwing an extra boomerang for both cycles, respectively!

* I improved some frames and later during my progress, I got a 24 frame first cycle (Dracula has a closed cape timming that varies at 16,24,36,50 frames - the previous TAS uses a 36 frame first cycle), but changed the pattern for the next cycle, which was easily fixed with pause.

* Normally loading a frame later allows us to get a better timming pattern, but I managed to get a 16 frame first cycle by waiting 4 more frames! I also got a good pattern for the next cycle without needing to pause.

* For the second cycle, I used an extra holy water throw, but since Simon can't move while throwing or attacking, it wastes some frames. 

* So before the second cycle starts, I adjusted the positioning (4 more pixels to the right) so I also can turnaround as soon as possible.

* Holy water does a bit more damage when is more closer to the enemy. Fortunately that extra holy water worked well.


First phase improved by 23 frames, second phase almost managed to save a frame before end input, although Dracula was killed some frames faster!


__Level 6:__ 456 frames faster, score 248290.

3362 frames ahead of the published run (I said 3377 - see the answer more below).


!!__Development of the run__


I never expected to improve this game once again, because how Morrison and I worked a lot on the previous run, and we weren't even able to find new glitches. But...

The opportunity appeared when InfoManiac742 discovered [https://www.youtube.com/watch?v=kqbjqsGPARc|something very unexpected], and scrimpeh soon [Forum/Posts/498506|tested it], discovering new shortcuts and a new glitch, leading me to work on this game again.

I started my work adding those new skips, and I also decided to improve the current pacifist run.

During my progress, I improved that "major glitch" and discovered two new tricks too.

This TAS was originally done on PRG1 version (like all previous runs), but since I haven't thought about PRG0 version, I decided to test this run, and noticed the transition to the second room of stage 1 was a frame shorter, much for my surprise! I never thought about possible differences between versions (not including the infamous crash glitch).


So with this difference, I resynched this run to this version (removing a frame for nearly every transition), and got some problems compared to another version:

- Several candles whip were affected, and some enemies, like those zombies from stage 01. That was easy to fix.

- I got an extra lag transition from stage 06 (I wasted a boomerang at the start to avoid that before), and from stage 07. Bad luck.

- The second half of stage 07 was more affected because of random lag, forcing me to throw the second boomerang, and getting a RNG drop with one of ravens (a rosary) instead of bone from the last skeleton (a money bag).

- Stage 10 got a lag during those last moving platforms path, while PRG1 is not.


If someone is interested to see this work originally made on PRG1 version, here's: [userfiles/info/67653516050890371]

It's 17 frames longer than this submitted PRG0 movie file.


!!__Other comments__


Well, I said on my lastest submission about my next game, Blackthorne. I was working on it, but suffered problems with heavy luck manipulation, and ended losing motivation. Probably I'll return after finish my next work:

As I said before, I was working on pacifist TAS at the same time as the any% TAS. Most of the improvements from any% were added.

So the pacifist run will be the next project ;)

!!__Special thanks__

__InfoManiac__, the author of this major new glitch discovery!

__Morrison__, for his great experience with this game working with me on the previous run ;)

__scrimpeh__, for discovering most of those shortcuts by testing that glitch, as well as discovering stair glitch.

__EZGames69__, for encoding this run.
