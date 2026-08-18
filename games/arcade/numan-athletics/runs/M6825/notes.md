> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6825M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

*Numan Athletics is a 1993 competitive sports arcade game developed and released by Namco. It runs on the company's NA-2 hardware, and has eight unusual competitions to test the strength and might of four mutant athletes called "Numans". Up to four people can play simultaneously.  (Taken from Wikipedia)

*This tas has the goal of "maximum score".  Some competitions have multiple attempts, but it only takes the best attempt as the score.

*This TAS uses the default Dipswitch settings.

*This tas needs to be loaded with an extra file namcoc70.zip.  Run with the below xml file.
 <BizHawk-XMLGame System="Arcade" Name="numanath">
  <LoadAssets>
    <Asset FileName="./numanath.zip" />
    <Asset FileName="./namcoc70.zip" />
  </LoadAssets>
 </BizHawk-XMLGame>

*Numan Athletics final extended input to include "CHM" on the final initial input.  https://tasvideos.org/UserFiles/Info/638954566106474531

!!Gameplay
*This is an athletics competition game where pressing buttons with speed and correct timing is key to getting good records.  A competition can have one to three attempts where the game will take the best score.  For this tas faulting, aka failing, is the fastest method to continue to the next area.  There are some quirks to some of the games as well which are covered in their sections below. While this is a 4 player game, there appears to be no difference in characters.  

*Video of a TAS of Numan Athletics:  https://www.youtube.com/watch?v=lz6hQbj27Hw

!!Turbo Dash
The goal is run as fast as possible by alternating pressing button 1 and button 2.  There is some slight speed variation depending on how you delay some button presses, but I saw no change in the final time in frames or in game time.  

!!Interceptor
The numan will shoot out a super shot to hit the shells fired from a military carrier.  The carrier will input read to fire to where the character is not.  To get a high record score the inputs need to be slightly trick the enemy script to always fire to the next spot the character moves to instead of 2 spaces away.  The carriers will halt their firing for a short time if the character moves to a different spot too quickly.  Delaying shots after moving to "lock in" the shot needs to done too since the carrier will not fire if there is a shot incoming at it too soon.  

!!Missile Toss
The goal to run as fast as possible to the edge of the run area by alternating pressing button 1 and button 2 then to press and hold button 2 which changes the angle of the throw every frame, then at the right time to release button 2.  Running speed is gained by alternating pressing two buttons, button 1 and button 3.  However sometimes delaying pressing a button can result in a faster speed later on.  Furthermore, the faster you reach top speed the further the missile flies. Don't remember that in physics. 

!!Numan Sniper
Destroy monsters as quickly as possible with the score depending on how fast the monsters are destroyed.  Monsters appear randomly in three different possible positions. Press button 1 to shoot the monster on the left, button 2 for the middle, and button 3 for the right position.

!!Vs. Express
Here the character catches the speeding train then pushes it back. The further the distance the train is pushed the higher the score.  Press button 2 at the last possible frame before getting hit then alternate pressing button 1 and button 2.  

!!Tower Topper
The goal is to wall jump between two buildings to reach the top as fast as possible.  When jumping onto a wall the angle increases as the character is hanging on the wall, but wait too long and the character falls down.  The later the button 2 for jump is pressed the more extreme the jump angle and the higher the player goes.  There is some slight timing variation like a frame or two here and there on a couple jumps which I think is due to slowdown. The final jump is down the quickest since the angle does not need to be too extreme.  There is a slight frame delay before the round starts otherwise for some reason the final time was counting to be 7"86 instead of 7"85. 

!!Nonstop Rock Chop
The competition is to break rocks as fast as possible. Alternating mashing buttons 1 and 3 to charge the power bar, then press 2 to smash the rock.  Press the button 2 too early and the rock will not break. Sometimes there is slowdown if the other player destroys their rock.

!!Niagara Jumps
Very similar to Missile Toss competition, but with triple jumps. The goal to run as fast as possible to the edge of the run area by alternating pressing button 1 and button 2 then to perform three jumps.  The first jump should be right as the character is even with the giant exclamation board on the final red line to get the fastest speed. Otherwise the speed drops of dramatically. Then the final two jumps should be done on the frame as late as possible.  Delaying the final two jumps for too long results in a fault.  Running speed is gained by alternating pressing two buttons, button 1 and button 3.  However there is some delaying pressing buttons which result in a faster speeds earlier.  The faster you reach top speed the further the character jumps. 

Faulting is slightly faster by about 5 frames if you jump as soon as possible to land in the water.

!!Final Scores
|Competition|Score|
|Turbo Dash|9"93|
|Interceptor|59000 points|
|Missile Toss|572.0 meters|
|Numan Sniper|55000 points|
|Vs. Express|99m60|
|Tower Topper|7"85|
|Nonstop Rock Chop|43 points|
|Niagara Jumps|66m49|

!!Potential Record Improvements
*Getting better RNG for speed in Interceptor, Missile Toss, and Niagara Jumps?
