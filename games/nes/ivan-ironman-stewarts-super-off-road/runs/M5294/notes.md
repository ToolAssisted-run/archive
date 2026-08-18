> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5294M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

Ivan "Ironman" Stewart's Super Off-Road for the Nintendo Entertainment System (boy, that's a mouthful) is a fun and quirky racing game where you and up to three of your friends drive through obstacle circuits with their pickup trucks. This movie completes all 99 races in the game in record time by heavily abusing luck, physics, and the author's patience. 

!! Strategy

! Luck Manipulation

The luck abuse part comes from getting 'infinite' turbos. Turbos are activated with the 'B' button and give the player instantaneous maximum velocity. The game initially gives you 25 and you should use them sparingly. However, during each race, the game would give bonus items with 'random' timing, position and type (extra turbos or money). These elements can be manipulated by precise inputs, which the bot easily found. The ability of constantly getting turbos refilled gives such an enormous advantage that the bot immediately starts running laps around the CPU cars.

! Early game

The game has a shop where you can buy turbos or upgrades to your truck. To buy them, you need money that you can get by (a) winning the race, or (b) picking up money bonuses during the race. In this movie I decided to go buy upgrades in this order:
* Tires: each upgrade improves the turning speed of the car. This is the most important upgrade since slow turning is the only source of slowdowns when you have infinite turbos.
* Shocks: they improve the maneuverability of the truck when you go over obstacles. I did not notice much of a change after buying these
* Acceleration and Top Speed: low priority upgrades.

! Mid Game

Until I fully upgraded the car, I also instructed the bot to balance the use and collection of turbos in such a way, that even though it can freely used them, it should try as much as possible to end up with 99 (maximum) of them at the end of each race. Other than that, there were no decisions to take other than beating each race as fast as possible and refilling turbos in the store. I scripted the bot to do both, time and time again until several days later I had arrived to race 99.

! Race 69

[https://i.ibb.co/SssYmTS/laser-eyes.png]

! Race 99

For this race I scripted the bot to do burn through the turbos as much as possible, without caring to pickup any bonus items. Additionally, I fixed the ending to have the earliest last input as possible. In this case, by stopping just before the end and letting an opponent 'bump' into me, which looks nice.


!! Software + Hardware

! Rom Information

Rom: Ivan Ironman Stewart's Super Off-Road (U) [!]
* SHA1: 57919B685B55EE3ED3AD98FB1D25626B98BE7D39
* MD5: DE38D18A05B39B4E1E15CBFEBF47235D

! Emulator

* EmuHawk 2.9.0 (Core: QuickNES)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickNES
* Platform: 'The Jaffanator' - AMD Ryzen Threadripper 3990X (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.00M States/s)
