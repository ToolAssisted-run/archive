> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6857M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

*Hippodrome, known in Japan as Fighting Fantasy (フィッシング), is a fighting game developed by Data East and released in 1989 for arcades. (Taken from https://dataeast.fandom.com/wiki/Hippodrome).

*This tas uses the default dipswitch options.

!!Gameplay

The game is a fighting game, but this is a very simple one.  There are a list of opponents, a couple weapons and healing items available to buy, and that is it.  The more opponents are fought the more health so there is a small amount of strategy in picking opponents. After the first fight the Axe is bought and it seems by far the best weapon due to its high damage. The Mace / Hammer weapon is one point of damage weaker, but when doing downthrusts the damage is doubled so it makes a big difference.

In addition to being simple there are a lot of hitbox issues.  The enemy sprites can have gigantic hitboxes beyond the visual sprite, but sometimes it seems the hitbox is just not active at times too.  Attacks get the full area hitbox before there is any visual indication that it is there.  Tasing this is a lot of trial and error at points.  While most of the smaller enemies behave fine, the larger ones are weird.  In particular the Armor Dragon and the Giant, but to a smaller extent the Noble Lamia with its tail.  

There are two bugs I was able to find. The first major one was that opposite directional inputs like Left + Right or Down + Up cause the game to reset. The second is the massive amount of lingering hitboxes that occur when an enemy moves or attacks.  In this game the best defense is a good offense, but sadly the later opponents have massive health pools so that has to be worked around. 

*Hippodrome TAS by Nine spaces in 3:11 : https://www.youtube.com/watch?v=wW4pOclZ39c

*Extended Input Movie with Credits : https://tasvideos.org/UserFiles/Info/638987477311468955

!!Gargoyle
This enemy is chosen first from the initial available opponents since the Noble Lamia was tricky to get done quickly due to its tail, and the Lizard Man I wanted to keep for the final opponent.  The more opponents are fought the more health.  The Jumping Downthrust is the main technique to defeat enemies quickly. Each hit does double damage and in a single jump it has the potential to hit multiple times.

!!Noble Lamia
The tail is large hitbox, so while the player could hit it, it is more trouble than it is worth. With the Axe only a couple hits are necessary.

!!Lizard Man
Bouncing with the Axe and Downthrusting takes care of the Lizard Man fast. There is some slight movement here to attack and get hit at the same time at the end.  Because of how the game scores how much health you have, the less health the faster the next round starts.  This is not easily achievable on most opponents.

!!Scorpion Man
RNG manipulated the enemy to walk forward which saves some time. Then Axe bounce the enemy to defeat it.  There is a trick here where if you let the enemy freeze your position by spitting some kind of white substance at the character the attack animation will stay in place. If this happens the enemy will take constant damage.  This trick is slower than the Axe bouncing however.

!!Armor Dragon
Massive and inconsistent hitboxes are the theme here.  Land to close and the character bounces away, but that range is very large.  Using the Up + Jump to jump extra high, the Axe Downthrust is used to hit multiple times per jump.

!!Wizard
One of the easier opponents since it can be looped with no chance to recovery.

!!Assassins
This is a dual fight with two opponents.  Very unusual movement at times especially when jumping.  They can have jarring jumps in position when interacting with the character, or if they are about to perform their Dragon Jump.  One Assassin jumps on top of the other then it jumps up way off screen and comes down a couple seconds later trying to attack.  These enemies can randomly become invincible for a time too.  They can become invincible when attacking too.  The assassins are very "arcade-like" enemies where it the devs are trying to get those quarters.  

Also isn't it rather weird in a 1v1 arena tournament where it becomes a 1v2 fight?

!!Giant
The Giant is of the same type of rather unfair enemies, but in this case he just has a massive health pool and an absurdly large hitbox.  This enemy seems to have a hitbox that is rectangle, but this sprite is mostly leaning backwards. This makes movement to hit the Giant an unusual affair of trying to High Jump up then right to come down avoiding the huge hitbox.  Doing a normal swing is good for baiting out a rush type attack and to "Clear" the previous attack's lingering hitboxes.  The Giant has like a giant spiky yo yo or something and the hitbox lingers ALL over the place.  

Once the last enemy is defeated the credits play.

!!Potential Time Saves
*There is a menuing error early on that lost 10 frames.  However, when I tried to fix it, the Scorpion Man was unable to be manipulated to walk forward. This erased any potential time save from that. But it could be possible to improve it.
*The last enemy could be defeated with the halberd, which might make a difference with the slightly longer reach. The reach is only a little longer than the axe when using downthrusts though.
