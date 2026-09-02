> **Imported**
> This run was originally published at https://tasvideos.org/4584M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!VS Pinball

!!Game Description
Um...it's pinball.

!!Why VS Pinball? 
This is a follow-up to [7263S|the submission of NES Pinball].  In the discussion on that submission, I noted that using the VS ROM, I couldn't beat that submission using the basic DIP switch settings for the VS ROM.

£e Nécroyeur informed that the default DIP switch settings were for __Slow__ ball movement speed and suggested I revisit the VS version.  After changing the DIP switch settings to allow for __Fast__ ball speed, I was able to beat the time of the previous submission.  And here it is.

!!Game Endpoint
The NES game's manual states that the game is 'winnable' by rescuing the maiden.%%%
[https://i.ibb.co/9W4vCNB/Pinball.png]%%%
For me, if a game's stated win condition is met, the game is completed (even when play can continue thereafter).  Thus, saving the maiden is all that is necessary to complete this game.

!!BizHawk DIP Switch Settings
*__Switches 1-3__ are all __OFF__ to allow Free-Play
**According to [http://www.arcaderestoration.com/gamedips/10203/All/Vs.+Pinball.aspx|this site], technically these three swtiches should be ON to yield free-play.
**Setting the machine to __Free-Play__ avoids having to credit the game with a 'coin' input and thus saves time.  
*__Switch 4__ is for side drain walls and is left __OFF__ as it has no impact on the run.
*__Switch 5__ is for the score necessary to earn a bonus ball and is also left __OFF__ due to no impact on the run.
*__Switches 6 & 7__ are for number of balls per credit; default is 3 balls and these are left __OFF__ due to no impact on the run.
*__Switch 8__ is for ball speed and is set to __ON__ to play the game with fast ball speed.

!!VS ROM Emulation
Though the Nintendo VS ROMS were technically utilized in Arcade cabinets, BizHawk emulates them using NES emulation with the additional 'VS Settings' (DIP Swithces) enabled under the 'NES' menu in BizHawk.%%%

!!TASing Process
*This run uses the Player 2 Start button (which is available immediately because of the Free-Play setting), yielding a 2-player game.  
**It is possible to only have a 1 player game by switching the controller ports in the controller settings (or having both controllers connected).  For whatever reason, starting the game with Player 1's select button adds various frames compared to using Player 2's button. Thus the run ends up being a couple frames longer with otherwise identical inputs after re-syncing.
***These extra frames are present when starting with P1 regardless of wheter only P1's controller or both controllers are connected.  Similarly, starting with P2 yields the faster run with just P2 connected or both controllers connected.
**Even though P2 start button is used, the game takes that player as Player 1.  This is likely due to the nature/shape of the Arcade Cabinets themselves.
***For those not familiar, there were different styles of VS cabinets.
****In the Red-Tent style cabinets, players could sit on either side of the cabinets and the video output would be shared as necessary to either side depending on the game.  If I remember correctly, it was even possible to play solo games on either side as well.
****[https://i.ibb.co/26vDb8D/TentVS.jpg]
****Upright angled side-by-side VS Cabinets also exisited and functioned the same way.
****[https://i.ibb.co/4YhctbM/Upright-VS.jpg]
***The game likely takes whichever player hits __Start__ first as Player 1 regardless of which side of the cabinet they were present.
*The gameplay process was addressed the same as the NES run.
**Launch the ball at a power level that allows for the ideal exit of the top main screen, and use the flippers on the upper screen to slap the ball down to the lower screen in a path that gets the ball to the Bonus Room chute as quickly as possible.
** Save the maiden in the bonus room.
**Input was ended as early as possible while still allowing the maiden to escape (then stupidly allow herself to become trapped again).
*To continue to a Game Over screen, would require sacrificing all balls for both players.

!!Acceptability/Publication
To my knowlege, there are no current VS games on the site under either NES or Arcade publications.  If this run is accepted, I believe it should be published under the Arcade  'system' as opposed to NES even though the emulation is NES.

The NES version submission currently sits as "delayed" on the workbench; I'm not sure these two runs will be deemed different enough to publish both.  It's possible that only one can be accepted due to the similarities of gameplay.  If this is the case, this run obviously has the faster time.
