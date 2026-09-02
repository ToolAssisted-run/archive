> **Imported**
> This run was originally published at https://tasvideos.org/7148M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Roadblasters

On it's surface Roablasters appears to be a racing game; but it's not really, as you aren't racing against other cars for position or specifically for the "best" time.  It's actually more like a challenge of survival within a general racing structure.

The game consists of a series of stages (up to 50) where the goal is to reach the end of the stage, called a Rally Point, without running out of gas.   That's it.  That's the only means of failure in this game....running out of gas and coming to a stop.  When you run out of fuel, you can use a continue to restart on the same stage; you are given 3 attempts with which to complete all the races.

So where does the challenge come in?  Well, you're limited on fuel and many of the stages do not start you with enough fuel to complete them, so fuel must be acquired during the stage to ensure finishing the Rally Point.  Crashing results in slowdowns and more fuel used, so it is obviously best avoided.

!!Game Basics
The game consists of 50 total stages
* You are given the option to skip some of them at various points throughout play.  This allows for finishing the game without completing all 50 stages.  
* This submission only completes 16 of the 50 stages.

Fuel Management
* Your car has two fuel tanks: Main and Reserve.
** The Main tank can be refilled by running into orbs on the track.  There are two types: Green just exist on the track, Orange are released from some destroyed enemies.
** The Reserve tank will only be used when the Main tank runs out of fuel.  It is replenished based on your scoring at the Rally Points. (We'll come back to this later.)

Control
* __Up__ accelerates (up to 212 mph)
** It is not necessary to hold up to maintain speed, the game will keep your speed steady unless you change it or hit something (including the sides of the course).
* __Down __decelerates
* __Left__ & __Right__ Steer
* __A__ shoots bullets
* __B__ uses your special Item

Obstacles
* Blue cars - Get in your way on the track
** Can't be destroyed via gunshot, only through use of the Cruise Missile or Electro Shield.
* Orange Cars - Get in your way on the track
** Can be destroyed via gunfire or Cruise Missile.  
** Sometimes these drop orange fuel orbs.
* Motorcycles - Get in your way on the track
** Can be destroyed via gunfire, Cruise Missile, or Electro Shield.
* Rat Jeeps - These jump onto the track from behind and to the sides of your car
** Generally jumping out in front of you, but there are instances where this isn't always what happens
** Can be destroyed via gunfire, Cruise Missile, or Electro Shield.
* Mines - Small white objects in the road that will destroy you if you strike them.
** These can neutralized by Electro Shield or destroyed with the Cruise Missile.
* Gun Turrets - These are off to the sides of the track and shoot bullets at you.
** Can be destroyed gunfire or Cruise Missile
*** The Electro Shield would probably protect you from an impact with one of these, but why are you driving so far off the road?
** Most of these fire bullets across the road which can be dodged, ''__however...__''
** Some of these fire seeking bullets (that look the same as normal ones) which are effectively impossible --((almost))-- to avoid by driving alone regardless of speed.
*** Generally, you can only prevent these from crashing you using Electro Shield or Cruise Missile.
*** (However, If you can maneuver to a position on the road where the turret would be off screen when the seeker bullet is fired, it won't shoot it.)
*** In my opinion, this is a jerk move on the developers' part, to make it generally impossible to get through certain races without crashing.  It's just a "gotcha" moment instead of a true test of a players skill.
* Toxic Spills
** These look/act like oil slicks from most racing type games and will send your car into a spin.
** Thankfully, they don't slow you down.
* Rocks
** Generally these sit on the sides of the road so you shouldn't be running into them, but there are a couple instances where the rocks are in the roadway.

Special Items - Dropped by air support
* UZ Cannon - Allows rapid fire with no impact on score multiplier (more on this later)
* Electro Shield - Temporary Invulnerability.
* Nitro Inject - Provides a temporary speed boost up to 298 mph
** There is a glitch in the game where collecting a new special item while the nitro boost is active will allow the active speed (upon pickup of the new item) to be maintained indefinitely through the end of the stage instead of simply being a temporary boost.
* Cruise Missile - destroys everything on screen (including green fuel orbs).

Mine Indicator
* This is the little flashing light to the left of the fuel gauges.  When flashing, mines (or fuel orbs in some stages) are coming up.

Score Multiplier
* Whenever an obstacle/enemy is shot with gunfire, the score multiplier increases.
* A shot that hits no target will decrease the multiplier.
* After reaching the Rally Point, bonus score is tallied and fuel is awarded to your Reserve Fuel tank based on this.

!!TAS Notes:%%%
In [10231S|my previous submission of this game], I attempted to write a bot to play this game for me (identifying power-ups, obstacles, targets, etc. and driving appropriately).  However I discovered that my coding skills/knowledge weren't sufficient enough to organize the Lua enough to do everything.  So I instead used the bot to do the bulk of the driving, fuel orb collecting, and targeting; but I resorted to collecting power-ups and dodging unkillable stuff manually as it just made the overall process much easier for me.

For this submission, I did everything manually after I learned about a different technique of controlling the car:%%%
* Not holding either directional button will cause the car to drift sideways in corners.  
* However, holding both L and R at the same time will lock the car in its horizontal position on the roadway.  Using this technique, it is possible to keep the car moving relatively smoothly through the stages while also allowing for some fancy directional adjustments in order to shoot enemies.
** Generally, but not always, the car is kept in the middle of the track.
* The car can move horizontally on nearly every frame, but the sprite of the car will only rotate with inputs once every eight frames.  
** This degree of control allows for moving the car one direction while rotating it in the opposite direction.
** This is also the primary means used to aim and attack enemy cars/turrets; which is generally done as early as possible with some exceptions.

General:
* Based on my testing, "hugging" curves in the roadway is not faster in this game, as it is with so many racing games; so it is not necessary to try and minimize distance traveled this way. You can control the car wherever on the track without losing time.
* Based on my testing, it was actually faster to complete stages by killing as many enemies as possible compared to simply dodging them all.  I'm guessing there may be some sort of processing lag involved, but that's strictly a guess as there's no input lag during races.
* At the end of races, the game will forcibly drag the car to the center of the track before it reaches the checkered flag.  This dragging takes extra time, so stages were completed by making sure the car was properly centered to avoid any drag.
* Since increasing the score multiplier requires longer to tally score/award fuel, most stages are completed by wasting a bunch of bullets to bring the multiplier back down to x1.
** There are two stages where this is an exception: Stage 47 and 48
*** Stage 49 starts with extremely low fuel in the main tank.  Even with some fuel provided in-stage, the reserve tank must start with a sufficient quantity of 70 (RAM address 0x86) in order to finish without running dry.  Otherwise a continue must be used to refill the fuel tanks; this obviously would delay the finish.
*** Stage 48 is effectively a giant minefield and offers no in-stage fuel; thus using up some reserve fuel. As mentioned above, the reserve fuel after the end-of-stage bonus needs to be 70; due to the loss of reserve fuel in both stages 47 and 48, the multiplier needs to be at least x3 to yield the required 70 reserve fuel .  Unfortunately stage 48 does not have any enemies to kill with which to increase the score multiplier, so the multiplier must be carried over from stage 47.
*** Stage 47 begins with maximum reserve fuel (89), but offers no in-stage fuel pickups; thus using some reserve fuel.  As Stage 48 doesn't offer opportunity to increase the scoring multiplier for Stage 49, it must therefore be increased here to yield enough reserve fuel for the next two stages.  In this stage, the only enemies are gun turrets.
* Speed is maxed and maintained at the maximum possible throughout the run (including through use of the nitro glitch).

Particular Stage Notes:
* Rally 11 - General race. No special item is collected as the one available (cruise missiles) is not needed.
* Rally 12 - First rally with Rat Jeeps jumping in from behind.  In this stage you can see their normal movement patterns that will get altered later when using nitros. UZ Cannon is the power-up in this stage; but is not collected, as it's not needed.
* Rally 13 - Electro Shield is collected and used in this stage.
* Rally 14 - No power-up in this stage.  For fun, I slalom through some groups of the mines.
* Rally 23 - The first (avoided) power-up is the UZ Cannon, which is unnecessary.  The second is Electro Shields which are used to get past some mine groups and seeker gun turrets.
* Rally 24 - Here we see Nitro used for the first time.  All 3 uses are done in this stage with the last being glitched on through the end of the stage.  UZ Cannon is only collected to activate glitch.
* Rally 25 - Nitro again collected and used 2 of 3 times.  The third nitro is reserved for the next stage.
* Rally 26 - Nitro is used before Cruise Missile is collected to activate glitch.
* Rally 35 - Cruise Missile is used to destroy seeker turret.  Nitro picked up and 2 of 3 are used.
** There's a graphical glitch triggered when the nitros are picked up.  This was accomplished by using a cruise missile at the same time as the pickup of the nitros.  I just thought the road colors being inverted was interesting.  This is reverted to normal at the end of the stage.
* Rally 36 - Last Nitro used and glitched by picking up UZ Cannon.  
** Unlike the previous submission, I was able to position the car on-track in locations to prevent the seeker turrets at the end of the stage.  Thus I was able to maintain full speed this time around.
**This stage shows the Rat Jeep actions when traveling at 298 mph.  
*** Basically they don't jump in front of you but try to ram your side.  If you can get them to "land" their incoming jump on the grass they will disappear.  It's also possible to shoot them with some extreme turns/shots.
* Rally 37 - Collects Nitro and uses 2 of 3
* Rally 38 - Glitched Nitro and collection of Cruise Missiles. 
* Rally 47 - Turrets shot to boost multiplier to 3x.  UZ Cannon Avoided to hold onto Cruise Missile, all three of which are needed in this stage to destroy seeker turrets.  Score Multiplier is kept for Reserve Fuel.
* Rally 48 - Just dodging Mines here. Electro Shield collected and used.  Score Multiplier kept at 3x to provided fuel for next Rally.
* Rally 49 - Nitro collected and used 2 of 3.   Missed shots to bring Score Multiplier back down to 1x to save time in score tally as the next race is automatically given full fuel.
** In the previous submission, I ran out of fuel near the end of the race while still being able to finish; this unfortunately slowed the car and delayed the end of the race somewhat.  This time I realized that waiting to kill cars that drop fuel orbs until the last possible moment allowed for earlier pickups of extra fuel.  This kept fuel in the main tank higher and used less reserve fuel.  I finish this stage with 1 fuel point remaining in the reserve tank and 0 remaining in the main tank.
* Rally 50 - This stage starts with max fuel. Nitro glitched by picking up UZ Cannon. Cruise Missile Collected and used to destroy rows of blue cars that can't be bypassed without slowing down in the grass.  The last avoided power-up is more nitros; but seeing we're locked into max speed already, they are unnecessary.  If they were collected, we ''lose'' the glitched speed and would be limited to the 3 temporary boosts instead of having the 298 mph throughout the rest of the stage.

Ending choice:
So I technically have two versions of this run.  One which gets to the end of the game fastest and one that ends input earliest.  The difference in the end of input between them is 51 frames, but the difference in reaching the end is 200.  The shorter input option takes longer to get to the end of the game as it slows down by hitting grass and coasting to the end instead of driving max speed to the end.  I've chosen to submit the longer input version for two reasons: 1) I believe it's generally more liked by viewers for racing games to power through the end instead of ending input early ((except for uber purist TASers/viewers who always prefer shortest input regardless of what's seen)) 2) to me 51 frames out of a 22-ish minute run can be considered a speed entertainment trade-off in this case.

!!For publisher: [UserFiles/Info/639139759910114458|Here's] a version of the submission with the post completion input for High Score initials.

If, for whatever reason, the site would prefer the shorter input version, it's [UserFiles/Info/639139759646813528|here].  And [UserFiles/Info/639139759296688309|the version] with extended High Score input.%%%
Encode showing that end:
[module:youtube|v=QIlhVaUxims]
