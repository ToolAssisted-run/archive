> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/3353M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Completing 1-year member of TASVideos!

!!__Game Objectives__

* Emulator used: BizHawk 1.11.9 (Rounds 1-7) / Bizhawk Developer Build (Rounds 8-12 + FM Chip TAS)

* Takes damage to save time

* Heavy glitch abuse

* Heavy luck manipulation


This TAS is 1:46.24 (6373 frames) faster than Dadoc's published run, thanks for better optimization, better luck manipulation, a new trick, 
reducing health score on the end of each round, and a new final battle with use of fireballs.

!!__What? 1.1 version? Explain this.__

Well, according from [https://tcrf.net/Wonder_Boy_in_Monster_Land_(Sega_Master_System)|TCRF], the Master System version of Monster Land has a region switch that changes the game's title and language when played on a Japanese system. The same holds true for its Japanese counterpart, Monster World, when played on a western system, but instead of having the final English version of the game, it features an earlier version of the localization with a slightly different title (Super Wonder Boy: Monster Land).

The early English version (dubbed Version 1.0) differs from the final version (Version 1.1) by having a different script and being much closer to 
the Japanese version in terms of difficulty. Specifically, enemy bosses have more health in both the Japanese version and the early English version, 
than in the final English release.

 
 For the first time of SMS runs, this TAS includes both PSG sound and FM sound!


Since the submitted zip file can only have 1 movie (I TASed on PSG sound), I uploaded the FM TAS: [=userfiles/info/37212832628134119|here]. It's 8 frames slower because I avoided some desyncs.


!!__About the FM sound__

The FM Sound Unit is an add-on for the Sega Mark III used to enhance the sound output of certain Mark III games. 
It was sold in Japan from 1987 for ¥6,800.

The FM Sound Unit contains a YM2413 FM chip that acts on top of the built-in SN76489 PSG chip, adding nine extra mono sound channels.
When the redesigned Sega Master System hit the Japanese market, the FM Sound Unit was built-in to the console (though it is absent from international releases).






!!__Memory addresses of Dadoc's previous run:__

||Addresses|||                         Description                        |||                                                  Possible value                                                    ||
|    0097   | Tell which button are hit	                                   | 1 = U ; 2 = D ; 4 = L ; 5 = U+L ; 6 = D+L ; 8 = R ; 9 = U+R ; 10 = D+R ; 12 = L+R ; 14 = D+L+R ; 16 = 1 (sword) ;    |
|           |                                                              | 20 = L + 1 ; 24 = R + 1 ; 32 = 2 (jump) ; 36 = L + 2 ; 40 = R + 2 ; 48 = 1 + 2                                       |
|    0099   | Score value (tenth and hundred)	                           | 00 to 99                                                                                                             |
|    009A   | Score Value (thousand and ten thousand)	                   | 00 to 99                                                                                                             |
|    009B   | Score value (2 last numbers)	                           | 00 to 99                                                                                                             |
|    009E   | Timer before launching the demo (if you don't touch the pad) | Start From 80                                                                                                        |
|    009F   | Same as before	                                           | Goes from 1 to 0                                                                                                     |
|    00B9   | Gold amount (2 last digits, if your gold number is 1234 the  |                                                                                                                      |
|           | value is 34)	                                           | 0 to 99                                                                                                              |
|    00BA   | Gold amount (2 first digits, if your gold number is 1234 the |                                                                                                                      |
|           | value is 12)                                                 | 0 to 99                                                                                                              |
|    00BC   | That's what I call you total HP                              | Hexa value. At start you got 14, Each heart is cut in 4 pieces                                                       |
|    00BD   | Number of heart on the screen	                           | Start with 5, max is 10                                                                                              |
|    00F6   | Sword value                  	                           | 3 = No sword and sword level 1 ; 15 = sword level 2 ; 14 = sword level 3 (sword great) ;                             |
|           |                                                              | 52 = sword level 4 (excalibur) ; 63 = sword level 5 (sword of legend)                                                |
|    0188   | Your current magical weapon numbers (tornado, fireball etc)  | 0 to 10                                                                                                              |
|    0199   | Hourglass related	                                           | 0 to 3 start from 0, max is 3 when it reach 3 and 019B=0 and 19C=2, you lose 1 heart                                 |
|    019B   | Hourglass related	                                           | Start from 255 an drease till 0 when reach 0 the 019C decrease by 1                                                  |
|    019C   | Hourglass related	                                           | Start from 2 to 0 when reach 0, 0199 increase by 1                                                                   |
|    019F   | Boots equipment level	                                   | 0 to 4                                                                                                               |
|    01A0   | Armor equipment level	                                   | 0 to 5                                                                                                               |
|    01A1   | Shield equipment level	                                   | 0 to 4                                                                                                               |
|    01A3   | Gauntlet	                                                   | 0 to 1                                                                                                               |
|    01A4   | Number of hit left with gauntlet	                           | Start from 10 goes to 0 and decrease for each successfull hit with sword or thunder                                  |
|    01AB   | Indicates if you got the revival potion (if you lose all     |                                                                                                                      |
|           | your heart, it refill everything)	                           | 0 or 1                                                                                                               |
|    01AB   | Sword equipment level	                                   | 0 to 4                                                                                                               |
|    01C0   | Invulnerability	                                           | 0 or 1                                                                                                               |
|    01C1   | Invulnerability countdown	                                   | If you get hit, 01C0 increase to 1 and 01C1 start at BF. Then it decrease to 0 when it reach it, 01C0 goes back to 0 |




!!__New memory addresses found by me:__

||Addresses|||            Description           |||                                                  Possible value                                             ||
|    01A5   | Helmet	                         |0 to 1                                                                                                         
|    01A6   | Number of hit left with helmet     |Start from 5 goes to 0 and decrease for each take damage                                                       
|    01A7   | Wing Boots                         |0 to 1                                                                                                         
|    01A8   | Number of use left with wing boots |Start from 15 goes to 0 and decrease for each jump. (Although says 15 times, you actually have 14 times to use)|



!!__Table of improvements:__


|          ||Gameplay Stage|||Bosses|||Stage Clear Score Health|||Total|||Total time||
||Round 1 |      192       |   5    |           254            |  451  |    452     |
||Round 2 |      249       |  19/1  |           124            |  393  |    845     |
||Round 3 |       57       |  -4    |           124            |  177  |    1022    |
||Round 4 |      197       |   4    |            93            |  294  |    1316    |
||Round 5 |       64       |   31   |           121            |  216  |    1532    |
||Round 6 |      149       |   16   |           209            |  374  |    1906    |
||Round 7 |       54       | 141/4  |           320            |  411  |    2317    |
||Round 8 |      125       |   50   |           178            |  353  |    2670    |
||Round 9 |       71       | 136/26 |           141            |  374  |    3044    |
||Round 10|      233       |   28   |           110            |  371  |    3415    |
||Round 11|      245       |   43   |            66            |  354  |    3769    |
||Round 12|811 + 161 = 972 |  1633  |        No input          | 2605  |    6374    |


This result on Round 12 includes earlier end input of this TAS.



* Power-up improved by 1 frame.

!!__Stage-by-Stage Comments:__

!!__Round 1:__

__RNG Coin drop:__

Snakes - 1G until 6G.
                   
Hidden coins - 1G until 4G.
                   
Bag coin - 10G until 17G.

* A hidden coin on a second tree is skipped.

* All of remaining coins were better optimized to get more gold.

* Damage boost on snake.

* 5 frames saved on boss battle and 41 frames saved for better grabbing coins.

* Using L+R glitch, I dropped almost all of health, losing 21 frames but saving 254 frames on the score.


!!__Round 2:__

* After bought the boots, I skipped a enemy (also, the coin drop), and a bag.

* Avoided take damage twice.

* I saved 19 frames on a sub-boss.

* Another bag coin drop manipulation. The gold RNG changes for 10G until 21G.

* 1 frame saved on the boss and 35 frames saved for better grabbing coins.


!!__Round 3:__

* During of L+R glitch to skip some parts, I discovered a improvement: If you swing the sword while jump, you can save 1 frame for each jump.

* I saved 3 frames on the first hit, but I sacrified 7 frames to get a good position of coins. 34 frames saved on coins.


!!__Round 4:__

* Better optimization on every way, and a bigger manipulation to get 21 Gold on each bag collected.

* 4 frames saved on boss and 20 frames saved on coins.

* 5 frames fixed/improved next of door exit.


!!__Round 5:__

* More bag coin and better optimization, respectively.

* I saved 31 frames on sub-boss, thanks for a better (and direct) 2nd hit on this boss.


!!__Round 6:__

* More optimization and end of gold collection, since I finally get the Legendary Boots (The best boots of this game).

* 16 frames saved on the boss and 25 frames saved on coins.


!!__Round 7:__

* Better pattern optimization on these big rats enemies (But on FM TAS, the pattern is different).

* Improved 141 frames on sub-boss.

* Several frames is sacrified to get not only gauntlet, but also Helmet (Required to save time on Round 7 and Round 8 clear) and Fireball (Required to save time on 2 bosses: The sub-boss of Round 9, and the last boss of this game).

* 4 frames saved on the boss.

!!__Round 8:__

* Better optimization.

* I saved 50 frames on the boss.


!!__Round 9:__

* Optimized the first jump without use of a sword.

* 45 frames is sacrified to get more fireball.

* Using a fireball + taking damage and optimization, I saved 136 frames on the sub-boss and saved 26 frames on the boss thanks for a L+R glitch on the attack.


!!__Round 10:__

* A good amount of optimization on this Round and the first use of Wing Boots, that helped to save time, even on the boss, that I did direct hits. 28 frames saved and 47 frames saved on the bag coins.


!!__Round 11:__

* 29 frames saved skipping a Invulnerability Cape, and due of this, I saved a gauntlet!

* 85 frames saved for a earlier skip on the part before of the knights.

* 78 frames saved for a better avoiding knights and for not getting a gauntlet drop.

* 43 frames saved on the boss.

* And I improved the exit path.


!!__Round 12:__

* Better optimization.

* After the stairs, I get a different route to skip 2-3 rooms.

* On the one of last rooms, I got a Wing Boots to save time on the final boss.

* Thanks for L+R glitch (once again), I get on a top route, a shortcut to skip the rest of falling of the room.

* On the Last Boss, using the Fireballs + Wing Boots + Gauntlet + L+R Glitch, I saved 349 frames on Phase 1, and 1284 frames on Phase 2, totalizing 1633 frames saved.

 Input ends 161 frames earlier than published TAS because isn't necessary to press button to skip the last (and super big) text. Enjoy this.

!!__Special Thanks__

* Dadoc, for the published run, and for your memory addresses, that helped me to find some other useful addresses.

* And for the previous players that TASed this game.
