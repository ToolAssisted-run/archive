> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6071M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!Stele 
Stele for TIC-80 was inspired by Celeste and its mechanics.  There is a way shown here that quickly gets to the end by exiting the first screen up through the ceiling out of the main area of the stage, which allows quick movement to the final cake which ends the game.

The fastest way to move around dash, jump, then after a short period to dash back to the ground, and repeat that movement.  This is not used, but there is a glitch with the movement on the ground though where the author does not take into account if the player is pressing opposite directionals + Dash.  If that happens then the game resets the dash status and immediately allows another dash.  Unfortunately  dashing on the ground is quite slow.  Perhaps there is another bug that could make use of that for someone to check in the future.

A note is that the game information on its page lists this created and updated dates.
*added: 2018-03-16 15:04
*updated: 2018-03-16 15:13

!!Some Other Resources
*https://tic80.com/play?cart=483
*https://www.speedrun.com/stele/runs/yo7053jm

Thanks to Randomno for his link to his page about TIC-80 editing. This proved useful for looking at the x and y position, and showed that dash bug in the control() function.
*https://tasvideos.org/HomePages/Randomno/TIC-80Editing

In the TIC() function right at the end after everything else was drawn I inputted the following lines:
*print(px, 10, 10)
*print(py,10,20)

Additionally after modifying the code in the TIC80 editor, I ran it, then exited the game. Then in the TIC-80 command line I used "save stele-edit.tic".  This allowed me to save, and then just run the modified game in Bizhawk. The inputs made for the modified game also worked for the original game.
