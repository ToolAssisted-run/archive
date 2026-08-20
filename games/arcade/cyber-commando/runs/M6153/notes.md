> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6153M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

*Cyber Commando is an arcade game made by Namco in 1994 that  features 1v1 versus matches.

*The game is a series of arena matches against 9 different cpu tanks plus a floating orb as a last boss.

*There are no settings that make any gameplay differences.

*One thing to note is that the rom on loading has a message saying there are known problems with this game.  LAN does not work (not relevant for a one player tas like this game).  Second message is that there are some graphic imperfections.  Unlike Cyber Sled there are no particular graphics that cause crashes.

*Locations of ammo is sort of random, but there seems to be 2 or 3 layouts only.  Doing enough damage to ammo will have them give double ammo.

*The first two arenas have the initial tank in a specific spot, but they move randomly.  After the first tank of an arena two more will spawn away from you. Had to position the tank carefully to get good spawns.  The last four fights of the game do not have another fight immediately after but have the arena reload.

!!Required Files
 <BizHawk-XMLGame System="Arcade" Name="cc">
  <LoadAssets>
   <Asset FileName=".\cybrcomm.zip" />
   <Asset FileName=".\namcoc74.zip" />
  </LoadAssets>
 </BizHawk-XMLGame>

!!Tank Characteristics
*There are 6 playable characters that have varying characteristics.  The game assigns Speed, Weapon, and Shield stats. Speed is movement velocity, Weapon seems to be about starting missile capacity, and missile fire speed since the machine gun and missile damage seem the same.  Shield reduces damage taken.   

*The tanks themselves have some layouts that differ too. Some have machine guns that fire out from a single point, fire from ports on the left and right, or from a narrow area but vary.  Missile layouts come in single point.  

*The weapons damage is more subtle and hard to pin down than Cyber Sled.  The large damage reduction at low health is gone, but instead there is some small added damage the more damaged a tank becomes.  The damage increase seems to cap at around 10%.  Realized this late game, so had to redo some fights.  In early fights it loses times since taking damage itself would lose time since you lose forward speed.  There also seems to be slight rng to the damage with some unexplained small damage difference between shots.

*Tanks with higher Weapon rating generally have lower reload speed and more ammo. 

*Missiles in this sequel are much more limited in capacity. Instead there are ammo packs in the map that the player is intended to pick up. Shooting the ammo enough will change the graphic and will upgrade the pickup to give double ammo. 

*Machine guns can fire every other frame if only pressing the fire input every other frame.  However in some instances it is better to preserve ammo and shoot later.  This tactic is used on some very tanky bosses because as your tank takes damage your damage input can raise up to 10%-ish.

*Every tank has a total of 4096 health.  Missile damage actually varies quite a bit depending on how high the shield is.  Units like Andromeda can see about 1/3 of their health gone in a single hit, but the end boss units might take only 1/12 health from a missile.  Machine guns do about 1/20th the damage per hit of the missiles.

*For this tas Andromeda was chosen.  Andromeda is basically Alan from Cyber Sled reskinned and improved.  The machine gun is now centered and shots come out of two slightly separated guns.  The missiles are slightly weaker than some tanks like Murasame, but they fire fast.  The tank is also by far the fastest with the lowest shield. Lowest shield ironically means that Andromeda is the best at taking damage which also means the best at increasing its base attack too. Note that while the tank Peacekeeper looks like the best tank to choose since when firing it shoots out a large amount of missiles, but the enemy tank only takes the damage of a single missile sadly.


!!Enemy AI
* The input reading for the tanks is extremely noticeable in this game especially for the tanks later on.  There are these large boss tanks that will start dodging within a frame or two if they are centered with your cross hair.  There is a technique of alternating leads to keep the tank moving left and right.  This is the preferred way of keeping them from hiding if you cannot get close.  The most common way the more later tanks can be hit straight on with missiles and machine guns is to rapidly change direction, then rapidly turn back to the other direction. This causes the enemy to think you were going to fire in one direction but end up firing slightly off center which with finagling is enough to get a hit.   Another wrinkle is that the enemy tanks can cancel out your missile with another missile.  The best way to deal with that is to only start strafing when the missile is heading your way.  Sometimes merely strafing is not enough to dodge incoming missiles so angling the tank towards the incoming missile helps to avoid a hit.

!!Some other Resources

*namco " Cyber Commando " TimeAttack on PeaceKeeper https://www.youtube.com/watch?v=ZwhbqjJuaNM

!!Opponents
First two arenas have three fights back to back although your health and ammo come back after each one.  The last 4 fights are individual fights where the round starts up anew.

!!Murasame
Cool spider tank enemy, but the enemy ai script is tuned to barely react.  Basically the tutorial enemy of the game.  Couple missiles and machine guns and it is out.

!!PeaceKeeper
PeaceKeeper is a slow powerful tank, but it lacks serious armor like the end bosses.  This means a couple missiles with lots of machine gun takes care of this.

!!Wild Boar
My least favorite tank to play as since I think the developers did a serious disservice with this. This is the same tank in Cyber Sled Baird piloted just renamed and reskinned. Here however the guns are horrendous where they just shoot out in the fan shape.  He has the weakest attack in the game too, but is rather tanky.  Does need more to take down than the others but not a problem.

!!Andromeda
Actually this one gave me a lot of trouble since the enemy script makes the enemy like popping out shoot a missile then hide again.  Had to do some manipulation here to get it down faster. There are 5 frames that this could be done faster if i took more damage, but the game is really random so redoing this was not worth it.

!!Persuader
Enemy ai scripts are starting to get really aggressive here. Starting here using the quick position changes to keep tanks in a reasonable spot to keep machine gunning him is necessary.

!!Voodoo
Besides a couple missiles shot this tank does not have the armor or the speed to be much of a challenge.

!!Metal Serpent
Starting from here, all these boss matches have manipulation of the ammo positions and the initial direction of the bosses.  Here there is a great ammo spot off to the right. Shooting it early allows me to get a quick machine gun and missile reload.  Another noticable thing here is that I deliberately start face tanking damage.  This is to increase the damage output that the tank can do.  Face tanking hits saves 109 frames overall since one less missile is necessary.

!!Rafflesia
Weird enemy. This huge slow powerful tank shoots out arcing missile pods in clusters of two.  The tank also has a series of lasers that shoot out from the base if you get too close.  I take a lot of damage which saves two seconds.  Was able to get a good ammo spot here too.

!!General -D
High shield and very nimble with input reading up the wazoo.  Most of the fight is me constantly fighting just to keep the tank in a position to hit it.  Similar to the Metal Serpent fight but I had to be back a bit to get the ammo pickup after running out.

!!Nightmare
Not even a tank, but an super fast floating ball of metal that shoots out lightning.  This thing can dodge missiles almost point blank.  Its small size makes using the machine gun difficult but rewarding since it also has only a moderate shield.
