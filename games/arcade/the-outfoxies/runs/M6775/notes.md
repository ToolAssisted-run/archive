> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6775M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

*The Outfoxies is a 1995 weapon-based fighting arcade game developed and published in Japan by Namco.  Suspected of being an influence in the creation of Smash Bros.' gameplay style.

*This TAS uses the default Dipswitch settings.

*Note that when trying to make the tas movie in TAStudio there needed to be a change to the Metadate -> Savestate History Settings -> "Gaps - Buffer Size" to 128.  This is because the savestate size for this game exceeds the minimums that TAStudio specifies.  Otherwise at random points there would be a error window with the title "Fatal error: InvalidOperationException" and the message "Emuhawk has thrown a fatal exception and is about to close.  A movie as been detected. Would you like to try and save? (Note: Depending on what caused this error, this may or may not succeed)."

Using xml multifile loader which needs these files.
 <BizHawk-XMLGame System="Arcade" Name="of">
  <LoadAssets>
    <Asset FileName="./outfxies.zip" />
    <Asset FileName="./namcoc75.zip" />
  </LoadAssets>
 </BizHawk-XMLGame>

!!Gameplay
*Smash Bros. Think Smash Bros. and you will not be far off.  There are differences and the gameplay is nowhere near as smooth or nice to play.  However the stages tend to be quite interactive.  Pretty big stages for only 1v1 fights.  The main way to deal damage is through weapons or the environment. While you can attack without weapons it is mainly used to knock the enemy back.  Hitting an enemy knocks the weapon out of their hand.  Weapons fan out and are quite inaccurate.  Once a character is hit there is a pretty large invincibility time frame.  Health is displayed in a bar with green, yellow, and red denoting the decreasing health in thirds. Falling stun is a big difference from Smash Bros., where even falling a bit will cause the character to be stunned.

*As the rounds continue the damage weapons do decreases.

*Dweeb is used since he is the shortest character and fast.  Being short means on the final stage he can get into an area the fastest to get the top box and advance faster.  He also would have to be used for the Repeating Pistol Exploit described below.

*Quick/Recoil-less shot: This is a trick where if you shoot right before landing it is possible to fire and move and again faster than normal.  This is extremely useful for the RPG where using the rocket propelled grenade after jumping or on the ground usually causes high recoil and stuns Dweeb.

*Weapons: The two weapons used are the RPGs and the pistols.  RPGs are great since they do a lot of damage especially at long range.  However at closer distances the pistol is much faster with the exploit described below.  There are a lot of other weapons, but most are mediocre at best.

*It is possible to pick up a weapon from the floor below it.

*If jumping a quick turnaround is possible if your movement speed is low.

*High Jump: Jumping and holding Up will have the character jump especially high.  This is typically used for jumping to a floor above, but if there is nothing above you still get extra height.  

*There are two ways to mitigate fall stun and damage. When falling after a period of time you lose control of the character. Before losing control, do an action like firing/throwing a weapon. The second method is stranger.  Sometimes in some places there is unusual geometry where if you press the jump button at the right time the character will have a slight vertical displacement upward.  This can be seen if you jump when falling onto the enemy character's head.  This can be repeated even.  This second method is used on the final stage when falling down the shaft near the bottom.  

*Video of a speedrun The Outfoxies [Any%] by EeroKurkisuo - #ESASummer23:  https://www.youtube.com/watch?v=MNOkmT1hsb8
*Review of the game: http://www.hardcoregaming101.net/the-outfoxies/
*Some artwork and manuals https://gamesdb.launchbox-app.com/games/images/12216-the-outfoxies

!!Repeating Pistol Exploit
The main exploit I found here for the game has to do with using Dweeb and the Pistol.  Once an enemy is hit they get i-frames, however I found it is not immediate.  Once hit the enemy will get knocked down, and for most characters and level layouts following up with another attack that will hit is usually impossible or very difficult.  The best spots to do this are where the elevation that your character is on is lower than the elevation the enemy is on and ideally at around the same height the pistol is fired from.  Each time an enemy is hit they get knocked back and in order to get the hits in there really should be a wall that prevents the enemy from getting knocked back further.  To complicate things the weapons are very inaccurate and changing around inputs to get the pistol shots to angle downward at the right spot to hit the downed enemy is necessary.  Dweeb is recommended for this trick since he is the shortest character.   Dweeb is one of the only characters that can reliably use this trick on flat ground as well without an elevation difference.

!!John Smith
While theoretically getting the first pistol, then using the dropped pistol that the enemy brings over would be faster due to how the enemy moves around this ends up being a bit longer.  Instead the RPG is acquired and used such that John is knocked over near a wall.  Here the pistol is used and each shot is manipulated so that the shots hit him.  This is the Repeating Pistol Exploit that is used on every single enemy.  

!!Betty Doe
Her script usually makes her go all over the place so the rng here was quite good with her being aggressive after getting the gun and moving towards me.  Her getting the gun is extremely useful since it prevents me having to run off and get another to get enough damage in to down Betty.  I need to pick up the second gun, which allows her to run off a bit towards the other weapon, but her health is low and the fight ends quickly.

!!Bernard White
Large guy which works against him since it makes getting shots in easier.  There is a nice elevation difference to be found between the car and the inside of it which makes shots easier to manip.  There was some slight manipulation since I had to wait for his gun to fly into a reasonable spot I could pick it up and then quickly resume attacking.

!!Doctor Ching
This guy is so obnoxious and moves quickly all over the map with sometimes no discernable reason. This character seems to break some unspoken rules about brawlers like this where by default he sits on this large mobile chair, but the chair seems immune to bullets.  So this character runs around with a good portion of his "body" immune to bullets.  When against a wall, the pistol spam stopped working, and I realized it is because the portion of his body that can even take damage is INSIDE the wall.  Lucked out on a solution when messing around, where if you shoot him on the right frame as he turns away from your character, he will take damage when the pistol shots angle up or straight since he faces the opposite way and his body is not in the wall anymore. 

Note that there is an interesting spot near where the fight finished and that is the crane.  The crane can be used to prevent the i-frames on the enemies, and while I tried to use it for this, the crane picks up the opponent too quickly to get all the shots in to defeat Ching.

!!Eve 
Eve likes to run around the entire map so not giving her the chance to do that is key here.  Four RPGs end up being used since otherwise there is not enough damage to finish quickly. This round does not have a lot of weapons near the bottom of the stage too. There is a pistol on the bottom left towards the trampoline, but all it does is fire harmless confetti.  The pistol I do pick up is the one on a level above which I get from below pressing Down at the height of the jump.  Shortly after I pick up the second rocket weapon to get in one more shot to get the damage in to finish with just the pistol.  Go back pick up the other pistol I dropped, wait for Eve to jump over to my side and finish her against that support block.  In testing this was the best spot, if I jumped over to her side I don't have the distance to get the shots low enough to keep hitting her, and even if I changed spots a bit the juggling clown gets in the way.  

!!Danny & Demi
Honestly could not ask for better RNG here.  They run over to me with a gun, and while I had to bait out a close range attack to pick up the gun and land around the same time as them on the lower deck it all worked out great.  

!!Mr and Mrs Acme
This is more a trap stage with target practice at the end more than anything. Certain sections like the stairs on the second floor and the elevator on the bottom floor take control of the character.  The first floor has some dogs that you have to dodge and make it into the elevator.  Hilariously there is a tiny poodle that does no damage, but will slowly pull you away from the elevator.  Second floor has a water trap, but using a high stationary jump bypasses the collision for the water, and Dweeb can fit into the small space at the top of the boxes and advance quickly.  Third floor has some falling objects, but running bypasses them.  In the room with the Acmes some shots are fired at Dweeb, but are easily dodged.  After that grenades start appearing in the room.

There is a shaft leading down, but you have to get three grenades to hit it to open it.  When falling down there is some electricity that needs to be accounted for.  Electricity arcs across the shaft so falling at the right time is important, and with this timing I have to dodge some of it by moving right then left.   At the top of the shaft I pick up a grenade and use it while falling to prevent losing control of the character and getting fall stunned.  At the bottom however I have to do another action to prevent fall stun. There is unusual geometry in the shaft where at certain points if you press the jump button at the right time the character will have a slight vertical displacement upward which resets the falling. I do that at the bottom right before Dweeb exits the shaft which also avoids an explosion at the bottom.  Avoiding the stun allows Dweeb to run forward and block a thrown grenade with his face.  This is actually faster since these grenades cannot be picked up while in the air or on a slope.  Letting that first thrown grenade go has it land on a slope which makes it unusable.  Getting hit with it, has it land on flat ground.  After picking it up it is thrown so it hits the Acmes at the top of the slope.  Note that it does not seem possible to get up there normally since there is a table in the way.  Once the Acmes run away the slope gets stairs.  There is an elevator at the end which leads to the rooftop.

The rooftop section has a Special Rocket which has infinite grenades.  The goal here is to hit the helicopter seven times to defeat the stage.  With the inaccurate nature of weapons it is usually tricky to do this part quickly.  Here shots are manipulated to get all of them in asap.  Once defeated the Acmes crush each other and then are crushed by the plane.  Mission accomplished.  Now Dweeb can eat bananas.

!!Potential Time Saves
*Better RNG manip.
