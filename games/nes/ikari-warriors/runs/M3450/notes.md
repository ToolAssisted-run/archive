> **Imported**
> This run was originally published at https://tasvideos.org/3450M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives

* Primary objective: speed
* Secondary objective: display of nonhuman skill, precision and risk

!! Game mechanics

This game is more or less WYSIWYG. I'll still list a few notable facts:
* The game runs at 15 fps. I'll be using the term "movement frame" to describe the 4 frames involved in each action.
* Because of the low fps, there is no lag in the game.
* By keeping A and/or B pressed after exiting the helicopter, you'll continue flying in a straight line and are in an invincible state. You'll stop flying if A and B are released, but are then unable to interact with the environment. This means it can't be used in areas 3 and 4, since you need to kill a boss at the end to proceed. This can be fixed by dying, which resets to the initial state, but it doesn't save time to do so.
* Information about upgrades etc can be found here: https://kb.speeddemosarchive.com/Ikari_Warriors/Game_Mechanics
* The first frame of diagonal movement is more efficient than the subsequent ones (except for the helicopter, for which all diagonal movements are the same). Whenever possible, I therefore move in a "diagonal, up, diagonal, up, diagonal, up" pattern to exploit this behavior.
* The "cooldown" time for the default grenades are shorter than with the B-upgrade. The default grenades make the stages more challenging and slightly slower, but this is easily paid off by the time saved on the bosses of area 3 and 4.


!! Comments

After having speedrun this game on console, I thought it would be a fitting game to try my first TAS on. While the game has a well deserved reputation of being unplayably hard, it was a fairly straight-forward TAS. My goal throughout was to not lose any time due to random soldiers, which was also achieved. All detours/diagonal walking seen in the run was because of the environment or because of fixed spawns.

!! Stage by stage comments

! Area 1

* Before the speed upgrade (SS) is collected, the tank is the fastest mode of movement. 
* The grenade-throwing enemies guarding the gates are to my knowledge impossible to pass when in the tank. Some time is therefore spent getting the necessary upgrades to eliminate them and also to actually take them out.
* The second half is very unexciting because of the flying glitch. Unfortunately, you have no control over the character when flying, so there is not much to do in terms of entertainment.
* Unless you move out a bit to the left (as shown in the movie), the jump to the exit doesn't work.

! Area 2

* All of the upgrades are lost if you didn't collect the heart in the previous area. The only heart in area 1 is found during the flying section, which means it wasn't possible to collect. It took almost half the stage before I was fully upgraded (the S on the bridge was the last upgrade). Once fully upgraded, I didn't have to worry about upgrades for the rest of the game.

! Area 3

* Half-way through, there is a helicopter again. With a speedrun mindset, there is barely enough time to reach a possible fuel drop before the initial fuel runs out. There is some luck manipulation involved with this drop. (see the thread here in the forum for more information)
* The helicopter is absolutely OP in this game. You're invulnerable to bullets and can cross water sections with no problems. 
* The helicopter's triple shot makes it possible to hit more enemies and reveal more hidden items, so I used that to try and extract some entertainment from this otherwise fairly uneventful section.
* The boss can only be damaged by grenades (5).

! Area 4

* The enemy placement and types made me take more and bigger detours than in the previous areas. With the limited arsenal of weapons and slow movement speed, there was unfortunately not many options to explore in some of the sections.
* The section leading up to the helicopter is extremely critical. The garbage sprites in the helicopter area are always spawned there, but their content depends on how you played from the barrel section and onwards. The fuel drop also needs to be in the right location. Because of the strict requirements, I had to sacrifice one movement frame here (possibly two).
* Once in the helicopter, it was again a fairly uneventful cruise until the end of the area.
* As for the area 3 boss, the boss is in this area is only vulnerable to grenades (10).

!! Possible improvements

With the exception of the lost movement frame to manipulate the fuel drop in area 4, I'm not aware of any other time losses (which obviously doesn't mean there aren't any). I'm still gonna list some more or less hypothetical ideas on how to improve both time and entertainment:
* Fixed spawns can be delayed by keeping the available object addresses full. If possible to control, this could be used to reduce diagonal movement.
* Some fixed spawns appear to always hit you and I sometimes had to waste a bit of diagonal movement to take them out. With a deeper understanding of the enemy behavior, this might be possible to improve upon.
* I have some regrets with how the helicopter section in area 1 turned out. In my first iteration of the area, I managed to fly over the whole water section in the helicopter before entering the flying state. When redoing the area, I was unable to get this to work (the jump to the exit got messed up). If this could be overcome, half a minute of the flying could be done in the helicopter instead, with the possibility to practice some target shooting.
* I've once or twice during console attempts encountered enemies that got stuck in a wall and started spinning around in a funny way. It would have been a cool gimmick to include, but with the knowledge I have about the game, it wasn't possible to manipulate.
* Similar to above, I've a few times encountered enemies that are perfectly synchronized with their movements, creating an entertaining effect. However, it would have required another level of understanding of the game to include.
* Again very rarely, the screen becomes all garbled after entering the helicopter in area 4. The game continues playing normally and can still be completed. The screen usually goes back to more or less normal after a while. Unfortunately, I don't know what triggers this. Plus, it's in an area that was already a pain to manipulate in an acceptable way.
* Looking back at the full movie, I wish I had thought a bit more about themes for certain sections. Kill all blue soldiers. Or kill everything. Only go for multiple kills on each shot. etc


!! Credits

Thanks to TaoTao for posting some vital memory addresses in the forum. This TAS would never have been possible without that information.
