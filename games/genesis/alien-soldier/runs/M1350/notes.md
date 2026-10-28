> **Imported**
> This run was originally published at https://tasvideos.org/1350M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

VISUALSHOCK! SPEEDSHOCK! SOUNDSHOCK!%%%
NOW IS TIME TO THE 68000 HEART ON FIRE!

Alien Soldier, one of the later Treasure games for Genesis, has a similar look and sound to [945M|Gunstar Heroes], but with darker characters, limited ammo, shorter levels, and an emphasis on bosses — 33 of them. I recommend everyone to try to play it at least once before watching this run, just to get a feeling how hard it is. Have fun dying on the first boss. :)

# Aims for fastest real time (ignores in-game time)
# Takes damage to save time
# Abuses glitches
# Manipulates way too much luck
# Plays on hardest difficulty (SUPERHARD) which is default
* Genre: Action/Platform/Shooter
* Emulator: Gens11

The Japan version is chosen over Europe (sometimes labeled "(A)") for the higher framerate and speed. There never was a US release. Don't worry about the story. Your choice is between English and Engrish, but it makes no sense either way.

moozooh once described what a speedrun of this this game would be like thusly:
> games like Alien Soldier: "start-wheep-wheep-wheep-wheep-wheep-boss!-whoosh-bzzt-bang-start…" and so on.

!!! Mechanics

Of the six available, only the two strongest weapons are chosen:
* Flame: Short range and high power against meaty targets. No effect against machines.
* Lancer: Long range, powerful, all-purpose laser.
On the other hand, these weapons consume ammo fast. There are powerups which refill ammo and raise max capacity, but they cost some time to get, so they had to be minimized. Weapons recharge on their own only after they haven't been selected for a while. A depleted weapon fires a pathetic fizzle known as zero force, which is one of the few ways to damage the final boss.

Life saver #1 is the counter force, activated by double tapping attack. This move pushes you backwards a bit, damages nearby targets, and most importantly turns enemy bullets into health! Yum.

Life saver #2 is the "zero teleport", which is more of a dash than a teleport. It is several times as fast as the maximum scroll speed. Epsilon is invulnerable and can pick up items, but has no control of how far it goes or when it stops. If at full health, it does a phoenix attack which does massive damage and destroys bullets. However, it burns off 50 HP so it must be used carefully. Most boss strategies rely on this move, but it's avoided during the stages because it causes slow-motion whenever it hits anything. 

Epsilon may also hover, double jump, walk on the ceiling, and switch D-pad control between aiming (white suit) and moving (gold). Even with such an arsenal of moves, it is difficult to maximize damage output and avoid getting hit because the weapons are hard to aim, the character is not very nimble, and has a large hitbox.

!! Damage

Each boss has one or many vulnerable parts, which take different amounts of damage.

||Weapon||DMG/shot at 100%||Avg. DMG/frame at 100%||
|Lancer force|4160|~73|
|Lancer switch trick|4160|~99 [#1]|
|Flame force| 120|120|
|Zero force|40|20|
|Counter force|640/part|~53/part|
|Phoenix|18200/part|280/part|
[1]Under ideal conditions.

!! Tricks

! Abusing the phoenix
A phoenix that hits an obstacle terminates immediately. But if directed at the edge of the screen, it continues to burn in place. Therefore, the number one mistake to make as an Alien Soldier boss is to stay at the edge of the screen.

The number two mistake would be to consist of many damageable parts, since every part takes damage from the phoenix or counter force cumulatively.

These two in unison spells instant death for many bosses.

! Lancer switch trick
The cooldown between lancer shots is fixed. You can however:
# Open and then close the weapon menu. This lets you shoot again immediately. However, any remaining shot on screen is removed when the menu is opened, and you are defenseless while it is opening. For best results, stand very close to the target.
# Use counter force two or three times between shots to fill out the time.

! Reaiming after shooting
Lancers travel relative to the screen, not the stage. If the camera pans, the projectile follows. You can use this to keep your slow lances directed at a fast target by turning and moving to manipulate the camera.

! Double counter force
To perform two counter forces in quick succession, do a counter force in the air and land before the animation is complete. The second one will execute automatically.

! Counter force abuse
You can use the counter force to remain airborne, gain elevation, and move around in the air. This is useful because you only get one hover per jump and sometimes you need more air time.

! Zipping
One glitch is getting stuck in the floor and being ejected to the right. This doesn't help much because scrolling speed is capped, but is useful when you have a phoenix you need to preserve.

!!! Lag reduction
Except for the obvious way of less sprites on screen, lag can be reduced be mashing against the edge of the screen and ducking. Hovering and opening the menu can increase lag. During the outer space stages, lag is reduced by using zero teleport and counter force.
Dammit handled most (all) of the lag reduction.

It's not exactly lag, but getting hit halts the action for awhile (in addition to the "ouch!" pose), similar to the slow-down caused by the phoenix. Thus, taking damage and attacking with the phoenix must be managed carefully.

!!! Planning and tools
Weapon powerups cost 48 frames to pick up. Because we are aiming for realtime, we had to reduce them to as few as possible. For this reason, we made a test run of Seven force which we suspected was the most ammo intensive part of the game. (It was.)

We monitored a number of different RAM values in this game, the most obvious ones are boss health and scroll position. There is an option to show HP numerically, but the shown health is less precise than the true value and doesn't update in real time. Thus, we left the indicators as bars instead of numbers.

Dammit wrote a lua script to draw many of the parameters on screen:
[userfiles/info/21093501888640683]

RAM watch:
[userfiles/info/21093550024865252]

!!! Levels and bosses

Ingame time chart:

|| Level|| Scroll || Boss ||
| 1  | 00.07 | 00.01 |
| 2  | 00.05 | 00.01 |
| 3  | 00.07 | 00.02 |
| 4  | 00.08 | 00.04 |
| 5  | 00.05 | 00.08 |
| 6  | 00.06 | 00.05 |
| 7  | 00.07 | 00.03 |
| 8  | 00.17 | 00.02 |
| 9  | 00.50 | 00.04 |
| 10 | 00.08 | 00.01 |
| 11 | 00.08 | 00.07 |
| 12 | 00.30 | 00.13 |
| 13 | 00.20 | 00.03 |
| 14 | 00.05 | 00.03 |
| 15 | 00.06 | 00.09 |
| 16 | 00.08 | 00.03 |
| 17 | 00.14 | 00.12 |
| 18 | 00.11 | 00.08 |
| 19 | 00.06 | 00.03 |
| 20 | 00.02 | 00.35 |
| 21 | 00.47 | 00.05 |
| 22 | 00.33 | 00.03 |
| 23 | 00.04 | 00.04 |
| 24 | 00.11 | 00.10 |
| 25 | 00.06 | 00.13 |

Total time: 08.13

!!1 - Jetsripper

Did you try playing the game and dying at the first boss? Good. Then this will surprise you so much more.

!!2 - Antroid

Boom goes the dynamite.

!!3 - Rolling / Shellshogun

First miniboss here, but he dies just as he comes on-screen.

Shell Shogun is the first boss who doesn't have the courtesy to stand at the edge of the screen, but there are ways around that. The walk pattern is the least common move and some luck manipulation was needed.

!!4 - Sniper Honeyviper

Weird boss, weird name. The tentacle takes more damage than the head, in complete contradiction of all video game logic. His weakest point is the back. The strategy with taking damage is an idea we got from a movie by daibakusho_curry. Doing the phoenix early means more hits on his back, but you take damage.

!!5 - Madam Barbar

This crab does the most damage in the whole game. Not the oversized claws as you might expect, which do a metric byte of damage (255), but bopping your head against her body means 320 points of damage.

The standard tactic is hiding in the left corner and wait for the boss to move towards you, but there are actually better places to stand.

!!6 - Joker

Not much to say. You have to stand pretty close for the frog to jump right, so it's hard to reproduce in a speedrun.

!!7 - ST-210-Terobuster

Since we're aiming for real time, we wait a for a bit before activating the alarm. After you have done that, the screen starts to scroll very slowly. The timer could be 1 second lower for this reason, but the boss actually appears faster this way.

We tested a few different methods of lancer attacks (switch-trick or counter force) before arriving at what you see.

!!8 - Flying-Neo

Since we took lots of damage in the previous stage, we need to manipulate big life refills from the enemies here. The boss was very cooperative.

!!9 - Xi-Tiger

Points of interest:
* The flame thrower goes extremely far with the wind in your back.
* We leave the snake alone, killing it can cause lag. (After killing the snake, the leftmost module of the ship sometimes explodes for no good reason.)
* The boss battle doesn't start until the whole ship is off-screen. For this reason it is better to stay to the right as the stage ends.

If you have read the intro, you probably thought Xi-Tiger would be the last boss. Nothing much to say about the fight except that he hits you for a whopping 0 damage before transforming. This sadly delays his transformation, so you don't get to see it.

!!10 - Deep Strider

Previous strategy was to flame the boss, and phoenix him when he jumps backwards to the end of the screen. daibakusho_curry found something much better: you can control where the end of the screen is.

!!11 - Gusthead

The first boss that puts up a fight for more than 3 seconds. The phoenix does not work well because he is so small.

I like how we managed to steal two life refills from the fish just before the boss appears (and all enemies but the boss are removed).

!!12 - Sharpsteel

Nooo not the teddybear! >:(

The boss doesn't appear until you kill a set amount of crawfish, the birds are irrelevant. You move the boat by pressing left and right, which, as I'm sure you've figured out, are the same buttons that makes you walk left and right. This makes the battle a little trickier than it should have to be. We try to start/stop walking and changing direction of fire as seldom as possible, because Epsilon stops shooting for a frame or two.

!!13 - Bugmax

The large snake sub-boss is annoying and creates lag when it dives into the water or explodes. It is best killed out of the water, as far out of the screen as possible.

For the cocoon/butterfly, triple phoenix does the job. We actually have to delay the third phoenix because if you kill it too fast, the game won't advance to the next stage. You can see that its death animation is still glitched (it's supposed to be the wings that fall down slowly).

!!14 - Victor

Zip zip zip boom.

!!15 - Sunset sting

We considered picking up our first health upgrade here, which costs 59 frames but is extremely useful on the spider boss. But then Dammit found a way to refill on the previous boss instead, and we didn't need the upgrade.

The flower boss is smart and avoids the two common pitfalls for Alien Soldier bosses. Phoenix does very little damage, so we have to fry him to death. Lag is pretty heavy with the bouncing petals, and somewhat alleviated by delaying the hovering.

!!16 - Viblack / Back stringer

Viblack (a moth?) could perhaps be done 3 frames faster if the smaller flies were manipulated into missing the player altogether. It is however more important to get the boss to stay in the middle, otherwise he dies up to 19 frames slower.

Mr. Spider doesn't get to do a lot. This method is 230 frames faster than just torching him down.

!!17 - Epsilon1

Epsilon's evil twin, or nemesis, or whatever-something. He is invulnerable while moving upwards in preparation of a swoop down. His body cannot hurt you, but the feet block lancers. There are no refills during this battle, so if you used your phoenix on the spider, you cannot use it here.

The number of lasers he shoots before deciding to go up and swoop down is not constant. He somewhat chases you and when he gets close enough, he starts a new round. Even though this means the boss cannot be hurt for a good while, we still found it better to do once because after a swoop he can be pounded hard the lancers for a good while.


!!18 - Destroyer MK2

This boss has rotating shields. It is difficult to hit the boss while these shields are up. The best way to remove them is the phoenix. But before that, we get as much of a lancer in as possible. The boss cannot be hit during its teleporting animation.

By using the same screen-scrolling trick as for the fish boss earlier, and timing it with the boss pulling backwards before he steps forward, the damage for one phoenix is increased about threefold.

The stars he shoots are a special attack which is pretty rare. It only happens if you get behind him unexpectedly. Unfortunately, he does not die before the attack is finished. It is still faster than any other strategy we found. Another noteworthy thing is that there seems to be some glitchy platforms below the screen.

!!19 - Jampan

During the stage you get to see us embedded in the floor, which works like a fast conveyor belt. Otherwise we would have to walk to save our phoenix.

The boss, which you probably recognize from Gunstar Heroes, is very easy. Just flame and finish with a phoenix.

!!20 - Seven Force

This boss is a lot harder than the final boss. All five forms have as much health as a normal boss, each. Flame force doesn't work. 

! Valkyrie Force

Has four moves:
* Walk
* Kick
* Boomerang
* Rocket fist

We want to keep the number of teleports (no damage) down. For this reason, boomerang/rocket fists are good. They keep the boss occupied for a long while so we can pepper her with lances. Since the boomerang, knees, shoulder guards and some other junk block lances turning around is used to adjust the trajectory of the lances.

! Medusa Force

Has no weak point, and everything does 30% damage. To make up for is you are given plenty of refills for phoenix. There is also an ammo upgrade which is very helpful. You can kill the boss slightly faster by not ending with full life, but that slows down the next form.

There are some weird rules for when this boss starts to be vulnerable. From the start, it does slow backwards turns until it reaches the right end of the screen, when the fight starts.

! Sylpheed Force

This boss usually blocks all your shots with her arms, unless she is in the middle of an attack. Fortunately she has pretty long arms. 

! Artemis Force

Unlike all the other forces, the weak point is not the center ball, but the tail. 

! Sirene Force

This boss is also known as Washing machine force. The current of the water moves you in a circle.
It is possible to get refills from the bombs, but since we're underwater the phoenix cannot be used... so it's just lancer all the way. 

We end this battle with 2 (two) lancer ammo. How is that for planning? 

!!21 - Destroyer Prototype

We had some pretty crappy luck with the asteroids, but finally one of them gave a big health for the boss.

The boss moves around erratically and twirls its arms, which block lancer shots. The attack where the boss goes crazy and starts spewing debris in all directions is the only one which you can refill health on, so it is naturally the one we choose.

!!22 - Shield Viper

Strategy courtesy of Mysterious Japanese Player. The stage does not end until all the parts have exited the screen.

!!23 - Wolfgunblood Garopa

This is a strategy taken from Mr Monkey Man, except that he uses the lancer instead of the flame in the start of the battle.  The flame is only marginally faster. As you can see, the hit detection is very interesting.

!!24 - Missiray

There is a safe spot where the lasers and missiles cannot hit you, but it is better to go as close to the boss as possible, even if it means some extra trouble.

!!25 - Z-Leo

The final boss cannot be hurt by your standard weapons, you have to volley his own projectiles back at him. Phoenix also works, and curiously Counter Force and Zero Force.


[http://img21.imageshack.us/img21/6787/aliensoldier1.png]
[http://img21.imageshack.us/img21/6172/aliensoldier2.png]
[http://img188.imageshack.us/img188/889/aliensoldier3.png]
[http://img35.imageshack.us/img35/619/aliensoldier4.png]
[http://img269.imageshack.us/img269/3227/aliensoldier5.png]
[http://img269.imageshack.us/img269/7178/aliensoldier6.png]

!!! Thanks to

* The mysterious Japanese player, who runs the very helpful Alien Soldier guide page: [[dead link removed]]
* MrMonkeyMan, for making an awesome speedrun which we learned a few techniques from.
* AnotherGamer and ComicalFlop, for constantly nagging me (Truncated) for about 3 years to finish this.
* daibakusho_curry for his movie of non-TAS strategies.
* Upthorn for immediately fixing Gens 11 when we ran into problems.

!!! Personal comments

!! Truncated:

I started this project in *gulp* end of 2005. It has been on hold several times, and restarted once when Dammit joined and found the lancer switch trick. It feels very nice that it is finally done.

Dammit recorded most of the movie. Most of the playing around is his. Also he is very good at reducing lag. He is more or less the reason that this finally got done. My part in this has mostly been supplying strategies, and chop off a few frames here and there when I could.

!! Dammit:

I forget why I decided to TAS this, but I didn't hesitate to consult Truncated, who served as my eagle eye. He knew about all the existing work and strategies, which freed me to concentrate on the task of recording. He also found numerous corrections and improvements. Thanks to the 9 hour time difference and the fact that we think rather too alike, two heads were somewhat slower than one. However, the quality is worth it.
