> **Imported**
> This run was originally published at https://tasvideos.org/5940M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! World Champ
__Super Boxing Great Fight__

It's boxing.

!!!Game Basics
The game offers 3 playable modes:
*Ranking - See below
*1P vs 2P - Obviously, allows two humans to compete against each other.
*Tournament - Not so obvious:  Allows from 3 - 8 humans to hold a tournament with each other.  No CPU boxers.

This run uses Ranking mode as it's the main progression based mode of the game.%%%
Ranking Mode Basics:
*There is a 4 weight class progression to the game.
**Welterweight
**Middleweight
**Cruiserweight
**Heavyweight
*Beating the highest ranked boxer in each of the lower three weight class upgrades the player to the next weight class.  
*Beating the highest ranked boxer in the Heavyweight class wins the game and triggers the credits.
*The player is first given the option to select one of two fight types (this selection is also applies between fights)
**Training - a 3 round sparring match aimed at improving one of the stat points (Speed, Stamina, Defense, Punch)
***Completing a training match will grant 2 additional points to the chosen stat.
**Regular Match - a 5 round boxing match against a ranked CPU opponent.
***Completing a regular match will grant 2 additional points to all stats.
*Before each fight (training or Regular Match) the player can allocate all the Punch stat points across the four punch types.
**When a boxer throws a punch, the power for the type of punch is compared to the opponent's punch power of the same type of punch.  If the punching boxer's power is at least 4 points higher than the opponent, the punch will do greater damage (the amount of damage is based on how much higer the power is than the opponent).  If the punching player has lower power, the punch only does 1 point of damage.
***Due to this mechanic, it is only worth taking time to allocate punching power if the player can set their punch power at least 4 points higher than the opponent on a given type of punch.
*Completely depleting an opponent's stamina (HP) will result in a Knock Out.
*During fights, there is a __Spirit__ stat that builds as a player lands hits.
**Missing a punch, or getting punched decreases the Spirit stat bar.
**When the spirit stat bar is in the red zone damage delivered doubles.
**If the spirit stat bar is in the red zone ''and'' the opponent has less than 60 HP remaining, a punch will knock them down.
***3 Knock Downs within one round results in TKO (per normal boxing rules); even if the opponent has stamina remaining.

!!TAS Notes
*The run consists of directly selecting the top ranked competitor of each weight class without doing any training sessions or lower ranked fights.
**This results in a TAS of only 4 fights:
***Kid Lopez - 188 Stamina
***Silk Sam - 240 Stamina
***Money Man - 240 Stamina
***Hard Head - 192 Stamina  (yes, I find it odd that he has lower HP than the previous two fights; but other stuff must make him more difficult from a casual play perspective)
*As the player never has enough punch stat points to crest the 4 point differential in punch power for any individual punch type against any of the 4 opponents; no punch points are ever allocated, to save time.
**Performing the necessary matches (either training or against a lower ranked opponent) in order to build up punch stats would take more time than just bludgeoning main opponents with minimal damage hits.
*Once a punch lands, there is a single frame window in which initiating another punch will guarantee a hit (assuming the opponent's position hasn't moved too much).  
**Otherwise, it's possible for a punch to be dodged/blocked by the CPU.
**This can effectively stun-lock the opponent into a non-stop series of impacts.
***Some positional corrections are necessary as there is still minor movement of both the player and the opponent.
**RNG is manipulated to yield an impact on the first punch thrown by the player against all 4 opponents.  This saves time by not delaying getting into the stun-lock.
*All 4 fights result in a TKO in the first round.
*The last input is the final punch against Hard Head; the game will automatically progress through the credits.

!!Potential improvements?
*Not all first punch impacts happen with the opponent at the maximum distance away that a hit can connect.  If someone could better manipulate RNG and player positioning so that this would be case, it may be possible to start a stun-lock barrage earlier.   This would shorten the run.
*It may be possible to move in some way while still throwing a missed/blocked/dodged first punch that allows for the second punch to still connect earlier than one of the first punches does in this submission.  This would also shorten the run
**I had this occur in earlier versions of the run that were less optimal in other places, but was unable to make this happen in my testing on the submitted version.

!!Passwords/Savegame-Based Run?
*After each bout, the player is given a password in order to continue at their current ranking with the appropriate stats during a different play session.  
**This includes after the final opponent of the game.  
***Using the provided code from the end-game starts the player already in the Heavyweight class, but resets any defeated opponents in that class so they can be fought again.
***I had hoped that using this code simply resulted in a better player in which to play through all four weight classes, because I was going to also submit a save-based run that beat the game faster than this submission (due to a stronger player and more damage per hit).  
****Maxing out the player character would be accomplished by fighting all opponents to consistently gain 2 points to all stats after each bout.  To create a verification movie to yield the necessary code, this would require 49 bouts to reach 99-level stats as the player starts with 1 point in each stat.  This would be a base playthrough for 20 fights, plus 6 more playthroughs of Heavyweight class (30 fights) to yield an end-game code with a maxed character and all Heavyweight opponents reset to fight again. 
****But with the code-based run starting at Heavyweight, the primary savings of a maxed out character would just be in not having to fight the final opponent of the lower three classes.  There's no way to have better stats than Hard Head, so even a maxed out character couldn't really beat him faster than what's presented in this submission (other than possibly a few frames from an earlier impact).  This means that a savegame run wouldn't really contain anything not seen in this submission.
*FWIW, the password obtained by beating the game starts with an S (which seems to code for heavyweight class). Change this first letter can change the class in the password system.
**Changing the first letter to B would set the player back to welterweight class, similar to a power-on fresh start. Except the player would have the stats from the character that beat the game.
**Using this kind of manipulation could allow for maxing out a character as rapidly as possible (as described above) but still able to play through all four classes.
**Unfortunately, modifying the password means the code is not one legitimately achieved from gameplay.
***Also, if one can manually change the first letter, why not manually change the rest to get a desired character workout having to go through the work of playthroughs to max out the character. 
**From what i can tell, the rest of the letters are just different stats.
***I haven’t (at least not yet) figured out the specifics of which letters are tied to which stat, but i probably could fairly easily without a ton of work.

!!Recommended Screenshot - Frame 10837
[https://i.ibb.co/FXmfQpX/World-Champ.png]
