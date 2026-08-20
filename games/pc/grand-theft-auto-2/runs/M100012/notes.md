And remember, __RESPECT __is everything!

%%TOC%%

!! Introduction

Grand Theft Auto 2 is the sequel to 1997's hit 2D crime game. Originally, I planned to submit this game's movies after my 6 [https://www.youtube.com/watch?v=AgR2h983sAE&list=PLaMh6QdnUGTaAbZvWrBxYEsKxRSYpX-M-&pp=sAgC|completed GTA movies] but, since they depend on Bizhawk 2.11.1 to be released (due to a fix on CD emulation on the DOSBox core), I figured I might as well do it in the inverse order.

This movie was made by hand, with its route completely based on that of the current [https://www.speedrun.com/gta2/runs/zno1xq8y|RTA WR] by Molotok. Only a few differences towards the end, where I decided losing frames to skip dropping oil, later paying them back in pursuing the second car on the armored car missions.

!! Comparison Movie

Here's a comparison video between this run and the current [https://www.speedrun.com/gta2/runs/zno1xq8y|RTA WR] by Molotok

[module:youtube|v=k8LEitZHBW4]

!! Software + Hardware

! Emulator

* EmuHawk 2.11 (Core: DOSBox-X)

! ROM

All of the CD-ROM versions of the game (as findable in the Redump database) contain some kind of CD protection mechanism (e.g., SecuROM) that makes impossible to bypass on the current state of the DOSBox core. To overcome this issue, I used the free version of the game once provided by Rockstar themselves, which contains the latest patch and no CD protection. This version can still easily found out there.

* Source File: GTA2.exe
* SHA1: 8c10c0d20f15912a9450b6fbe028f31928b29893

Whose contents were loaded into a TAS_CD.iso with the windows version of the [EmulatorResources/PCem#UsingPreInstalledVersion|create iso] tool.

! Steps for reproduction

* 1) Make a .hdd image file with Windows 98 installed, according to the instructions in [Bizhawk/DOSBox]

* 2) Run the following installation movie, using the following .xml and .conf files.
** [UserFiles/Info/639085660290030513]
** [UserFiles/Info/639085660625858850]
** [UserFiles/Info/639085661027607059]

Replacing the paths inside the .xml file with wherever you placed the relevant files.
The .conf file configures DOSBox according to [https://tasvideos.org/Forum/Topics/27013|Dimon's recommendations] and sets the appropriate video card and CPU speed that works best with the game and triggers windows to install its drivers.

* 3) Run the submitted movie with the following .xml and .conf files
** [UserFiles/Info/639085661733339675]
** [UserFiles/Info/639085662073826244]

The .conf file also sets the amount of RAM to a minimum to reduce pressure on savestate memory usage and performance during TASing.

! Acknowledgements

* The amazing GTA speedrunning community for their continuous support and encouragement. In particular Tarakan3000, Molotok, Tezur0, WordOfWind, hipp0cat, and Stowka
* Dimon12321 for his research on DOSBox configurations (also MUGG) and help with sync
* feos for early goal consulting and help with sync
