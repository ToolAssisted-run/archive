> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5820M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

*Cyber Sled is a 2 seat arcade game made by Namco in 1993 that primarily features 1v1 versus matches.

*The non player vs player is a series of arena matches against 6 different cpu tanks.

*Although apparently there are difficulty settings I just do not see where to change them in game or using dipswitches. So just using the standard difficulty.

*One thing to note is that the rom on loading has a message saying the machine does not work.  LAN does not work (not relevant for a one player tas like this game).  Second message is that there are some graphic imperfections.  

!!Tank Characteristics
*There are 6 playable characters that have varying characteristics.  The game assigns Speed, Weapon, and Shield stats. Speed is movement velocity, Weapon seems to be about starting missile capacity, and missile fire speed since the machine gun and missile damage seem the same.  Shield  reduces damage taken.   

*The tanks themselves have some layouts that differ too. Some have machine guns that fire out from a single point, fire from ports on the left and right, or from a narrow area but vary slightly.  Missile layouts come in single point or separated.  

*The weapons all end up doing scaling damage depending on the health and Shield rating of the enemy tank.  Meaning an enemy with less Shield will take more damage. Also, an enemy with less health takes less damage. An enemy with very low health, and very high Shield will see very very low damage.

*Tanks with higher Weapon rating generally have lower reload speed, but it is by small 10 frame steps in general. The lowest weapon rating with 1 bar has 90 frames to reload, 2 bars has 80 frames to reload. 

*Missiles can do massive damage if the enemy is at 100% health, but due to input reading and level layout it is infeasible usually to hit them while they are at full health.  Missiles should always be used to finish an enemy due do the damage scaling.  Missiles that are at a separated point have an advantage when trying to setup a shot against the input reading enemies since they tend to veer away from the center crosshair. All missiles home in slightly.

*Machine guns have a usage bar that decreases the more they are used. When nearly depleted the machine guns overheat and fire slowly.  However by alternating fire and no input machine guns can fire every other frame.  The limit however is that there must not be more than 8 bullets being on screen at a time.  By decreasing distance to the enemy the machine gun can be fired very rapidly. Also machine guns are great for dealing damage to the enemy since they do not really input read and dodge the machine gun, while for the missiles they do incredible dodges consistently.

*Because of the machine gun's rapid fire, I completed a test tas with Alan, the fastest tank, due to how the machine gun will destroy most enemies very quickly.  However there is a problem with the two tanks that have max Shield. The machine gun damage becomes very weak, and when they have less health the damage is laughably low.

*Every tank has a total of 4096 health.  Almost every enemy takes somewhere around 100 damage at 100% health and then 30-40 damage at low health per machine gun hit.  However the two heavies in the game are Hans, and Damon, the last boss, take much less.  At 100% Hans takes about 60 per machine gun hit.  At medium health he takes around 30 per hit. At ~15% health Hans takes around 16. The main issue though was Damon with my machine gun focused approach while testing with Alan.  The last boss at 100% started off taking 14 per damage per hit, and then it decreases to an eye-rolling 8 damage per hit at low health.

*Seeing the weakness of the machine gun I switched to Rexer, the second slowest tank, but one with the fastest missile reload.  Alan's fire rate is 90 frames, yet Rexer's is every 40 frames.  Despite Alan being ahead of Rexer the entire tas, Rexer ends up catching up with Alan at Hans, falling behind a bit on Marie, but then being 100 frames faster on the last boss. 


!!Enemy AI
*Enemy AI behavior loves input reading and making incredibly nimble dodges.  Missiles are dodged past a certain distance without exception.   There is no rng manipulation possible to snipe a tank right from the start.  The input reading tends to always veer away from the center cross hair.  The enemy interestingly does not bother really dodging the machine gun.  

* One thing I noticed is that if the round goes on long enough the enemy seems to rarely react to the missiles at all, but too bad with tas speed we do not see that.

*As enemies are defeated their input reading and ability to dodge missiles goes up significantly.  Many rerecords were made to try and get the right angles to hit the enemies as well as to reposition to continue using the machine gun.  The two ways the more later tanks can be hit straight on with missiles is to rapidly change direction, then rapidly turn back to the other direction. This causes the enemy to think you were going to fire in one direction but end up firing slightly off center which with finagling is enough to get a hit.   Another wrinkle is that the enemy tanks can cancel out your missile with another missile.  The best way to deal with that is to only start strafing when the missile is heading your way.  With Rexer this is particularly important unlike Alan, since Rexer is so incredibly slow.  Since with Rexer strafing is sometimes not enough if you get close and also dodge the incoming missiles so angling the tank towards the incoming missile helps to avoid a hit.

!!Some other Resources

*Human Speedrun in 3:42 for Playstation version. (this tas submission is the arcade version).  Different version, but you can see the gameplay similarities. https://www.youtube.com/watch?v=9p6lGDn6H2I&ab_channel=DonAtreides
---------

!!Amanda Bates
She is pretty non-aggressive as the first enemy, but without manipulating her she can go hide right from the start. Machine gun to weaken her down until a missile can take her out.

!!Rexer Ironside
He has poor defense, and poor speed so he goes down quick.  There is a trick shot done near the start that fires before even really getting into the same area as him.  That shot through the hallway actually curves towards the enemy right past two walls since it has some slight homing properties.

!!Alan Striker
Alan is very fast, but also very weak.   The main trick is to get that missile in at the end.  First I use up the missile in the right missile port, in order to be able to fire from the left missile port.  This will make shooting him while he goes to dodge behind the pillar possible.  There is one machine gun shot that the game says is missed, but without that shot the enemy does not have enough damage to die when the missile hits, so not sure what that is about.

!!Hans Baird
Tough high defense enemy with split port missiles.  Takes some maneuvering to get him down quickly, but with Rexer's high missile fire rate it is possible to beat it faster than Alan.

!!Marie Yamamoto
Easily the most nimble of all the enemies due to the game really doing some hardcore input reading and dodging.  Good thing she does not also have high defense.

!!Damon Hargray - Final Boss
This enemy has full bars for Speed, Weapon, and Shield, but he is extremely defensive and likes to run and hide.  Despite being a large form boss, maybe only half of him is actually damageable. All hits need to be pretty close to his center.  At the start there is some manipulation to have him come out from behind the pillar, otherwise he plays avoiding you by circling the pillar.  I was able to remove one of the needed missile shots by shooting him rapidly over 50 times with the machine gun.  His defense is higher than Hans who has the highest player character defense.  Machine gun shots do 16 when Damon has full health, and then 8 health when he has low health, around 30% or less.  All the enemies have a little over 4000 health too, so missiles kill him much faster than anything else.  The missile focused approach is the main reason why Rexer ends up being a little faster than Alan.
