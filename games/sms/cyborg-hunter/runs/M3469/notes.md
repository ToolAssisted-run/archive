> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/3469M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

It is the year 2242. You are Paladin, the galaxy's toughest bounty hunter. Cyborgs are about to take complete control of the universe under the direction of Vipron, their evil leader. You are sent to the cyborg fortress to get rid of all the chief cyborgs in each of the seven areas.


This TAS is 3445 frames (56.71 seconds, without BIOS - 09:05.62) ahead of the published run, thanks of a new route and a deathwarp on Area C, as well as better gameplay and boss optimization.

But with BIOS, this TAS is 2960 frames (48.62 seconds - 09:13.61) ahead of the published run.


Cyborg Hunter is a horizontal scrolling, action video game released in 1988 on the Sega Master System. The game was originally developed as a title called Chōonsenshi Borgman (超音戦士ボーグマン), and was based on an animated TV series of the same name. For non-Japanese territories the game was marketed as Cyborg Hunter. The Japanese version of the game has a storyline more resemblant of the anime series.

!!__Game Objectives__

* Emulator used: BizHawk 1.13.0

* Uses death to save time

* Takes damage to save time

* BIOS used: Version 1.3

!!__Gameplay__

Cyborg Hunter. A Paladin, bounty hunter who is part man, part machine. The task at hand is to punch and kill cyborgs. Running around within' the halls of the enemy base, which is a maze of connected sectors and floors linked by elevators. The screen is divided into three sections: map, close-up first-person view, and side-view, where the action takes place.

By killing the "Master Cyborgs" in each "end" sector gives the player a key so you can unlock the next "corridor" and you also have to kill all the "Guardians" in the sector before you can leave it/advance to the next sector. Some levels even has usefull things/items or weapons that will help you on the way to the last sector. Things like bombs, shields, a jet pack, guns and other useful items.


!!__About the TAS__

I decided to TAS this game for 2 reasons: 

1 - This is a interessing game.

2 - The published TAS is one of oldest SMS/GG movies, and was done on Dega emulator. I actually decided to TAS this game 1.5 weeks before at the creation of the 'Dega Project' topic.

This TAS was played and is done using the USA/Europe version, since the published run used this version. Also, the japanese version of the game was originally released with FM sound.

It's possible to play the FM sound on the western release. But since the FM wasn't released outside Japan, I resynched the TAS to FM on the japanese version of the game (It's a cool sound): [userfiles/info/40095784595525036]

JP version is 21 seconds faster than US/Europe version, because of faster text. But due of version and sound differences, the pattern of the last 2 bosses (I tried to fix this), was ruined, forcing me to add more time on that bosses. Most of the run was resynched with TAStudio, but due of different pattern of the last boss, I did a new (but slower) way to defeat this boss, manually.

!!__RAM Watch__

||Addresses|||         Description        ||
|   00B5    |X Scroll Speed                |
|   00B2    |X Position (With Scrolling)   |
|   020C    |X Position (Without Scrolling)|
|   020A    |Y Position                    |
|   0211    |X Speed                       |
|   02OF    |Y Speed                       |
|   0216    |P.P (Psycho Power)            |
|   021B    |Energy Life                   |
|   00D2    |Boss Health                   |
|   021F    |Invicibility Time             |



!!__Table of Improvements__

|  Areas ||Gameplay|||  Bosses + ID card drop  |||Total area improvements|||Total||
||Area C |   1847   |       77 + 54 = 131       |           1978          |  1978 |
||Area E |   273    |       66 + 120 = 186      |           459           |  2437 |
||Area F |   298    |      58 + (-34) = 24      |           322           |  2769 |
||Area G |   340    |462 (Boss only. No ID card)|           802           |  3571 |


I also saved 37 frames before the title screen, thanks of a better input.

Total = 3608 frames ahead (gameplay only), but comparing with framecounter, the total is 3445 frames ahead. 

Also, there are different loading times between emulators (I didn't calculate). Dega 1.14 and 1.15 is less acurrate than 1.16 and BizHawk, respectively.

!!__Stage-by-Stage comments__

__Area C__

[http://i.imgur.com/q0gPUN6.png]


* I got a new route, to avoid much backtracking and also one of the enemies appear on a different location (see the map). 

* Sometimes I jump for no reason to manipulate the enemies, since they spawns at different positions.

* Better optimization.

* Instead to pause and change Psycho Punch to Normal Punch, I manipulated the patterns and optimized the boss defeating with Psycho Punch (altrough is a bit slower). It saves a pause and a backtracking after get the key (ID card)

* Takes damage almost all the time, to a deathwarp after defeats the last enemy (It saved about 500 frames, or more).

__Area E__

* Better optimization.

* Skipped one of the enemies to defeat later without wasting time. A good amount of time is saved.

* Boss is manipulated to defeat must next of the door while optimizing, avoiding backtracking after get the key (ID card).

__Area F__


* Due of emulation differences, the enemies pattern didn't the same. But despite this, I optimized all of them. Note that I waited during that enemies, because otherwise, they didn't spawn on the screen.

* Once again, manipulation and better optimization. Since I lost more energy than the published TAS, I lost 34 frames during the recovery, resulting 24 frames faster, because I originally saved 58 frames.

__Area G__

[http://i.imgur.com/12BG87M.png]


* The lasers acts as enemy. So, I manipulated to avoid them, saving 1 and 2 hits, on the first and the last room, respectively.

* Like the enemies of Area E, I take damage and attacks while moving forward.

* Instead to return after defeats the second enemy, I enter at the other elevator, because the last enemy, is almost next of the elevator.

* Manipulated the boss pattern to attacks without wasting much time with one of annoying patterns that any attack on him didn't have effect.

!!__Special thanks to__

* __Frenom__, for the published TAS.

!!__Other comments__

One more Dega movie bites dust. TASing this game was interessing, but the bosses, is very annoying to optimize, because of that patterns. Resynching to FM was much more difficulty than I did on Wonder Boy in Monster Land, but the result was cool, despite with time loss due of different patterns. I like the FM sound. :) 

Screenshot Suggestion

[http://i.imgur.com/VPUrQ5R.png]
