> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6875M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Superior Soldiers, known in Japan as Perfect Soldiers (パーフェクトソルジャーズ), is a 1993 fighting arcade game developed and published by Irem. It was created during the fighting game trend of the 1990s that began with Capcom's Street Fighter II. Several graphic designers of this and several other Irem titles later moved to Nazca, and designed the graphics of the Metal Slug franchise for SNK. (Taken from Wikipedia). Also...the title is slightly strange since I do not think any of the characters are actual soldiers at all.

*This TAS uses the default Dipswitch settings.

*The goal is "no damage".  Wanted to tas the game perfectly and complete the game as fast as possible with no damage.  It is possible to complete the overall game faster if I had chosen to finish each fight with taking damage.  Post fight the Perfect bonus costs 28 frames a fight.  Trading damage would have to be done on the last hit to minimize time loss. 

*Chose the Japanese version since it includes dialogue, voices, and does not have the silly "Don't do Drugs" logo on startup that the US version has.

!!Gameplay
While it may not be noticeable there is extreme input reading in this game.  The opponent can perfectly block any attack.  It is so bad that the fastest jab from Arabian Moon which hits only a couple frames later can be blocked standing or crouching for stretches of dozens of frames. Typically the idea is to hit the opponent right as a move is used.  The enemy understands the frame data from various attacks and uses it on a frame by frame basis. For example a typical testing period while tasing this game is like this. On one frame while walking forward Arabian Moon gets grabbed and thrown (which they love doing).  Now I could try to use a strong punch at various points, but everything gets blocked, but when I get just close enough the opponent will use an attack that is JUST slightly faster than the one I chose.  So I try to switch to the Weak Punch and that might get through, but usually the opponent switches to blocking since the game understands that the attack would fail.  This game is mostly me trying various things until somehow I get in attacks.  Pretty unfun since normal games or human players are not like this at ALL.

A couple things to try and change behavior is to use a weak attack at the start of the Dash, which sometimes changes things enough to be able to get in a hit.  Moving away a frame or two from the opponent may work too.  Waiting in place a frame might be effective.  Oddly enough jabbing an opponent and getting it blocked usually always opens up the opponent. It does cost a couple frames so tried not to use that too much.  It is a lot of just trying to find something that works effectively.

The strategy here is to try and force the opponent into the corner.  The game has really extreme knockback on hits for both the player hitting and the one being hit.  This is usually mitigated by sometimes using slightly weaker hits, since strong hits give more knockback.  Typically after a hit a dash is used to get in close again to hit quickly.  In addition after taking damage there is a lengthy invincibility period.  Once cornered it is much easier to manage the knockback and get in to hit more frequently.  There does seem to be a very short period after an opponent takes damage where it is very likely to get another hit in.  

When playing casually players resort to abusing errors in the enemy scripts.  For example Star Savior and Meltdown have fireball attacks which the enemy does not seem to be able recognize as threats at long range.  Dinosaur has a grab and bite attack that the enemy does not seem to be able to get out of (it is slow so not suitable to use for tasing).  Arabian Moon can jump forward and punch which causes the opponent to block, and then on land use a throw.  Basically all the 1 cc runs all abuse the enemy behavior somehow since the game simply does not let you as a player play the game normally due to its very inhuman behavior.

Player 1 is used instead of Player 2 since it takes slightly longer to start the game with Player 2.  With Player 2 the starting selected character is one removed from Arabian Moon so an extra movement is necessary to select her.  There also seemed to be no gameplay differences between the two that I noticed. Player 2 has a slightly different color palette though.

The Dash is really quirky in this game.  You can actually do multiple attacks during the dash period if you do attack versions that are quick enough.  Attacks while dashing can also slightly extend the dash.  The Dash has momentum where if attacks are done at the right time the character will slide forward while doing attacks.  This is rather odd to watch when seeing a sliding back throw in action.  Not sure if it is unique to Arabian Moon, but doing a forward sliding throw into a corner will actually reverse the positions of the characters with Arabian Moon being in the corner.  On testing turns out the enemy characters can block attacks that hit their back. Go figure. One consequence of the momentum of using attacks with the dash is that when doing attacks the enemy will often block then while the player character slides forward the opponent will grab and throw the character.  In addition, Dash attacks and then doing Down + an attack will do the normal crouching attack, but the character will be sliding forward while doing it.  This characteristic is used extensively in the tas. 

Knockback is intense in this game.  The harder the moves hit the higher the recovery time and knockback.  For example getting three hard hits in will result in enough accumulated knockback to put Arabian Moon halfway across the stage even when the opponent is against a wall.  Even jabs have knockback to both characters.  This means that almost constantly each move is preceded with a Dash to counteract the knockback. 

Characters get invincibility if hit with a move that knocks them down until they get back up.  I was unsuccessful in getting any sort of juggle going too.

There are three bugs I know of in this game. The first is where you can do a ground throw in the air.  At some point if you jump while around the same time do a throw the character will jump and throw at the same time.  The second is similar, where if the character is dashing, then bumps into the character while jumping and pressing an attack button the character will jump while doing the ground move.  The third I have not seen personally, but in some videos it is shown where the character somehow breaks the round's bounds and the round gets extra width but looks weird.  None of these bugs are used in the tas.

Post battle there are two spots that the Start button needs to be pressed to skip the point countdown.  On the "world screen" (think Street Fighter 2) where it shows the next opponent pressing start for two frames at the right time shortens the introduction.

*Video of a TAS playthrough by ULTIMATE PLAYER【TAS】 :  https://www.youtube.com/watch?v=7a24fytMl3o
*Speedrun page : https://www.speedrun.com/superior_soldiers

*Extended Input file with Initials During Credits: [UserFiles/Info/638997233550517797|Perfect Soldiers (Japan) EXTENDED FINAL INPUT 18551 v1]

!!Character Notes : Arabian Moon
Arabian Moon is chosen for a couple reasons. The strongest reason was watching the existing tas linked above made me realize her potential in a tas.  While that was a playaround it still showed how effective she could be.  The second reason was that she actually plays well compared to a lot of the other characters.  Her moves are not as strong as some of the other characters, but she is fast.  Speed is really important when trying to "out speed" the opponents.  Many of the openings that opponents are hit on are where they are just starting to do an offensive move and she beat their speed.   

Note that all characters have 128 health.  

Notable moves that appear in the tas:

*Back Throw.  Back + Punch near enemy : Backwards throw that the enemy script seems to not be equipped to deal with.  This move almost always works when close in. The problem is that it takes longer than other moves for the opponent to take damage and to recover.  Decent as a finisher against opponents that are being hyper defensive. 29 damage.
*Down + Hard Punch. Fast and close range punch that does huge damage for how fast it comes out. 20 damage.
*(While Close) Hard Punch.  This two part bitch slap has high recovery, but this comes out very fast, and hits in quick succession. 32 damage.
*Dash + Hard Kick : A very good normal type move which has a built in low dodge and is basically a full screen hit move with decent speed.  Recovery is lengthy though unless chained into Lunatic Kick. 23 damage.
*Jump +(wait) + Hard Punch:  This is a great move to do when the opponent is stunned and in the corner since it is easy to follow up with a additional attacks like a Hard Punch. The two part Hard Punch usually needs a dash right before it to get the full two hits in though. 
*(While Close) Forward + Hard Kick : This does a back flip which can hit twice for high damage. Recovery is lengthy though unless chained into Lunatic Kick. 
*Lunatic Kick (Press Kick repeatedly) : This is like a copy of Chun Li's Hundred Lightning Kicks.  This move would normally be quite good since it has a lot of rapid attacks, but the game prevents its potential. The enemy script is so ridiculous it often will often straight up do a grab throw on your character in the middle of the Lunatic Kick special.  The game's knockback is also extreme so usually only one hit can get in unless the enemy is near a corner.  However despite it's flaws it is good when chained after other kick moves since it can shorten recovery time. It seems to be one of the ONLY moves in the game where the developers seemed to have in mind for a combo.
*Down + Hard Kick:  Fast down kick with a good range. This is a good option if the opponent is slightly too far for the Down + Hard Punch. 17 damage.
*Jump +(wait) + Hard Kick : Jumping then when near to opponent use the Hard Kick.  The enemy script does not deal with jumping attacks well at all and this often hits.  In the tas this is a good opener for opponents that refuse to stop blocking at the start of the match. This move can hit Evil Talon twice if done right, however the time to jump and to use the move is costly.
*(While Close) Forward + Middle Kick : This is a three part kick move that each hit does fairly low damage.  With the knockback from the game this move is not as effective as it could be.  Even against a wall it takes some doing to get all the hits in.  Usually only one or two hits get in.  Rare to use.
*Hard Kick: Kick that has a high hit box and can be used to hit an opponent on the way up while jumping.  The only move that can hit Arabian Moon in one round at the end when she tries to escape the corner when trapped.

Notably bad special:
*Moon Slash (Down, Down Back, Back + Punch): This move comes out very slow and I guess is the character's anti-air move.  However the damage is lackluster for how slow it is.  Character crouches then jumps forward a distance that varies depending on the Punch you pressed.  Weak Punch is closest, and Hard Punch version is furthest.  Computer opponents simply do not get hit with this move unless in the air or stunned.  When an opponent is stunned this could be used as an opener, but the knockback is intense and the opponent completely recovers by the time a follow up move can be done. Using this to hit an opponent while in the air, might take up about half the time it takes to defeat most opponents.

!!Meltdown
Meltdown here in particular is very defensive and turtles constantly.  While every character except the last boss is susceptible to throws, Back throws in particular are extremely effective for some reason.  Back throws would be used more, but they cost frames until the character takes damage than a typical punch or kick, and the recovery time from the opponent is large.

!!Dinosaur
Dinosaur has the most normal enemy behavior of the entire roster.  He is actually moderately aggressive and does not turtle that much.

!!Bushidoh
He is not as defensive as Meltdown and can be slightly aggressive at times. Still required a lot of trial and error though.

!!Evil Talon
Very strange large character that moves slow but has fast poke attacks.  This character also has a special throw some does the same kind of thing as Meltdown with walking forward with perfect defense when wanting to throw.  Here I found that dashing forward, jumping immediately and using the Hard Kick in a small frame window will hit the opponent from behind.  This is used from this point on sometimes on enemies being overly defensive.   Evil Talon is so big he can take multiple hits from some attacks like the jump Hard Kick.  Bizarrely enough it looks when he attacks his body parts are vulnerable to taking damage.  This may not sound odd on its face, but considering his size a character can be several body lengths away and just beat up his arms when he tries to punch. Although it would probably have to be in a tas since despite his size his attacks come out super fast.

!!Star Savior
Maybe the hardest opponent in the game?  Highly defensive of course with the input reading and lots of fast attacks.  This opponent required a lot of weak kicks and punches to even be able to hit him quickly.  

!!Broadway
Obnoxious highly defensive behavior similar to Meltdown.   I suspect this is because Broadway also has a special throw attack and the game wants to use that.  She walks forward, but will block on the next frame if attacked mostly when she wants to throw the player.  She sometimes will use fast attacks. The one grace here is that almost all of her crouching attacks are low hits and she can still be hit from Arabian Moon's Dash Hard Kick attack which has an inbuilt low dodge.   

!!Arabian Moon
Arabian Moon is weirdly jumpy.  She will sometimes just jump in place and kick.  Rather the difficulty besides the usual input reading is preventing her from getting in the air.  Having her jump wastes a lot of time.

!!Seleous
Seleous is not much different from the other characters in the game as far as tasing goes. The only thing is that he seems to not be throwable.  Any attempt at throwing causes the player to be thrown.  Interestingly enough this enemy is supposed to be a Bydo or something like from R-Type?

!!Final Thoughts
This game was a missed opportunity for IREM.  The game has nice artwork, the music themes are decent good, and the character designs are not too bad.  If the developers had properly made the enemy scripts act more typical for a fighter game this would be fun to play.  However as it is this is a pretty miserable experience to play casually or tas.  The extreme input reading and the very defensive behavior makes the game unfair and unfun.  Guess this one must have flopped hard since this was the only fighting game made by IREM for arcade. 

!!Potential Time Saves
*Meltdown, the first opponent might have a second or two improvement?
*Maybe a different character would be able to complete this faster?
*Better RNG.
