*"Time Traveler or Hologram Time Traveler is a LaserDisc interactive movie arcade game designed by Dragon's Lair creator Rick Dyer, and released in 1991 by Sega" --Wikipedia.

*Original video link [https://www.youtube.com/watch?v=GBwmN3cC3h8]

*Setup for the game is on Ubuntu-24.04 with libTAS 1.4.8.  

*Main setup information for libTAS and MAME is here :[https://tasvideos.org/EmulatorResources/MAME]

*Main guide is from [https://tasvideos.org/EmulatorResources/MAME].

*Installed official MAME 0.264 from [https://launchpad.net/ubuntu/+source/mame/0.264+dfsg.1-1/+build/28117154]. It only needs the 0.264 mame and mame-data files. I downloaded those and put those in my home folder than installed with below commands.
*sudo apt install ./mame-data_0.264+dfsg.1-1_all.deb
*sudo apt install ./mame_0.264+dfsg.1-1_amd64.deb

*Note that the MAME executable is located in /usr/games/mame .

*In Settings -> Runtime the "Prevent writing to disk" should be true. This game has a chd, but it does not require any .dif file to be created.

*Frames per second to 1073741820 / 17913593.  Framerate acquired with the command "timetrv.zip -window -nokeepaspect -skip_gameinfo -nomaximize -nounevenstretch -nonvram_save -rompath /home/tas2404/mameroms/ -script /home/tas2404/mame-framerate.lua".  The mame-framerate.lua file is located here: [https://tasvideos.org/UserFiles/Info/638183669502074999] 

*This file default.cfg that disables the ui is in the home/[user]/.mame folder. [https://tasvideos.org/UserFiles/Info/638183663654045700]

File md5 codes. Used this site to generate codes. [https://emn178.github.io/online-tools/md5_checksum.html]
*timetrv.zip - 83a28d36ae23dba5b98b445fd289a59d
*timetrv.chd - abad04368d8c8194f128a68d4d3300d5

*[https://i.ibb.co/0ybWZ6jM/timetravelers-setup1.png]
*[https://i.ibb.co/zWyPDB08/timetravelers-setup2.png]

*I placed the timetrv.zip file inside of a mameroms folder in home. The timetrv.chd needs a folder of name "timetrv" inside that mameroms folder with the timetrv.chd inside. MAME looks for any necessary chd files inside of a folder of the same name the game in the same folder as the original zipped romset file. 

* The dipswitch settings are left as the default settings. 

*This TAS is run with the command "timetrv.zip -window -nokeepaspect -skip_gameinfo -nomaximize -nounevenstretch -nonvram_save -rompath /home/tas2404/mameroms/" . Replace the location of the roms with yours.

*Movie link to file that plays through the credits and the player initial entry. [https://tasvideos.org/UserFiles/Info/639205571822809663]

!!Mechanics
The game is like Dragon's Liar for Arcade where the player reacts to things being played on screen by the game. The game has Up, Down, Left, Right, an Action button, and a "Time Reversal Cube".  The Action button can be for things like attacking or activating objects.  The Time Reversal Cube sets back the game which might save a life (this is not used in the tas). 

There are several stages that all need to be played to reach the end. They can appear in random order.  Simply dying on a section will temporarily skip it, but when back on the stage constellation map the player will need to complete every section completely to progress. 

Typically the character needs to face a specific direction and press action to attack, but not always.  The game is quite inconsistent how it treats the Action button and directionals.

There is a very strange way they made enemies take more hits.  They make the video playback like someone hit a specific timestamp on a video. It looks bugged, but apparently that is how the developers decided to do it.  The player needs to mash that Action button like crazy after the first shot in order to defeat these strange  enemies.  Enemies that take a lot of hits are apparently somewhat random, but not sure how to manipulate that. I suspect it is baked in once you press start to begin the game.

This is not a very good game and it makes a couple big mistakes.  Or perhaps they were intentional to get more quarters?

The first bad mistake is there is often no visual indicator on screen of what to do.  Many times the character will die on a part and the player will just have to try things to see what works.  A good example of this is near the end with this jumping puzzle with six spots.  On the final jump there is NO visual indication of what kills the player.  The character is just in mid jump and dies.  However if you press UP during the jump he will survive.  There are several parts like that, but that was maybe the worst one considering it was also the LAST jump of that section.  

The second mistake is that the reaction system is kind of broken.  The reaction times can be absurd.  There are several parts where the reaction window is 20 frames.  The usual is more like 60 to 120 frames though.  Combined with the pretty strict reaction windows, the windows are shifted to mostly be EARLY before it is even obvious what to even react to.  Meaning a lot of times half the reaction window is before the threat is even on screen!  Additionally the inputs are sometimes not obvious.  The Action button you would think would be used to always use a weapon or activate things, but this is not always the case.  Several times even when facing  in the correct direction pressing the direction does an attack.


A good walkthrough for the game. Not perfect but useful.
*[https://gamefaqs.gamespot.com/arcade/584052-time-traveler/faqs/57198]

A full playthrough of the game.
*[https://www.youtube.com/watch?v=qG-gIuIyndE]

!!Additional Notes
The technology involved in the creation of this game is far more interesting than the game itself.  The laserdisc chd file is 11gbs which might be the largest chd of any arcade game I have seen.

Rerez youtube video about the arcade machine.
*[https://www.youtube.com/watch?v=YR0Q1k01XiQ]

Wikipedia Article
*[https://en.wikipedia.org/wiki/Time_Traveler_(video_game)]

The Owner's Installation and Operating Manual
*[https://segaretro.org/images/6/6a/TimeTraveler_Arcade_US_Manual.pdf]

Emu Paradise article about buying and maintaining a Time Traveler Arcade unit.  Lots of interesting information about this machine, and how it is a difficult to maintain machine that is more a conversation piece than a game to play. Of note was how to clean the mirror, where the mirror has a special reflective coating, and typical cleaners and wipes will permanently damage the unit. "You have to use laboratory-grade optical wipes or extremely soft microfiber with distilled water, and even then, you touch it as little as possible."
*[https://theemuparadise.com/sega-hologram-time-traveler-arcade]

!!Possible Improvements
* There are some stages that can appear in random order and it may contribute to randomness and potentially faster completion. I am not going to tas the game multiple times to find the best configuration.  I will leave that to others if they wish.
*This is also disc based so load times are sort of random too so there could be improvements there too.
