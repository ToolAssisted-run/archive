> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6731M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

*The obscure arcade game Act-Fancer: Cybernetick Hyper Weapon was published by Data East, which was released in Japan in 1989.  The game is notable for its HR Giger inspired artwork, and being the third entry of Data East's 'Evolution Trilogy': first being Darwin 4078, second being SRD: Super Real Darwin.  

*This TAS uses the default Dipswitch settings.

!!Gameplay
*The game is most similar to an action platformer. The player collects blue orb powerups that come out of destroyed enemies to "evolve" to the next form which are all slightly larger than the previous form.  All forms after the first one also shoot additional bullets, but those additional bullets will only fire again when all the bullets and the effects are gone.  There can only be three forward shots on screen at once, which means in situations where the mech can be placed right next to the boss near the edge of the screen, the bullets can rapid fired. There are seven forms for the mech. The first form is very basic with only small forward shots.  The second fires slightly larger shots forward, as well as small bouncing bullets.  The third form changes the bullets to shoot at an angle downward and when they hit the ground a fire pillar appears to do damage. The fourth form's additional shots fan upward and explode on contact with ceilings and walls.  The fifth form has homing bullets that arc out of the back of the mech. Those homing bullets can also be manipulated somewhat with left and right presses.  The sixth form has the basic forward shot placed somewhat high so it is hard to hit enemies along the ground.  To get past that the mech could duck and shoot, but that loses some time in the tas, but there is a trick where if you jump and fire on the same frame the forward shot moves slightly lower on screen.  The sixth form's additional shot is a single bullet fired upward at an angle which then fires out multiple bullets in multiple directions which explode on contact with walls or ceilings. That additional "spread shot" is very inconsistent in the number of shots that are fired, and also sometimes requires an additional Fire button press for the shots to explode.  The seventh form is the largest with lots of homing bullets and a thicker forward shot which can now kill enemies on the ground too.

*The evolved forms will only last so long until the mech reverts to the previous evolution.  During this period the mech is invincible, but it only lasts a couple frames so not that useful.  During de-evolution the forward basic shot of the first form can be used.  Collecting red orbs will reset the countdown timer to let  the current form will last longer. Collecting blue orbs evolves, but also resets the countdown timer.  Note that evolving also gives invincibility during the process.

*Orbs seem to mostly move away from the mech after they come out of the destroyed mech.  That is why it is important to grab them as soon as they come out.  Otherwise they usually just bounce up out of reach, or in more obnoxious cases completely change direction and bounce away.

*When taking a hit in the first form the player loses a life, and restarts the stage. When taking a hit in the any form after that the mech devolves, and the more forms the mech has evolved to the longer the de-evolution process takes.  This is extremely useful when using the mech to ram into boss enemies since the mech is also invincible during this period.  

*How bosses take damage on bosses is quite inconsistent.  The shots deal consistent damage per hit, but there are odd things to note.  First, the game seems to have a priority list of what type of damage it will accept if hit with multiple damage types on the same frame.  For instance ramming the mech into a boss seems to deal 1 to 2 damage per frame, and firing forward shots can deal extra damage.  However the "Additional shots" from the evolved mech which tend to be the round blue bullets seem to be disregarded if a boss is being rammed with the mech or being hit with a forward shot.  The blue additional shots can also block other types of damage for multiple frames if they hit the boss first too.  Some bosses deal with shots differently too.  Many bosses let shots go through their bodies, but some only allow it partially.  One notable behavior is that the final space, the space ship, instantly takes damage from blue additional bullets and removes those sprites from screen immidiately.  "Wall-like" bossses have strange behavior where parts of the boss act like a wall and some additional shots can explode on contact.  However to make things odder the mech needs to shoot again to make those bullets explode unlike on most walls and ceilings.  

*Left + Right + Fire button while on the ground will fire backwards without losing speed. 

*Many platforms have poor detection so it is possible to jump slightly into platforms.  However if you go too far into the platform the mech is then unable to jump.  There is a platform on the fourth spider-like boss that allows the mech to jump again even when clearly far from the top of that platform.

*Before the boss fight control is taken from the player and the mech is slid along the floor into the boss room.  This also happens sometimes in multi-stage boss fights like in stage 3 and 5. Note that if the mech is hit during that period the mech starts the de-evolve back to the first form as though it was hit during the actual stage. So the devs forgot to make the mech invincible during those "cutscenes".

*Firing and jumping or falling in a section where the screen moves vertically also moves bullets for some reason.  Which leads to odd firing techniques where shooting a horizontal shot while above an enemy, then falling down makes that move move downward which can hit that enemy.

*It is possible to duck and shoot in mid-air in most forms.

*Video of a playthrough of Act Fancer:  https://www.youtube.com/watch?v=oLbtY-15424
*The only informational manual or flyer for the game possibly? https://flyers.arcade-museum.com/videogames/show/5004

!!Stage 1
Like all the stages from here onward the name of the game is to get as many blue orbs to evolve as possible. The mini-boss can be killed very quickly by jumping and ramming the mech into it.  The mini-boss has a second form of an eyeball but the ramming is so strong I am not even sure that form is visible.   The ramming works better the more evolutions the mech has since the invincible de-evolution process will last longer.  For the stage 1 boss jumping up, shooting, and ramming into the snake head works great.  Ramming does high damage and combined with firing wipes most boss forms out a second or two.

!!Stage 2
This is probably the best stage if judged as a action platformer.  A lot of enemies alongside moving platforms and obstructions. However there are some issues with the design where sometimes floating rocks ,which damage the mech if they are touched,  will either slide along the platform horizontally, or get stuck inside.  In one attempt there was an invisible rock which hit the mech, because it was fully inside the floor somehow. Annoyingly enemies sometimes can hit the mech when the player loses control when entering the boss room.  Had to do some slowdown reduction on this stage by clearing out enemies before the screen displays too many. 

The boss descends from the center of the ceiling but it is protected on both sides by its arms which erase bullets.  However ramming the mech directly into the boss and firing while inside the boss takes it out fast.  There are two other little worms that shoot out of the tubes on the bottom right. The first dies from being rammed, and the second worm is taken out with rapid fire shots since each shot disappears on contact with this enemy.

!!Stage 3
Very simple stage with almost no platforming elements.  The gimmick here is that there are lots of enemies that run at you from the left side of the screen.  At one point I do move left to get a red orb to extend the evolution countdown.  Need a lot of evolutions to cut down the time since the later evolutions have good additional shot damage, and this stage has a multi-stage boss which would otherwise remove evolutions.  

The first boss has two parts, the top section and the lower section with the lower section having double health.  Additionally there is some odd timer stuff going on here with the bosses. Killing one part resets the health of the other part.  However, the timer part is because of the secondary snake that comes on screen from the top right which takes its time moving around until going off screen to the right.  However that does not mean there could not be some kind of improvement here, just that I tried a couple times and ended up with almost the same end time.  In one branch I defeated the first part half a second faster, but due to extra lag the stage ended a couple frames later.  Note that if the mech is hovering above the snake when it moves right off screen, the game takes control the mech, and the mech will fall through the snake taking damage.  When the "cutscene" is complete the mech will de-evolve since it was hit by falling through the snake.  

The second part of the boss is a wall boss which gets destroyed by shots and ramming.  There could have been some other strategy that works better for this, but the snake thing in the center of the screen erases all shots so just using the invincibility frames works best here.

!!Stage 4
Straightforward level for the most part.  This boss is pretty much a direct copy of the stage 2 boss, and is dealt with the same way by ramming.  Although here there are no additional boss enemies that need to be destroyed.

!!Stage 5
This stage feels poorly made.  There are multiple sections collision is not set right.  There is a ceiling that can be jumped into, and in the pit there is a section where the mech can fall into the mud and go underneath the platform, but not able to advance the camera.  Also there are not enough orbs in the final section of the stage which feels like a mistake. The stage has background looking tiny sperm things floating around which actually count as a bullet can will cause damage to the mech.  The tiny sperm things' sprites also go behind other enemies so are hard to see. 

The first and second bosses  are wall bosses just like the second boss in stage 3.  This first boss however has these appendages which erase bullets. There is a trick here where the additional blue bullets can cause explosions as long as they do not hit the head or appendages, and the mech fires at least one shot after the shot that fired the blue bullets.  The explosions can hit through the appendages dealing large damage.  Why this works I don't know.  Additionally there is a spot in the lower appendage arm that can be shot through if it is positioned the right way.

The second boss is yet another wall boss, but this one is easier since no appendages.  The explosion trick is used here that deals large damage against it alongside forward shots.

The last boss is a multi-part spaceship boss.  The boss has three parts, the gun, the gun..end(?), and the full top section.  Once a section is destroyed any further damage is pointless until the ship passes back to the right side of the screen.  This spaceship on hit with the additional blue shots  from the sixth form will despawn them immediately, and this boss will take all the damage at once if it is hit with multiple blue shots unlike other bosses. This means the sixth evolution is uniquely suited for this boss.  The sixth evolution can hover and while facing away from the boss and rapidly fire. The health of each section of the boss is taken out in about half a second.  Most of this spaceship fight is really just waiting until it can actually take damage.

!!Potential Time Saves
*Stage 3 maybe could have that slight left movement removed.  Or find a way to defeat the first form of the boss faster.

!Requested Screenshot Frame 2032
[https://i.ibb.co/KzxNxq8M/Act-Fancer-Cybernetick-Hyper-Weapon-World-revision-3-Frame-2032-2025-09-06-08-29-03.png]
