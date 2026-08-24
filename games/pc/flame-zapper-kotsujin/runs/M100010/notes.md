EDIT 20260823: Replaced movie file with correctly truncated end.  I cut off some frames of shooting accidentally.

Platform: PC98
*骨塵 Flame Zapper Kotsujin - PC-9801 (1996) is a homebrew vertical shooter known to be one of the best shooters on the system made by CO2 Pro.

*TAS uses 2.0 Final version with the md5 code of 32d5b2337aae15dbcd39126ce35a339a found in the Neo-Kobe pc98 set. Setup for the game is on Ubuntu-24.04 with libTAS 1.4.8.  I tried finding a floppy for the game, but that does not seem available anywhere so hard drive image is the way to go.    

*Frames per second to 1000000000 / 17723226. Also set Runtime -> Time tracking -> SDL_GetTicks(). Relevant bios files were from Epson PC-486MU which match the md5 noted here : [https://tasvideos.org/EmulatorResources/NekoProject2] in setup.

*Config file for PC98 setup should be placed in the created sdlnp21kai folder. Set the multiplier to 56 (clk_mult = 56). I set the Latency to 0 (Latencys = 0). Change the ROM location.  https://tasvideos.org/UserFiles/Info/639197621935519044
*When setting up PC98 I have a sound bug with the ALSA sound driver where it does not play audio normally.  However when encoding a movie through libTAS it DOES output audio when played with a video player (VLC/youtube works for me). One thing that the Neko Project emulator did was when it created that config file it had set "sounddrv = none".  However what the config needed was "sounddrv = SDL" then when encoding a movie file it got audio. This note might help others that have this strange issue.  Thanks Rxser!

File md5 codes. Used this site to generate codes. [https://emn178.github.io/online-tools/md5_checksum.html]
*SOUND.ROM - a77fc2bc7c696dd68dba18e02f89d386
*SNDBIOS.ROM - 42c271f8b720e796a484cc1165ff4914
*SCSIBIOS.ROM - e31ad9d8553ed6bd4a646fbbeb9bbc6f
*RHYTHM.DAT - b8f3a3112ea7474c33c502357a0844bd
*ITF.ROM - a13d96da03a28af8418d7f86ab951f1a
*IDEBIOS.ROM - 8b52de9032ea62153dc783151306595f
*FONT.ROM - 38d32748ae49d1815b0614970849fd40
*FONT.DAT - 51fb0b65c9df5a6fc1075c92077ab975
*BIOS.ROM - c70ee9df11794bd5cc8aadb3721b4a03
*BANK.ROM - 34aebe8a7ba8d164c1bb890b52e69118
*2608_TOP.WAV - 3721ace646ffd56439aebbb2154e9263
*2608_TOM.WAV - 0faed5664a2dd8b1b2308e8a50ac25ea
*2608_SD.WAV - 08124ccb84a9f65e2affc29581e690c9
*2608_RIM.WAV - 43d54b3e05c081fa280c9bace3af1043
*2608_HH.WAV - 73548a1391631ff54a1f7c838d67917e
*2608_BD.WAV - 9c6637930b1779abe00b8b63e4e41f50

*[https://i.ibb.co/Kj0b4pmm/PC98-sdlnp21kai.png]
*[https://i.ibb.co/3yZVdzbY/FZK1.png]
*[https://i.ibb.co/2092vkVt/FZK2.png]

*This TAS completes the game as fast as possible with with "no miss" meaning no deaths with intention of killing the last boss as fast as possible as well. "no miss" adds about 80 frames to the tas so an entertainment/speed tradeoff.

*At start of tas I set gameplay to the 60 fps instead of 30 fps inside the in game options. Makes it visually much more pleasing and smooth.
*Direct video link [module:youtube|v=9ceAN-qDw6U]
*More info : [https://www.hardcoregaming101.net/flame-zapper-kotsujin/]

*Movie link to file that plays through the credits and the player initial entry. [https://tasvideos.org/UserFiles/Info/639197619412388831]

!!Mechanics
*There are 5 stages in this vertical shooter. The ship has three possible powerups. The red Spread shot, the blue Homing, and the yellow Strong piercing shot. There is little actual difference in the strength of these weapons at point blank range. Point blank range such that the plane is actually overlapping the enemy makes the weapons do damage as effectively as possible.  The sub weapon "F" adds a short range bullet stream that comes out of the plane which is by far the strongest sub weapon.  This sub weapon is especially effective when overlapping the hitbox of the plane with an enemy where all the shots do damage to the enemy.  
*Getting enough medals will give the ship a shield. The Shield prevents one shot, but the invincibility frames last for a long time which is really useful on bosses. Getting enough medals to fill the bar on the side while still having the shield gives extra points.
*Bombs vary in strength. I use at least one every stage except the last one since it adds time if you get a No-Bomb bonus.
*The weapons are odd in which ones seem faster.  Unfortunately RAM Search/Watch does not work through libTAS atm.  If I could have viewed the health I could probably improve this more.

!!Additional Notes
In an effort to make the tas more entertaining I did try to kill as many enemies as I reasonably could. In the process think I figured out how the extra CO2 bonus point drops work.  Basically once you get the most points from the little medals that appear from enemies 10000 points, if you kill the next enemy that can drop a medal it will drop a CO2 bonus.  If you are quick enough to destroy another enemy that can drop a medal another CO2 medal will drop. This can be chained.

!!Improvements
Being able to use Ram Search/Watch would help immensely in determining how damage works.  Maybe in a future libTAS update that would be fixed.

!!Special Thanks
Special thanks to Rxser for a lot of help to setup this game. Without the help this tas would not have happened!
