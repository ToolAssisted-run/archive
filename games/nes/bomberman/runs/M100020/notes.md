%%TOC%%

!! Introduction

Bomberman hardly needs an introduction. This classic was released 40 years ago and just now I'm the first person to submit a movie for it on this site. I used to play this as a kid, neven being able to make very far. Not only did I lack the skills, but also found it somewhat boring. TASing it, on the other hand, now THAT's entertaining.

The game consists of [https://strategywiki.org/wiki/Bomberman/Walkthrough|50 stages] of increasing difficulty. In each stage, there's a [https://strategywiki.org/wiki/Bomberman/Gameplay|powerup] that you can pickup. It is crucial to equip these as soon as possible, to arrive to the latest stages full power. The most important powerup "Flamepass", which allows you to survive your own explosions, appears first in level 30. The strategy changes as you advance further, starting with ambushing monsters with strategically placed bombs, to just wrecking havoc towards the end of the game. 

RNG is a key component here, deciding the layout of the levels and behavior of the monsters. You can do several things to manipulate RNG, like starting the game late (which I do to get the best possible stage01), killing the enemies, and manipulating enemies to trigger changes to RNG. There are also bonus stages where you cannot die, so you can only wait until the time runs out. Here I mainly decided to go for entertainment value, killing as many monsters as possible. However, at some points I tried different endings to affect RNG without a cost (other than entertainment).

This is the first time I use an AI agent to help me with the TASing process. It mainly helped me hook up the game to JaffarPlus (a usually very tedious process), find out relevant RAM addresses, figure out some key game logic, producing intermediate movies for me to analyze and launching Jaffar jobs while I was busy moving to a new apartment.

!! Software + Hardware

! Rom Information

* Name: Bomberman
* ROM: Bomberman (USA).nes
* SHA1: 12531701E633D2196C9A15F944B101A8205248E4
* MD5: 97DDB647898B01065F395EB64C3D131F

! Emulator

* EmuHawk 2.11.1 (Core: QuickerNES)

! Routing Bot

* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickerNES
* Platform: 
** 1 x AMD Epyc 9755 (128 cores, 256 threads) + 512Gb RAM
** Exploration Rate: 1.78 Mstates/s 

! AI Agent

* Claude Code (Opus 4.8)
* Skills:
** Game [https://github.com/SergioMartin86/jaffarPlus/blob/master/examples/nes/bomberman/MECHANICS.md|Mechanics]
** TAS [https://github.com/SergioMartin86/jaffarPlus/blob/master/examples/nes/bomberman/SOLVING.md|Solving]

! Relevant Documents

* Game Introduction: [https://strategywiki.org/wiki/Bomberman]
* Gameplay Mechanics: [https://strategywiki.org/wiki/Bomberman/Gameplay]
* Walkthrough: [https://strategywiki.org/wiki/Bomberman/Walkthrough]
* Small guide: [https://gamefaqs.gamespot.com/nes/563390-bomberman/faqs/14622]
* Incomplete RAM Map: [https://datacrystal.tcrf.net/wiki/Bomberman_(NES,_Famicom_Disk_System)/RAM_map]
* RNG Mechanism: [https://tasvideos.org/GameResources/NES/Bomberman]
