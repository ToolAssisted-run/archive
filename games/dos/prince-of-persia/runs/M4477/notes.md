> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4477M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

[[TAS]] Prince of Persia (DOS, 1990) any% by eien86 in 12:10.000

In this timeless classic, the tyrant Jaffar has seized power and has forced Sultan's daughter to marry him. You, the brave youth who is a prisoner in Jaffar's dungeons must rescue her within 60 minutes. Little does poor Jaffar know that he will be defeated in a fifth of the intended time.

* Total IGT: 12m 10s 000ms
* Total RT:  13m 07s 868ms

!! Game objectives

The objective of the game is to beat all 14 levels in less than 60 minutes (IGT). In the "any%" category, all tricks and glitches are allowed except for the use of cheats. This category requires that all levels are completed (without skipping the first three levels using the SHIFT+L cheat code). This run includes the copy protection level, present in the unaltered copies of the game.

This movie makes the best effort to reduce the real time to solution. However, it is the IGT the one used as the metric for speed, as it omits cutscenes and account for changes in framerate (the game operates in 12 FPS normally, but 10 FPS during combat). The IGT starts immediately on Level 1 and stops as soon as Jaffar dies in Level 13, as this is the time taken for the high-score board. Level 14 is only accounted for in RT, hence the difference between both times. 

A rough estimate IGT for the level skip (cheat) category can be obtained by subtracting the time for the first 3 levels. In this case, it results in 08:58.666ms. This represents a notable improvement compared to 12:20.58 of the previous level-skip TAS produced by David Newton ([https://www.youtube.com/watch?v=hfOocUkxJ08]).

In general, this run abides by the same rules as the RTA runs ([https://www.speedrun.com/pop1]). Only difference is that we use the Prince of Persia 1.0 version as emulation for newer versions does not handle sounds well. Here some guard reaction times and probabilities are changed, but overall the gameplay is the same. 

* Emulator used: JPC-RR r11.8 rc2
** Boot Floppy: FreeDOS 1-1-35w (Build 2035w)from ([https://drive.google.com/file/d/1QV3NFjpgVQIrn-Qcf0M70UPfgW-qOTtk/view?usp=sharing])
** HDD Image: Contains only an unaltered copy of Prince of Persia 1.0
** Audio: Sound Blaster

!! Comments

This movie is the result of decades of routing and discoveries, and has been developed with extensive help from the current speedrunner community. Notable contributors to the routing are the actual game top speedrunners, such as (in no particular order) crem, CapnClever, 7eraser7, Karlgamer, YOLO4GG, GoodSpectre, Higlak, Velcheran, Creditor, WinterThunder, uvq3tsa, Wolfadawn, KenshinTrek, and GMP. 

The route has improved a great deal during the last few years thanks to the use of savestate-enabled emulators (e.g., DosBox-X), allowing players to try different tricks without losing too much time. The development of this TAS is largely based on the existing route but has introduced two novel approaches:

! Frame by Frame Analysis / Memory Debugging

Thanks to the use of emulators (JPC-RR) and memory debuggers (Cheat Engine), the discovery new tricks (e.g., level 4, 7 and 8 skips -- [https://www.youtube.com/watch?v=gA8OhqKGfoI], [https://www.youtube.com/watch?v=EtFVLF5kuds], [https://www.youtube.com/watch?v=MlBbu612T1o]) that would have not been otherwise possible, as their discovery required a frame-perfect input and RNG-heavy setups. Fortunately, more human-friendly versions of these skips have been developed after their discovery. 

! Routing by Exhaustive Seach

The development of an open-source version of the game (SDLPop, [https://github.com/NagyD/SDLPoP/]) allowed the development of a high-performance parallel breadth-first search bot, called Jaffar ([https://github.com/SergioMartin86/jaffar]) that exhaustively explores all possible movements in each possible frame. The search is made possible by constraining the exploration space to that of a pre-determined route, requiring a few trillion states per level. As a result, the bot found the most efficient way to traverse the community-established route. We've applied Jaffar repeatedly on a supercomputer to solve for every level. Following strict definitions, the re-Record count is: 817,608,423,040


!! Stage by stage comments

This run is 100% reproducible with the sequence of steps shown below (. = nothing, S = Shift, U = Up Arrow, D = Down Arrow, R = Right Arrow, L = Left Arrow), and the following initial RNG state: 0x4B43826D.

!! Level 1

Re-record count: 16614726750

Frame Count: 243

Sequence: S S S . . . . CA S S . . . . . . . . . RD . . . . RD . . . . . . . . . . . . . . . RU . . . . . . . . . . . . . . . . . RD . . . . RD . . . . RD . . . . D RD . . . . . S . . . . . S . . . . . . . . . . . . . . R . . . . . . R . U . . . . . . . . . . . R . . . RU . . . . . . . . . . R . . . . . . R . . . R . . . . . . . . . L . . . . . U . . . . . . . . . . . . . . . . . . . . R . . . . . SR . . . . . . . . . . . . R . . . . . . R . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .
 
The route for this level has been proven to be optimal by the bot on sheer brute force. The strat includes bunny hopping at the beginning for a quick fall and then skip the guard via a timed jump.

!! Level 15 (Copy Protection Level): 

Re-record count: 4989675

Frame Count: 107

Sequence: . . . R . . . . . . RU . . . . . . . . . . . RD . . S . . . . . . . . . . . . . . . . . . . . . . . . . . . . RU . . . . . . . . . . . . . S . . . D D . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

This level appears in the original copy of the game, and is meant as a copy-protection mechanism. As can be seen in this TAS, it does not do quite a good job since the solution is determined by RNG at the start of the game. Only 14 different possibilities exist, so that it would take a few attempts at drinking the first potion to get past it. In this TAS, I was very lucky and got it in the very first attempt, lol!

!! Level 2:

Re-record count: 58143670541

Frame Count: 937

Sequence: . . . L . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . L . . . L . . R . . . . . . . . . . . D . . . . . L . . . . . . L . . . L . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L . . . L . . . L . . . L . . . L . U . . . . . . . . . . . L . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L U . . . . . . . . . . . . . . . . . . . . . . L . U . . . L . . L . . . . L . . . . . . L . . D . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L . . . . . . . . . . . L . . . . . . L . U . . . . . . . . . . . L . . . LU . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . L . . . L . . . D . . . . . L . . . L . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L U . . . . . . . . . . . . . S . . . . . . . . . . . . . . . . . . . L . . L . . L . . L . . L . . . L . . D . . . . . L . . . L . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . L U . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L . U . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . L . . . D . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . SL . . . . . . . . . . . R . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . L . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . R . . . L . . . . . . . . . . . . . R . . . . . . . . . . . . . U . . . . . . . . . . . R U . . . . . . . . . . . R . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

A long level. No changes to the route here compared to RTA, but a lot of RNG optimization by the bot to skip all guards faster.

!! Level 3:

Re-record count: 70482372534

Frame Count: 1100

Sequence: . . . R . . . . . . R U . . . . . . . . . . . . . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . R RU . . . . . . . . . . . . . . . . . . R . . . . . . . . . . . . R . . . . . . . . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . R . . . . . . . . . . . . . U . . . . . . . . . . . R . . . RD . . . . . . . . . . . . . RU . . . . . . . . . . . . . . . . . . RU . . . . . . . . . . . . . . . . . . L . . . . . SL . . . . . . . . LU . . . . . . . . . . . . . . . . . . LU . . . . . . . . . . . . . . . . . . L . . . . . . LU . . . . . . . . . . . L . . . L . . . L . . . L U . . . . . . . . . . . L . . . L U . . . . . . . . . . . L . . . L . . . LU . . . . . . . . . . . L U . . . . . . . . . . . . . S . S S S S S S S S S S U . . . . . . . . . . . . . . . . . CA . . . L . . . . . . L . . . L . . . L U . . . . . . . . . . . LU . . . . . . . . . . . . . S . . . . . . . . . . . . . . U . . . . . . . . . . . . . . S S U . . . . . . . . . . . . . . . . . . L . . . . . . L U . . . . . . . . . . . LU . . . . . . . . . . . R . . . S . . . . . . . . . R . . . R . . . . L . . . . . . . . . . . . . . . . . . . . LD . . . . LD . . . . . . . . . . LD . . . . . . R . . . R . . . . . . R U . . . . . . . . . . . R L . . . . . . . . . . . . . . . L . . U . . . . . . . . . . . . . . . . . R . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . L . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . R . . . . . R . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . . R . . . R . . . R . . . R U . . . . . . . . . . . R U . . . . . . . . . . . . . . . . . . . . R . . . . . R . . R S . . . . . . S . . . . . . . . . . . . . . . . . . . . L . . . . . . L U . . . . . . . . . . . L R . . . . . S . . . . . . . . . . . . . . L . . . . . . LU . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

The bot-optimized movement here played a big role in shaving those last few frames. Movement, especially while ascending/descending the way to the exit door open tile has been highly optimized. An RNG-induced hit by the skeleton saves a few backward steps with the sword.

!! Level 4:

Re-record count: 85190025215

Frame Count: 615

Sequence: . . . R . . . . . . RU . . . . . . . . L . . . . . R . . . R . . . L . . . . . . L . . . L . . . D . . . . . . . . . . . . . R . . . R . . . . . . R U . . . . . . . . . . . . . . D . . . . . R . . . R . . . . . . R . . . R . . . R U . . . . . . . . . . . R U . . . . . . . . . . . R U . . . . . . . . . . . R . . . R U . . . . . . . . . . . R . . . R . . . R . . . R . . . R U . . . . . . . . . . . . . . R . . R . . R . . R . . R . . R . . R . . R . . U . . . L . . L . . . . . R . . . D . . . . S . . . . D . . . . . R . . . . . . L . . L . . L . . L . . L . . L . . L . . L . . L . . L . . L S . . . . S . . . . . . . . . . . . . . . . . . . . . . . . . R . . . . . . R U . . . . . . . . . . . R . . . R . U . . . . . . . . . . . R . . . R . . . RU . . . . . . . . . . . . . . D . . . . . S . . . . R . . . D . . . . D . . . . . R . . . R . . . . . . R . . . R U . . . . . . . . . . . R . . . . . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . . . . . . . . . . . . . . . . . . L . . . . . . L U . . . . . . . . . . . L U . . . . . . . . . . . L . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

This is one the most abused levels in the run. First, we trigger the guard into opening the door for us, skipping half of the level. Then we manipulate the next guard into helping us open the exit door faster. This includes double-moonwalking him and then teleporting him into the mirror room, where he will vanish from existence when the shadow appears.

!! Level 5: 

Re-record count: 64369883833

Frame Count: 492

Sequence: . . . L . . . . . . L R . . . . . . . . . . . . . . . R . . . R . . . R . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . L . . . . S . . . . . . . L . . . L . . . . . . L . . . L . . . L . . U . . . . . . . . . . . L . . . . . . . . . R . . . . . . . . . . . . . . U . . L . . L . . L . . L . . L . . . . L . . L . . . . U . . . L . . L . . L . . L . . L . . D . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L . U . . . . . . . . . . . L . . . L . . . L . . . LU . . . . . . . . . . . . . . D . . . . . L . . . L . . . . . . L U . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . L U . . . . . . . . . . . . . . L . . . . . . L . . . . . L . . L . . L . . L . . L . . L . . L . . L . . L . . L . . L . . . D . . . . . L . . . L . . . . . . LU . . . . . . . . . . . L U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

Here the door skip is employed to skip a big part of the level. This is performed by luring the guard to the left and then clipping through the door while on-guard. The rest of the level includes the normal route, optimized via the bot. At the end, we use the guard to help us glitch-activate the exit door open trigger prematurely, which is why it is already open when we enter the last room. This strat does not save any time but provides entertainment value.

!! Level 6:

Re-record count: 32973487819

Frame Count: 216

Sequence: . . . R . . . . L . . . . . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . L . . . L . . . L . . . . . . . . . SL . . LU . . . . . . . . . . . . . . . . . . L . . . . . . L U . . . . . . . . . . . L . . . L . . . LU . . . . . . . . . . . . . . D . . . . . L . . . L . . . . D . . . . . . . . . . . . . . L . . . . . . LU . . . . . . . . . . . L U . . . . . . . . . . . L . . . R . . . . . . . . .

Here we used the normal route where we perform a guard-jump and run fast into the pit.

!! Level 7:

Re-record count: 75950527075

Frame Count: 497

Sequence: . . . . . . . S . S S S S S S S S S S U . . . . . . . . . . . . . . . . . L . . . R . . . . . . . . . . . . . U . . . . . . . . . . . R . U . . . . . . . . . . . R . . U . . . . . . . . . . . . . . L . . . . . . . . R . . L . . L . . . D . . . . . . S . . . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . R . . . R . . D . . . . . L . . . . . . . . . . . . . S . . . L . . . . . R . . . . . . . . . . . . . U . . . . . . . . . . . R . . . . . . . . . . . . . . . . . . . D . . . . L . . . L . . . . . . L U . . . . . . . . . . . L U . . . . . . . . . . . L D . . S . . . . . . . . . . . . . . . . . . . . . . . . . . . . LU . . . . . . . . . . . . . . . S S . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . LD . . . . . R . . . R . . . . . . RU . . . . . . . . . . . . . . . . . L . . . L . . . . . . L . . . L . . . . . . . . . R . . . . . L . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

Perhaps the most broken of all levels, we employed the newly discovered level 7 skip which contains a whole array of glitches all working in unison. First, we 'moonwalk' the guard through the chomper, then we make him fall 2 stories without dying by exiting and reentering the room. Then we use the guard to perform a 'Yolo skip' through the door. This route was exhaustively optimized by the bot.

!! Level 8:

Re-record count: 115104481905

Frame Count: 755

Sequence: . . . L . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . LU . . . . . . . . . . . R . . . . . . . . . . . . . . . . . . . . . . . . . . R . . . . . . R . . . R . . . . . . . . . SR . . . . . . . . L . . . . . . . . . . L . . L . . U . S . . S . . . . . . . D . . . . . R . . . . . . RU . . . . . . . . . . . . . . . . . RD . . . . RD . . . . . . . . . . . . . . . R . . . . . . R U . . . . . . . . . . . R . . . R . . . . . L . . . . . . . R . . . D . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . S . . . . . . . . . R . . . D . . . . R . . . . . D . . . . . . S . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . L . . . L . . . . . . L . . . LU . . . . . . . . . . . L . . . L . . . L . . . . . . . . . R . . . R . . . . . . R . . . R . U . . . . . . . . . . . R U . . . . . . . . . . . R . . . . . . . . . L . . . . . . . L . . . . . D . . . . . . . . . . . . . . R . . . . . R RU . . . . . . . . . . . . . . . . . . . L . . . . . . . . . . . . . . . . . . . . . . . R . . . . . . . SR . . . . . . . . . . . . L . . . . . . R . . . . . . . . . . R . . L . . . . . D . . D . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . R . . . R . . . L . . . . . . . . . . . . . . . . S . . . . . . . . . . . . . . . . . . . . L . . . . . . L U . . . . . . . . . . . L . . U . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

Another spectacularly broken level. We lure the guard towards the 'useless' bad potion room and use him to make us clip through the wall and the floor towards the end of the level. This marks the return of the mouse who comes to save the day.

!! Level 9:

Re-record count: 101579917964

Frame Count: 1362

Sequence: . . . L . . . . . . L . . . L . U . . . . . . . . . . . L U . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . R RU . . . . . . . . . . . . . . . . . . R . . . . . . RU . . . . . . . . . . . R . . . R U . . . . . . . . . . . R . . . R . . . R . U . . . . . . . . . . . R . . . R . . L . . . . . . . . . . . D . . . . . R . . . . . . RU . . . . . . . . . . . . . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . . . . . . . R . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . . R . . . R U . . . . . . . . . . . . . . . . . . . . . . R S . . . . R . . R . . D . . . . . R . . . R . . . . . . RU . . . . . . . . . . . . L . . . L LU . . . . . . . . . . . . . S . . . . . . . L . . . . . . L . U . . . . . . . . . . . L . . . L U . . . . . . . . . . . L . . . LU . . . . . . . . . . . L U . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . R RU . . . . . . . . . . . . . . . . . . L . . . . . SL . . . . . . . . LU . . . . . . . . . . . . . . . . . . L . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . L . . . L . . R . . . . . . . . . . . D . . . . . L . . . . . . L U . . . . . . . . . . . L U . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L . . . L . . . L . . . L . U . . . . . . . . . . . . . S . . . . . . . . . LD . . . . LD . . . . LD . . . . . . . . . . . . . . . L . . . . . . L . U . . . . . . . . . . . . . . . . . LD . . . . . . . . . . . . . . . . . . . . . R . . . . . U R . . . . . . . . . . . . . S . . . . . . . S . . . . . . . R . . . . . . R L . . . . . . . . . . . . . . . L . . U . . . . . . . . . . . . . . . . . R . . . R . . . . . . R . . . R . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . . RU . . . . . . . . . . . R . . . R . . U . . . . . . . . . . . R . . . R . . U . . . . . . . . . . . R . U . . . . . . . . . . . . . . R . . R . . R . . U . . . . R . . R . . . . . . . . . . . . . . . R . . . R . . . . . . R . . . . . . S . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

Definitely the longest and hardest to crack level. Here, the only skip found was the damage clip through the last door that allows us to skip making the loose tile fall, saving a few seconds. Other than that, it is still ripe for skips. Here the movements were highly optimized by the bot.

!! Level 10:

Re-record count: 58837867500

Frame Count: 502

Sequence: . . . L . . . . . . L . . . L . . . L . . . R . . . . . . . . . R . . . R . . . . . . R . . . R . . . . . . . . . . . . . . . . R . . . . . . . . . . . . R . . . . . . RU . . . . . . . . . . . R U . . . . . . . . . . . . . . D . . . . . R . . . R . . . . . . R . . . R U . . . . . . . . . . . R L . . . . . . . . . . . . . U . . . . . . . . . . . . . S . . . . . . . . . . . . . . . . . . . . L . . . . . . L . . . L . . . . . . . . . . . L . . . . . . L U . . . . . . . . . . . L . . . L U . . . . . . . . . . . . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . LU . . . . . . . . . . . L . . . . . . . . . . . . . . L . . L . . . . . R . U . . . L . . . D . . . . S . . . . L . . L . . L . . L . . . . . . D . . . . . L . . . . . R . . . . . D . . . . . L . . . L . . . . . . L U . . . . . . . . . . . L . . . L . . . L . . . . . . . . . . . . . . . . R . . . . . . R . . R . . . . . D . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .


Here we make use of a few tricks, including 'guard jump', 'overflow teleport', 'yolo skip', 'fall damage cancel', and RNG manip. It would be very hard to improve this level any further.

!! Level 11:

Re-record count: 112200546782

Frame Count: 828

Sequence: . . . R . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . . R U . . . . . . . . . . . . . S . S S S S S S S S S S U . . . . . . . . . . . . . . . . . R . . . . . . R . . . R . . . R . . . . . . . . . U . . . . . . . . . . . . . . . . . . . R . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . . R U . . . . . . . . . . . R U . . . . . . . . . . . R . . . R . . . . . . . . . R . . . . . . . . . . . . . . . . . . L . . . L . . . . . . L U . . . . . . . . . . . L R . . . . . R . . . R . . . . . . R . U . . . . . . . . . . . R U . . . . . . . . . . . R . . . R . . . R . . . RU . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . SR . . . . . . . . . . . R . . . . . . R . . U . . . . . . . . . . . . . . . . . D . . . . . R . . . . . . RU . . . . . . . . . . . . . S . . . D D D D D D RD . . . . S . . . . . . . R . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . . R U . . . . . . . . . . . R . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . R . . R . . R . . . R . . R . . R . . R . . R . . R . . R . . S . . . . . . . R . . R . . R . . R . . R . . R . . . . R . . R . . R . . R . . R . . R . . . . . . . . . R S . . . S . S S S S S S S S S S U . . . . . . . . . . . . . . . . . . . . . . L . . . S . . . . . . . D . . . . . L . . . L . . . . . . LU . . . . . . . . . . . L . U . . . . . . . . . . . . . S . . . . . . . . . . . . . . L . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

This level remains skipless, mainly because of it's layout (all horizontal) it is still hard to crack. However, all moments were optimized by the bot, shaving many frames in the way. A new alternative ending was found in which the guard opens the exit door for us. This new strat does not save any time but provides entertainment value.

!! Level 12:

Re-record count: 25996883109

Frame Count: 897

Sequence: . . . R . . . . . . RU . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . . R . . . . . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L . . . . . . . . . L . . . . . . L . . . L . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . R . . . . . . . . . . . . . U . . . . . . . . . . . R . . . R . . . R U . . . . . . . . . . . R . . . R . . . . . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . . . U . . . . . . . . . . . . . . . . . . L . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L . . . L U . . . . . . . . . . . L . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . R . . . . . . . . . . . . . L . . . . . . . . . . . . . U . . . . . . . . . . . . . S . S S S S S S S S S S U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . L . . . . . . L . . . L . . . L . . . L . . . L . . D . . S . . . . . . . . . . . . . . . . . . . . . . L . . . . . . L . . . . . . . . . . . . . R . . . . . . D . RD . . . . D . . . . . . . . . . . SL . . . . . L . . . . . . LU . . . . . . . . . . . L . . U . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . . . S . . . LD . . . .

A climbing level, here we use the 'overflow teleport' trick to skip to the shadow screen. Here, we grab the sword and immediately merge with the shadow to exit the level.

!! Level 13:

Re-record count: 102388890

Frame Count: 384

Sequence: L U . . . . . . . . . . . L U . . . . . . . . . . . LU . . . . . . . . . . . L U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . R . . . R RU . . . . . . . . . . . . . . . . . . D . . RD . . . . RD . . . . . . . . . . . . . . . L . . . L . . . . R . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . S . S . . . . . . . . . . . . . . . . . . . . . . . . L . . . L . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . . . . . . . . . . . . . . . . . . U . . . . . . . . . . . . . . . . . . . . . . .

Here we used the bot to manipulate RNG to guarantee a fast Jaffar kill. As soon as Jaffar dies, the IGT clock stops.

!! Level 14: 

Re-record count: 56653448

Frame Count: 136

Sequence: . . . . . R . . . R . . . . . . R . . . R . . . R L . . . . . . . . . . . . . U . . . . . . . . . . . L U . . . . . . . . . . . LU . . . . . . . . . . . LU . . . . . . . . . . . L U . . . . . . . . . . . L U . . . . . . . . . . . L U . . . . . . . . . . . L U . . . . . . . . .

This level only requires running a few screens, and IGT does not count anymore.

!! Other comments

This TAS is 27 seconds faster than the current RTA WR, and 9 seconds faster than the sum of human best segments. This speaks to the incredible skills of the RTA runners, who have incorporated most of these seemingly TAS-only tricks into their runs succesfully. 

! Emulation Issues:

* Sound Blaster emulation causes some stuttering in this emulator and game version when multiple sounds (e.g., doors) are playing. Nevertheless, this is the best setup working we've found so far. The only other option is using PC Speaker emulation which, besides sounding horrible and ruining the entertainment factor, it affects the way RNG operates and thus also the gameplay itself.
