*Killer Instinct for Arcade is a fighting game made by Rare in 1994. 
*Original video link [https://www.youtube.com/watch?v=gNwPu3uxt-0]
!!Setup
*libTAS 1.4.8 
*Ubuntu 24.04

*Main guide is from [https://tasvideos.org/EmulatorResources/MAME].

*Installed official MAME 0.264 from [https://launchpad.net/ubuntu/+source/mame/0.264+dfsg.1-1/+build/28117154]. It only needs the 0.264 mame and mame-data files. I downloaded those and put those in my home folder than installed with below commands.
*sudo apt install ./mame-data_0.264+dfsg.1-1_all.deb
*sudo apt install ./mame_0.264+dfsg.1-1_amd64.deb

*Note that the MAME executable is located in /usr/games/mame .

*Framerate is 1073741820 / 18204820 .  Used "kinst.zip -window -nokeepaspect -skip_gameinfo -nomaximize -nounevenstretch -nonvram_save -rompath /home/tas2404/mameroms/ -script /home/tas2404/mame-framerate.lua" to get the framerate numerator and denominator. That file can be downloaded from [https://tasvideos.org/UserFiles/Info/638183669502074999].

*Killer Instinct has an attached CHD file and for that MAME needs a .dif file to be created to run otherwise it will throw an error about a file not being found. To create that file I have a setup movie here [https://tasvideos.org/UserFiles/Info/639203213238722916].  This movie needs to be Run with disabling the setting "Prevent writing to disk" in the Settings -> Runtime.  This will setup any files mame needs inside of the folder ".mame" in the home directory.  The dif file gets its own directory inside .mame. I only pressed start to get it to run then closed it. I do not BELIEVE the framerate should matter for this process, but not sure.  The setup movie .ltm file should have the framerate in there anyway. Uploaded the .dif file here if necessary [https://tasvideos.org/UserFiles/Info/639203225275418439].  The md5 checksum should be ecb66465fa3ce4c34afcc17f4c25ce2d for the .dif file.
*[https://i.ibb.co/WNkQntHZ/killer-instinct-lib-TAS-dif-creation-setup-1.png]
*[https://i.ibb.co/Ng6NLpCk/killer-instinct-lib-TAS-dif-creation-setup-2.png]

*The above process also sets up a cfg folder inside the .mame folder with a kinst.cfg file inside. The kinst.cfg file can be compared here [https://tasvideos.org/UserFiles/Info/639203217330201068] is necessary.

*In .mame/cfg folder replace the "default.cfg" file with this one [https://tasvideos.org/UserFiles/Info/638183663654045700] which disables all UI as per the instructions on the MAME setup page.  This prevents any UI from possibly popping up although no relevant buttons should have been used in the tas.

*I placed the kinst.zip file inside of a mameroms folder in home.  The kinst.chd needs a folder of name "kinst" inside that mameroms folder with the kinst.chd inside.  MAME looks for any necessary chd files inside of a folder of the same name the game in the same folder as the original zipped romset file.

File md5 codes. Used this site to generate codes. [https://emn178.github.io/online-tools/md5_checksum.html]
*kinst.chd - a542547abdff0a28df440c3a4d1cfdde
*kinst.zip - 4bb48f2ea2091e45b6f14cf3689b7986

*Now to run the main movie:
*In libTAS the MAME game executable is located in /usr/games/mame. 
*The comand-line options I have to run the game are "kinst.zip -window -nokeepaspect -skip_gameinfo -nomaximize -nounevenstretch -nonvram_save -rompath /home/tas2404/mameroms/" . This should conform to the requirements here [https://tasvideos.org/EmulatorResources/MAME]. 
*The movie file is kinstCOMPLETE12031.ltm.  
*Framerate is 1073741820 / 18204820 . 
*ENABLE Prevent writing to disk in Settings -> Runtime .
*[https://i.ibb.co/mrXcK7FC/killer-instinct-lib-TAS-setup-2.png]
*[https://i.ibb.co/gMX4LKs0/killer-instinct-lib-TAS-setup-3.png]

*This TAS completes the game as fast as possible Orchid.  The dipswitch settings are left as the default settings. 

*There is a small audio bug that occurs if the player starts the game too fast so I delay the start by 144 frames.  The audio plays fine after that delay.

*libTAS does not support Ram Search or Ram Watch for MAME with 1.4.8.

*Move info : [https://strategywiki.org/wiki/Killer_Instinct/Moves#Orchid]
*Speedrun.com page [https://www.speedrun.com/ki1?h=Arcade&x=n2ywz7ko]

!!Mechanics
Here I am only going to list the mechanics I engage with for this tas.  There is a wealth of info online and in various youtube videos about this well-known game.  Orchid seems to be the fastest as far as I can tell.  The Fire Cat's in-built high dodge is extremely useful and really lets the player counter a lot of moves to get in more damage. 

Victory requires two wins. The first battle has the enemy with reduced health, and the second battle gives them a bit more.  I cannot give exact figures since libTAS does not support Ram Search or Ram Watch for MAME with 1.4.8.  

This tas was essentially an RNG grind to manipulate the enemies to cooperate.  Orchid can be very very fast, but the RNG needed is very unkind.  She can wipe out any enemy potentially in three small combos.  However to do that the enemies need to take a lot of damage. Damage is strange in this game and I wish I could have seen the ram values.  Damage varies depending on enemy actions, and it can vary slightly.  When enemies are blocking standing still they take a typical amount of damage, but if they are doing actions they can take more.  Exactly HOW much more seems to depend on some unclear variables.  Enemies take more damage if they are walking towards Orchid rather than standing still, if they attack Orchid using normals or specials.  There is also a strange variation with Orchid's somersault back kicks.  Delaying a couple frames for the two back kicks sometimes increases the damage, othertimes it does not. I suspect the enemy is trying to do something in that very small gap and the system takes that into account and adds additional damage.  Enemies very often block the first hit, then will try to counter with another.  Blocking from enemies for a small first hit from the Fire Cat move can be acceptable depending on how much damage they have been taking.  All the enemies go down on the final double kick somersault move just have get enough damage.

The first fight is faster to use Ichi rather than to have the additional wait for the Fire Cat. Holding back for the move is faster to be done while other moves are being used usually, and at the start the distance to the enemy is further.  Another Fire Cat and back somersault is enough to take them down. To manipulate the first fight sometimes a frame or two is added on the previous screen which shows all the fighters.

The second fight can be manipulated by doing different actions while getting ready for the second fight.  Orchid can jump near the enemy right before the "READY" message that locks movement, and start the second fight closer than before.  On later fights I often jump to the other side since the enemies would often start to jump over Orchid if they were too close to the wall.  To get the right damage on the second fight I first try to get the damage with the initial combo down near the middle of the "S" of "INSERT COIN".  This can be annoying to get since you have to hit them while they are trying to attack Orchid, and get extra damage from the back somersault which often does not happen. The second combo should have the enemy health be at critical if you get the max damage for each combo, although as long as it is near the third letter of their name it should be enough for the final combo to finish them off.

Eyedol's final stage can be either this castle like area or a on a bridge over lava.  The stage flips depending on the frame.  It is actually better to get the bridge since if you get the castle Eyedol just turtles initially waiting to block Orchid and counter.  I suspect it has something to do with the distance Orchid start from Eyedol.  On the bridge Orchid is further from Eyedol, but Eyedol opens up faster.  Eyedol is extremely defensive despite being an Ogre and needs additional wait times to be able to hit him.  Despite that Eyedol goes down faster since on the final hit I was able to get his damage into the Critical zone which opens him up to an Ultra Combo. Once the Ultra Combo move is activated it just destoys him.  It was a real RNG trial to get be able to get Eyedol's second phase down to the critical zone like this since everything had to do the max damage possible.

Overall the most annoying opponents were Eyedol for being so defensive, Jago for having most of his specials and attacks having built in dodges so the Fire Cat just misses, Glacius for also have strange evasive moves, and Riptor for being a clever girl (she is fast, and jumpy). 

*The exact moves used for every fight except the final round of Eyedol is this:
*Ichi (Down-Forward, Down, Down-Back Punch)
*Hard Punch
*Fire Cat (Mid Punch) (Hold Back for a short period then press Forward MP)
*(Press Back) Hard Kick (this is the somersault kick)
*Fire Cat (Mid Punch)
*(Press Back) Hard Kick 
*Quick Punch (to knockdown opponent)

For Eyedol's final stage the only difference is that instead of the final Fire Cat -> (Back) Hard Kick -> Quick Punch, instead I use (Hold Back for a short time) Then Forward Mid Punch for the Ultra Combo to activate on Eyedol. 

!!Possible Improvements
There are a lot of characters and a lot of potential combos, moves, and tricks which could be brought to bear for an RTA goal like this.  It would not surprise me at all if there are better setups found in the future. 

Being able to use Ram Search/Watch would help immensely in determining how damage works.  Maybe in a future libTAS update that would be fixed.

!!Special Thanks
Thanks a lot to feos and stephen for the help in getting this to work!
