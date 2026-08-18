> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4535M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is the (unreleased) Genesis version of Prince of Persia 2: The Shadow and the Flame. In this sequel, evil Jaffar returns as your doppelganger to steal the princess from you and accuse you of being the impostor. You have 75 minutes (IGT) to fight your way back to the palace to defeat him and save the princess. In this TAS, we use a combination of newly discovered skips and bot-based exploration to find the fastest way to finish the game.
 
!! Game objectives

* Cart Used: Prince of Persia 2 - The Shadow and The Flame (Beta) SHA1: ba63dc1e521bee68b4121b626061ebb203ac63c6
* Patch: http://www.romhacking.net/hacks/3755/
* Emulator used: BizHawk 2.6.2 (x64) + Genplus-gx r874
* Routing Bot: Jaffar2 https://github.com/SergioMartin86/jaffar2 + BlastEm https://www.retrodev.com/blastem/
* The objective of the run is to complete the game as fast as possible (real time)
* We repeatedly take damage to skip screens or to go faster.
* Restarts are used whenever it saves time (as opposed to continuing without reset).

!! Comments

This is the genesis version of Prince of Persia 2 (1996) that has never been officially released, but instead only recently surfaced/leaked. A patch had to be applied to fix a game-breaking bug that prevents the Kid from jumping on the horse. More information: [Forum/Topics/22739].

The motivation for this project was to apply bot-based exploration to the DOS Prince of Persia 2, after the success with the first game ([Forum/Topics/22659]). However, since there is no open-source DOS version of PoP2, I could not connect my exploration bot directly to it. Instead, I used this game as surrogate since (a) it is very close in dynamics to the DOS version, and (b) I can connect my route generating bot (Jaffar) to an emulator (BlastEm, in this case). 

I ran the bot on parallel computers to find the best way to complete the community's established route. The number of states explored (re-record count) by the bot was: 29,387,141,175.

After finishing this TAS, we realized that there are indeed several differences with respect to the DOS version. Most notably, the wide-wall skip used in the DOS TAS is not doable in this version. Also, cutscenes are not skippable, bloating the TAS runtime with end-level music.


!! Stage by stage comments

Here we describe the notable skips/tricks used in each level:

! Level 1: Docks

We use the restart command as soon as the checkpoint is met for a faster fall recovery.

! Level 2: Beach

The bot found the fastest route which, incredibly, has the kid blatantly step on the trick tile (!)

! Level 3: Caves I

We use a walk-backwards-with-sword skip to teleport the potion room.

! Level 4: Caves II

We use a walk-backwards-with-sword skip to teleport a few screens after grabbing the potion.

! Level 5: Caves III

Here, the bot discovered a new route to obtain the potion where we climb using the fragile tiles. This route was previously thought as unfeasible. Unfortunately, since wide-wall clips are not possible in this version, we 

! Level 5: Caves III

Here, the bot discovered a new route to obtain the potion where we climb using the fragile tiles. This route was previously thought as unfeasible.

! Level 6: Ruins I

We use the medusa head to clip through a wall to skip a big chunk of the level. After that, the bot found a fast way to avoid the rest of the heads.

! Level 7: Ruins II

This is one of the most abused levels, where we use medusa heads repeatedly to clip through walls. The bot found the fastest way to do each of the clips. At the end of the level, a fast intra-wall clip is performed.

! Level 8: Ruins III

Here we used the bot to find the fastest way to skip all medusa heads. In the middle, we skip the big gates by using sword sheathing.

! Level 8: Ruins IV

Here the bot found the fastest way to get to the horse.

! Level 9: Temple I

Here the bot found the fastest way to get to the exit door. 

! Level 10: Temple II

Here the bot found the fastest way to clip through the thin wall and get the potion. Later on, it performs a back-walking teleport to skip the group birdmen fight. Then it finds the way to solve the rest of the level, using the thin-wall skip again on the exit door opening tile screen.

! Level 11: Temple III

Unfortunately, there are no big skips for this level, as opposed to DOS and SNES versions. However, the bot found the fastest ways to skip traps and birdmen. At the end of the level, it uses a thin-wall clip to save a few seconds.

! Level 13: Temple IV

Here the bot found the fastest way to get to obtain the flame and exit the level. 

! Level 14: Jaffar's Labyrinth

Here we use the flame conversion trick to enable flame-mode with fewer potions. In the end, we lure Jaffar to obtain a faster way to kill him.

!! Other comments

I wish to thank Challenger and GMP whose help made this TAS much better than it would have otherwise been. Also thanks to PoP2 runners and routers: martin_petrvalsky, Samabam, Creditor (and many others who contributed to the current route). My next step is to use the lessons learned from Jaffar2 to achieve a (hopefully) sub-14 minute TAS for the DOS version of the game.
