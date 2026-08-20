> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5839M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

*Pit Fighter (1990) is a well known arena fighting  beat em up type game that was one of the first to use digitized live actors.

*This TAS uses revision 2 of Pit Fighter.  ROM has the green checkmark in BizHawk for being a verified good dump.

*I see no difficulty settings to adjust in dipswitches so leaving at standard difficulty.

*Depending on the version of the game there can be up to three player characters facing off against three computer opponents.  This TAS uses the second revision of the game which does support three player characters, but only one player is used since it is faster.

*Loading takes awhile for this game for some reason so I reduced that in the video linked here.

 
!!Gameplay
There are 3 playable characters.  The first is Buzz, a slow wrestler type character.  Ty is used since he has a strong cancel-able elbow that has the highest dps in the game by far.  The elbow seems to have been nerfed a bit in later versions.  Ty also has stun lock trick.  Kato, the third select-able character lacks the strong elbow attack, but he also can stun lock enemies even easier than Ty. 

The game progresses through a series of one round matches where opponents may reappear later on.  Intersperced between the matches are Grudge matches where players fight player characters. If doing single player you have to knockdown a cpu. If multiplayer you fight against the other players.  Meaning if there are two players, on the next match there will be two opponents.  Right before the last boss there could be an Elimination Match if there is more than one player. This is the main reason why not more than one player is used since as far as I could tell the player characters are not susceptible to the stun lock, and they would not be able to save enough time to make up for a full Elimination Round and its point calculation.

The arena that you fight in for the matches are all the same size, but vary slightly.  Around the left and right side of the arena are walls, but in front of those walls are background audience members.  These members are not interact-able unless they come out of the crowd.  When they do that they try to attack the contestants.  RNG dependent on if, when, and where they come out. 

The arenas usually have a variety of weapons and barrels to pick up and use or throw.  The most important item is inside of some of the barrels.  And that item is the powerup.  The powerup is used in the dual Chainman fight, and the last boss.  Otherwise you lose time getting it.  Note that the fastest way to get the powerup is to get lucky for an audience member to come out to attack you and you can throw the barrel against them. This makes the item come out and be able to picked up.  The rounds that have weapons right near the starting enemies are all manniped out, because it causes the enemies to wander off towards them, and the pickup animation has lots of i frames.


!!Player Abilities 

The players have three buttons.  A jump, a kick, and a punch.  These buttons can be combined in various combinations to do a grab, a dodge, a jump attack, or a special attack.  The dodge attack can also be used when pressing down for them to duck.

There is a run type motion that acts as a quicker way to move left or right which is fully cancel-able. 

There is a strange move that happens when there are two opponents on either side of the player. Ty will jump up and do a knee attack. This attack is very short range, weak, and very slow. To put it bluntly it sucks.

Players can pick up and use weapons in the arena or throw barrels.

!!Canceling Moves and Stun-Lock

Pit Fighter does not properly check for character animation states.  Pressing other buttons often is enough to change the move to another one.  This is why Ty's elbow attack is so good. The move is being cancelled every 3 frames with another move, then used again 3 frames later.

The game also does not check the states when they are close together.  This means after pressing a button you can usually do another move even if you are not in the correct "state".  This is used to save time by jumping and picking up the powerups which would normally not be possible.  Also a lot of the post enemy defeat scenes show oddities like mid air three button specials for entertainment.  

The forward forward Cartwheel/Roll/Flip of the respective characters is able to break out of almost everything.   This makes it possible to breakout of using Ty's special two hit special. Ty's first hit will stun the opponent for a while and then the second hit will always hit if the first does. When you cancel the attack after the first one using forward forward, the game will have some frames where the opponent waits. However, the AI breaks if you do it while the opponent is falling. If you cancel after the first hit while they are falling, then rapidly hit with the elbow, they will not be able to do anything until their entire health bar is depleted.  Calling this the Stunlock bug.

The Stunlock using Ty can be a bit tricky since not all players are easily susceptible to it.  The enemies have three type of knockdowns.  They can fall forward, back, or get popped up into the air and land further up in the arena.  The enemies have different timings for their knockdowns so some are too fast to catch them as they about to fall.  Mad Miles in particular needs to get thrown against a wall in order to Stunlock him since that gives just enough time to hit him with the first hit of the special to cancel it.


!!Enemy AI
Enemy AI was very challenging before the Stunlock bug was found.  Originally I was RNG manipping the elbow hits to not knockdown the opponents unless they would be defeated before falling down.  Everyone of the enemies would try to break out of the elbow cancelling, but edging away, or by just using some kind of invincible counter, or invincible escape move like a roll.  Once the Stunlock was found and used all those RNG elbows went away.  That is the main reason the Rerecord count is so high.  

In the Grudge Matches found that elbowing while airborne is a guaranteed knockdown.  The other hits are all manniped to cause Knockdown. Once the three Knockdowns are done, the match is over.

!!Score Calculation
This is tricky. The score screen for the match adds piles of money, but in sections.  Pressing the right buttons at the right times accelerates the stacking of the money. Grudge Matches score screen have different times for buttons than the standard matches.  

!!Additional Resources
*Speedrun of the game in Any% Arcade in 7m 26s 780ms by Janet
https://www.youtube.com/watch?v=jPf5lQ6WcUs
*Good guide on the game on Gamefaqs.
https://gamefaqs.gamespot.com/arcade/583791-pit-fighter/faqs/40149

!!Other Oddities
*Sometimes the throws will throw the opponent further and do more damage. Not sure why.
*Enemies can pick up the powerup from nearly two character widths away.
*Buzz can roll out of doing his special grab almost immediately.  This makes the opponent get lifted into the air and thrown with no one doing the actions.
*The Chainman can sometimes hit you and cause you to pop up into the air in their direction.
*Dual Chainman fight I believe I got hit twice by two bullrushes. My character popped out of the screen and then fell through the top of the screen and down and died. 
*Completely bizarre glitch in the Warrior fight.  I was on the left side picking up the powerup, but the powerup disappeared.  Then moved towards the Warrior enemy who was offscreen, and the powerup just appeared in the middle of his chest and fell to the floor. No idea what that is about.

!!Enemies
Just grouping them into similar categories based on how the fights usually go. 

!!Executioner / Southside / Heavy Metal
Manip the pop up stun then use stunlock. Then elbow cancel into oblivion.  Stunlock is described above.

!!Angela / CC Rider
Forward fall is slow enough to use that for the stunlock.

!!Chainman
Crazy enemy with his bull rush attack that does constant damage while active. If you are attacking there is a bug where all the damage hits at the end, and it does half damage to your health.  If he has powerup it will be OHKO.  His bullrush attack is also a counter move that he can do immediately on any hit. Good thing that he can be stunlocked.

!!Mad Miles
The only  unit whose falls are too fast to catch for the stun lock. To stun lock him he can be picked up and thrown against the wall then he can be hit with that first special hit, cancel it. Then you have to position yourself just out of range from the audience otherwise you get passively pushed away and elbow away.  

!!Dual Chainman
While they are breaking free from their chains there are barrels off the side, and that one I chose has a Powerup that makes your strikes much stronger.  I go up and use an audience member's face to break the barrel. Then move down left a little then use the bizarre nature of being able to jump diagonally towards the enemies while also  picking up the powerup.  On land I cancel the powerup animation by doing a cartwheel with forward forward.  Then take on the Chainmen one at a time.  I could not get both of them at once.  Although it should be possible I was having trouble getting it.  

!!Warrior
Normally this guy is very difficult but essentially the same strategy is used as for the Dual Chainman. Get the barrel, break it using an audience member, jump up, then stunlock the last enemy.

!!Possible Improvements
*Damage both Chainman at once quickly.  
*Maybe another version has things that would make it faster. There are 9 versions listed too.
