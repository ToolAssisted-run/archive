> **Imported**
> This run was originally published at https://tasvideos.org/4307M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! H.E.R.O. : HELICOPTER EMERGENCY RESCUE OPERATION
There is trouble in the mines! Volcanic activity has trapped numerous miners, and it is your job to save them. As Roderick Hero, you need to make% your way through the dangerous mineshaft avoiding the dangerous creatures and lava, and find out where the miners are located before you run out of energy. To help on your mission, Roderick Hero has several useful types of equipment. A prop pack will allow you to hover and fly around the mineshaft and (hopefully) avoid the many dangers within. Your helmet features a short range microlaser beam which can be used to destroy the bats, spiders, snakes, and other creatures you'll encounter in the mines. From time to time, your path through the mine may be blocked by stone or lava walls. You begin each mission with six sticks of dynamite which can be used to destroy these obstacles (be careful you don't blow yourself up, though!). If you run out of dynamite, your laser beam can also be used to destroy the walls, though this will take longer and use up more energy. As the levels progress, the mine shaft will become longer and more maze-like, creatures will more frequently block the path, and lava walls and pools will appear which are dangerous to the touch.

!!TAS Objectives/Notes
*Beat the Game as quickly as possible
**There are 20 unique levels in the game. After that the level number changes to "PRO" and earlier levels simply repeat until the player loses all their lives.  
**The game manual states "You've saved the day when the score reaches 1,000,000."  But this is not a true endpoint for the game as play can continue beyond that point.
***At 1,000,000 points, the score display becomes all asterisks simply because the RAM addresses allocated for score are filled and they programmers had this display change instead of rolling back to 0's.
***It is possible to continue scoring after this score display is achieved, thus a Max-Score run is not an option for this game.
*TAS created over various BizHawk versions and completed on v2.5

!!Tools used 
*Emulator: Bizhawk 2.4.2 originally and upgraded to Bizhawk 2.5, once the build was recently released.
*Ram Watch: was used to find out room and level changes to determine room to room frame counts, and position
*Lua Scripting: Used to programmatically write out csv files for us to compare our progress among each other

!!The Challenge
H.E.R.O. was a game that I played a lot when I was a teenager. I was never able to see the higher levels, and got interested in seeing what I could do with it. 	After I did a few rounds of optimization, I reached out to DrD2k9 and challenged him on my inputs. So we made the agreement to add his name to my TAS, if he found 1 frame. His analysis of my port got him interested in doing the Colecovision port. Well, the agreement was now both ways and each of us found frames in both versions.
Getting close to finalizing these two ports, we decided to check the existing Atari 2600 version and was surprised that both of us were able to find even more cuts.
DrD2k9 is an extremely serious and dedicated TASer. Both of us have the same kind of mindset to find everything possible, where we both commited to a frame war with each other. Our collaboration brought everything we could think of to the table for experimentation. I want to thank him for his efforts on this HERO project, as he is one of the toughest gamers I've had the honor of working with.
		
!!Port Specific details (what makes this port unique)
*The Slowest among the 3 consoles (Colecovision - fastest, Atari 2600, C64 - slowest)
*Movement has moderate control for helicopter. Response for taking off is adequate enough to elevate to avoid bomb explosions.
*Avoiding bomb explosions, on the same Vertical position, occurs the frame you leave the ground when flying upward...same as Colecovision .
*Can lay a bomb while moving.
*Uses "Down" to lay bomb, "Up" to fly, and "Fire" to shoot laser (Same as Atari)
*No mechanic movement exploitation was discovered.
*Extra Bombs are laid at the early levels to prevent bonus tally times.

!!Suggested Screenshots
*Frame: 33947
