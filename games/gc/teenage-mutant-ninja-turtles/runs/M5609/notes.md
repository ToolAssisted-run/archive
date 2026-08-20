> **Imported**
> This run was originally published at https://tasvideos.org/5609M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Playlist with all TAS videos: https://www.youtube.com/watch?v=_tOu5TuR8Do&list=PL3V0eG1j-1vKfkxneY3XydESL0dxPb2JT

Dedicated to the 20th Anniversary of Teenage Mutant Ninja Turtles 2003 TV series and the first game of Konami's trilogy. Well, the first episode was shown on February 8, 2003, and the game was released on October 21, 2003, so the dedication is not date-accurate. Anyway, it's 20 years, it's enough!

TMNT 2003 is a regular 3D beat 'em up game where you fight familiar enemies and characters from the cartoon series area by area, stage by stage. This TAS does it in the fastest time and completes the Story Mode of the game.
 
!! Game objectives

* Emulator used: Bizhawk 2.8 with Dolphin 5.0-16426 core [https://tasvideos.org/Forum/Topics/23347?CurrentPage=1&PageSize=25&Sort=CreateTimestamp|implemented] (syncs on Dolphin 5.0-16426)
* Complete Story Mode
* Character: Donatello
* Difficulty: Easy. The only difference is the health of enemies.

Game hashes are specified in the [https://tasvideos.org/3125G|respective] page.
Here is a [https://ibb.co/Zxw5TQx|screenshot] of Bizhawk settings for Dolphin.

!! TAS vs RTA rules

An RTA Any% on [https://www.speedrun.com/teenage_mutant_ninja_turtles_2003|speedrun.com] is not actually a New Game speedrun. It completes the whole game beforehand and has all the power-ups since Stage 1, making about 50% of fights trivial because each squad can be killed with a single strong attack.

TAS starts a new game for no progress at all, and the turtles' attacks are weak. For example, Foot Ninjas don't die from a single strong attack, unlike in RTA.

!! Character and Combat

__Donatello__ was selected as the easiest turtle. He wields a Bo stuff. His attacks have the longest range, and his two main moves (1st Weak Attack move and the strong attack while standing still) have a wide swing spectre, so he can damage all enemies around him.

! GameCube movement controls

__D-pad__ and __Left analog stick__ make a turtle move in the respective direction. 

D-pad has 8 directions in total. The turtle always runs. 

Analog stick provides a somewhat range of directions. A slight stick leaning makes a player walk. A hard leaning makes a player run. For each stick quarter, a player has 
* a straight direction, 
* a slight to-the-left/right direction,
* a variation of directions, if you point for the specific walking area of the quarter: by looking at clocks, it's approximately within 1-2, 4-5, 7-8, 10-11 hours. It's not pixel-correct. I'd say, each quarter has 8 directions to choose from. The directions between a slight to-the-left and the closest walking direction cannot be covered.

__Dash __is the movement, which makes you cover a short distance swiftly. A player can perform a dash at any time, in the middle of any move or combo, unless they are in mid-air. Dashing is faster than letting a character finished its move, except for turnarounds (dashing is just ''a little'' faster). While dashing, a player is invincible unless a level hazard rapidly hits it.

All the pointing is done with the respect to the camera's angle. Since the "precise" directioning is restricted to specific spots of walking areas, I often end up changing directions while covering big distances.

While doing combos, you can manoeuvre left or right (like in tank control), which lets you cover more area to some extent. There's no "faster" turning here, so the D-pad was used for manoeuvring.

! Combo attacks

For simplicity, the following legend is used:

A - weak attack

B - strong attack

(A-A-A)-B, dash, B - a combo, where the first 3 attacks are waved in order to hit an enemy with a specific combo move as soon as it becomes vulnerable, followed by a dash, followed by an idle strong attack.


;A-A-A-A-A: The main combo of 4 hits, which doesn't knock the enemy down. 
* __Hit 1__ is a wide short-ranged swing in the counter clockwise direction. Also, used individually through the whole game as a finishing hit.
* Hit 2 is a straight hit.
* Hit 3 is a top-down hit. Can hit an enemy above you. Takes a little longer than other hits to be performed.
* Hit 4 is a narrow long hit. Cannot hit an enemy above you.
* Hit 5 is a Bo swing. Not wide enough and takes a lot of time to perform, but it's faster than dash+B. Used only against mousers in Stage 6. This swing can hit a falling target twice with the help of manoeuvring.

;A-A-A-B: 
* Hit 3 has a shorter range and duration.
* Hit 4-5 is a legs-spinning move (side-flip). Each leg hits individually. The rear leg knocks down the target.

;A-B: a short combo, which ends with a wide stunning Bo swing. 2 hits. The combo is slower than A-A-A, but Donatello doesn't move forward that much, which was necessary against mousers in Stage 2.

;A-A-B: a combo, which ends with Donatello kicking enemies with both legs while using his Bo as a vault. It's slower than A-A-A-A. Unused in the TAS.

;B
This is a strong attack, when Donatello prepares and does a wide clockwise 360-degree swing which knocks enemies down. If Donatello has been running for 16+ frames, he does a charged variation of the move: he exhibits his Bo forward while sliding.
* This move has a special trick. When the preparation is done, if a target gets hit by the Bo on the first hitting frame, Don preliminarily does a very quick 360-degree swing hitting all the targets within the range. As a result, you can hit 6 targets in 6 frames.

;Air Juggling
A single attack that kicks an enemy to the air. Used to finish fallen enemies.


When an enemy is hit, a specific cool-down period has to pass before it can be hit again. If a target can't be knocked down and is enough wide, the same move can hit him multiple times. 

When an enemy has fallen down, you have a small time gap to hit it with an attack or a shuriken. Then it immediately stands up and its pain animation is played. 

!! Damages (for Easy difficulty)

! Constant damages

* 18 hp - shuriken electric - to human, green mousers
* 25 hp - shuriken electric - to machine
* 8 hp - shuriken regular - to human, green mousers
* 3 hp - shuriken regular - to machine
* 25 hp - shuriken explosive (hit)
* 20 hp - shuriken explosive (explosion). Bosses
* 4 hp - an enemy is knocked down by a falling enemy or an urna (Stage 4)
* 30 hp - barrel explosion. Humans can take 2 damages from a barrel, if they were close to its explosion spot.

! Explosive shurs

When an explosive shuriken hits an enemy, it deals 25 damage with a hit. This creates a small explosion in front of it. 2 frames later, the explosion deals 20 damage. It propagates 5 frames in total, so some distinct targets can catch it too.

There is a rare bug with bosses (Razorfist, Dr. Stockman and Shredder) when they take double explosion damage on the same frame. I think it has something to do with their position at the moment of explosion. Maybe they have 2 spots which you can damage and the explosion reaches both of them, but it requires autoaim to be of a high precision.

When stunned, an enemy falls down from any hit. That's why explosive shurikens are inefficient after electric ones. It concerns Foot Tech Ninjas on Stages 3 and 4.

! Dojo trainings

You receive upgrades on completing these stages. Below is a spreadsheet of damages.

||-||No Dojo||After Dojo Progress||After Dojo Ordeal||
|Strong attacks, Jump attacks|20|25|30|
|Strong attacks|20|25|30|
|Strong attack in combos: CRASH hits in A-B, A-A-A-A-A, A-A-A-B|15|20|25|
|Weak attacks + CRASH hits in A-A-B|10|15|20|
|Air juggling|10|15|20|

!! Enemy Spawn mechanics
Throughout the game, you kill enemies, the game spawns new ones in the same or a different spot and you do that iteratively until an area is finished. A squad can be spawned fully or partially (with the use of queue):

1. Partial squad. Say you have 5 enemies, if you kill 2 of them, the game will spawn 2 more enemies, until the queue for this squad is empty.

2. When the queue is empty, the next squad won't spawn until you kill all alive enemies.

When you kill an enemy (or the whole squad at once), the game initiates a procedure to spawn new enemies and uses some kind of a framerule mechanic for it. A keyframe happens every 30 frames. 

In case there are enemies in the squad queue, the spawn happens on keyframes. If an enemy disappears from the radar and the counter changes, another enemy can spawn in on the same frame. If you make extra frags quickly, the upcoming spawn takes this into account and spawns more enemies accordingly.

In case of finishing a squad, on the other hand, the spawn also skips the nearest keyframe before which 1+ enemies have vanished, and spawns new group of enemies on the next keyframe after the nearest one. As a result, the duration from a vanished enemy to a spawn of new enemies is 31-59 frames. As a result, you can kill enemies more leniently, which means, it's not absolutely necessary to finish each group of enemies in the fastest time. 

In rare cases, the game, besides a keyframe, also requires the player to enter a specific area and only then spawns enemies.

After you eliminate the last group for a specific area part, the game removes a red barrier and you go ahead.

The game has a limit of how many enemies can be on the screen (5 people or 7 mousers or a various combination of a similar "weight") as well as a limitation of specific enemies (for example, only 2 Foot Tech Ninjas (invisible ninjas) can be present at once).

! Mousers can ruin the spawner
Mousers "weight" less than any other enemy and there's one bug on this regard.

Sometimes, the game decreases the limit because of the wrong spawn. For example, on Stage 1 Area 3, the spawn near the blue car, destroying mousers (2+2+2) as fast as possible makes the game's limit stuck with spawning 4 purple dragons and 1 mouser until the end of the area. Since the game usually spawns 5 dragons at once, you gotta kill 4 dragons, wait for the 5th one to spawn in and kill him before you can go further. It slows the speedrun really hard.
In other words, sometimes you must wait for a mouser to spawn before you can hit it, to keep the enemy limit at the maximum.

Here is a [https://youtu.be/6s-IP0y6TxI?t=659|demonstration], how a speedrun get caught by this bug.
It destroys two mousers and finishes the 3rd one, but since it wasn't done in the same framerule, the game spawns only 2 more nanobots. After 4 nanobots are destroyed, only then the last nanobot spawns in, and this goes on until the area is cleared.

!! Enemy show-up methods

There are 5 methods of enemies showing up on a battle area.
* ''Walking out of a hole'' - Mousers in Stage 1. When a mouser walks out, it's invincible. You must wait until covers a specific distance before you can hit it. As soon as it covers it, its invincibility is gone and it either continues patrolling or switches to its battle pose.
* ''Materializing'' - Purple Dragons, Foot Bees. Invincible while their show-up animation is played.
* ''Jump down from the roof/sky'' - Mousers, Foot Ninjas, Mutants on Stage 5. No invincibility time.
* ''Jump in'' - Foot Tech Ninjas. Invincible during the show-up animation. Normally, you can hit them after they become invisible. Some spawn points use scripted spawn delay (20 frames) for the 2nd ninja in a duet.
* ''Pop up from the ground'' - Mousers, Nanobots, Mutants on Stage 6. Almost no invincibility time.

The hitbox and health of an enemy are initialized 1 frame before the radar counter changes.

!! Purple Dragons spawn randomizer

The only enemy type which the game randomizes when spawning enemies are purple dragons (mobsters). They keep a variety of 2 types. 
Stages 2 and 3 involve a stronger type of dragons (orange), which doesn't die of 1 strong attack, so it was necessary for me to manipulate the least number of them to save time when possible.

According to my tests before and during TASing, the game seems to generate a set of possible group variations, depending on an RNG value when the last enemy has vanished, or maybe at a specific moment after it. By doing non-movement actions, you change that RNG index and, during pre-spawn period, you select the variation to spawn, depending on the frame you have initiated an attack or a jump.
The RNG change is initiated by making a sound effect or triggering a voice line. Strong attack is more efficient on this regard because 1 frame is enough to do that, which helps in situations when I don't have enough time to reach a required position. 


!! About Mouser robots

Enemies are described in this [https://tasvideos.org/Forum/Topics/15145?CurrentPage=1&Highlight=522397#522397|post], but there's a solid portion of info on Mousers.

__Mousers __have a specific damaging mechanics. When they get hit by an attack which knocks down, they spin backwards like snooker balls. The velocity of a spinning mouser goes down. 

When a spinning one touches another mouser, it slides back a little and enters its stun animation. At this moment, mouser loses 4 hp (low speed) or 8 hp (high speed). Then, a spinning mouser hits that mouser again and again. If its HP reaches 0, it goes into the spinning state as well. That's why hitting 2-3 mousers results in the whole crowd getting destroyed.

It's possible to destroy a white mouser on Stage 1 with an air juggle attack too, but the condition is not clear. Sometimes they die, sometimes they don't.
When a spinning mouser gets inside the area of another mouser which is about to spawn in, the victim takes 16 damage per a frame. That's why on Stage 6 some mousers die as soon as they pop up.  

Green mousers for some reason take human damage from shurikens (8 from a regular shuriken, 18 from an electric shuriken).


!!! Stage by stage comments

! Stage 1 Area 1 - 0:30

This area is trivial. Each __Mouser Robot__ has 12 hp, which means, if one gets pushed back by another falling enemy, it dies, unless a mouser falls back at a barely crossing trajectory. That's why the whole squad of mousers gets destroyed of a single attack. Mousers hit each other like snooker balls.

Squad 1. When a single mouser dies, one extra mouser fall down from the ceiling when the framerule happens, so it's not necessary to kill all the squad in one hit.
The hit area of Donatello's swing is like 2 metres high.

Squad 2. Matched the timing to make the rocks fall down just in time when the animation of mousers coming out is over. Hitting them with the bo doesn't save time.

Squad 8 (last one). Hitting is faster than matching the timing for rocks to fall down.


! Stage 1 Area 2 - 1:49
The two __Purple Dragons__ variations (__green __and __white__) have 18 hp. They die of a single strong attack or an electric shuriken. 

Some squads where difficult to kill as soon as they become vulnerable because of the mechanic of falling enemies knocking down the enemies standing close to each other or behind them. 

Regular shurikens are used to detonate barrels.

Stage 1 has 3 sets of electric shurikens while a turtle can store only 2 of them, which means I have spend 10 shurikens on enemies. I tried to select separated targets, so I wouldn't spend time on movement and attacks.

! Stage 1 Area 3 - 1:36
The area features a case near the blue car where destroying mousers as fast as possible leads to a spawn bug described above.

On this area I also discovered that you can start doing an action 1 frame earlier if you don't use movement. I wouldn't say I have lost any time because of this, but I decided to use this tactic from there on for more reliability. 

Some manipulations were done in the boss fight, because Dragon Face sometimes retaliates after being pushed away or taking 3 hits.

! Stage 1 Area 4 - 1:45
This is where RTA kicks in. __Foot Ninjas__ have 30 hp and without passing all Dojo stages, you cannot kill one with a single strong attack. In most cases, "A, dash, B" was used to kill small groups. 

The spawn placements also made this area difficult. The icing on the cake is that ninjas love doing backflips, which restricted me in time in doing finishing moves. A lot of luck manipulation was used to make them not do a backflip, but it's still not perfect.

! Stage 1 Area 5 - 0:34

The beginning features the biggest continues spawn group in the game, which is a big set of mouser spawn points. It's known how many mousers from which hole in which order will come out. Maybe it's not completed in the fastest time, but I tried hard.

Boss: __Giant Mouser Robot__ (540 hp) 

Each electric shuriken deals 25 damage, so that's 20 shurikens and a single strong attack. When the game locks your aiming on a target, you can throw them much faster. This method saves a lot of time. 

! Dojo 1 - 0:02
The initial start moment contained the most appropriate makimono placement for TAS. I don't think a better placement exists.

! Stage 2 Area 1 - 1:09
This stage involves exclusive enemies: nanobots (or nanorobots).

__Blue nanobots__ (30 hp) often attack, even if the player is far away. Luck manipulation works worse comparing to making ninjas not do backflips, and still it wasn't an issue.

From now on, regular white purple dragons are replaced with yellow ones. __Yellow Purple Dragons__ (24 hp) take more time to spawn in (81 frames). It took a lot of time for me to manipulate squads to have mainly green dragons, so I could kill them in 1 strong attack. The spawn randomizer is also described above.

In case with __green mousers__ (24 hp), they have enough HP to survive a strong attack and it's not possible to hit a spinning and lying mouser, so the health of "front" mousers, which will push other mousers, must be drained first. That's why "A+B" is used for it against large groups. You don't move very far, yet you deal 25 damage.

The area is not software-optimized well. These loading sequences are inevitable on GameCube port. 

Boss: __Nano Monster Ver.2__ (140 hp)

The barrel explosion is used for better variation. It doesn't save time because Nano has to finish his animations before breaking down.

! Stage 2 Area 2 - 1:38
Subway and beyond areas involve big squads of green mousers. Since they cannot be destroyed in a single strong attack, I had to use a slower "A-B" combo to drain hp of all front mousers while not moving very match to retain their spinning trajectories, so the whole crowd would be destroyed.

The spinning combo ending also came in handy to destroy single enemies quickly, if I had enough time to perform it. This includes single mousers and blue nanobots inside mouser squads because it takes some time for destroyed nanobots to explode.

I had to spend the electric shurikens provided here, because Area 4 provides two pick-ups at the beginning, and you can't carry more than 2 sets of electric shurikens. 

I got bad luck in the end regarding yellow punks. Maybe there was a way to avoid them, but I didn't manage to pull it off. 

! Stage 2 Area 3 - 0:35
I had to begin the area with some delay to manipulate the spawn of 5 green dragons. That saved a lot of time. Unfortunately, all other spawns were not that lucky, but I managed to pick optimal placements for yellow dragons, so it would be enough to do "A, dash, B" thing to kill a crowd.

Luck manipulation was successful only for the very first group spawn. Unfortunately, all other groups seem to be limited to manipulations. I cannot trigger 5 green dragons. For some groups, even 4 green ones.
Also, in this area, I had to wait for the shuriken animation to over before throwing a new one. The game should lock you on the target. Maybe it has to do something with height difference, because, in case with bosses (like Mouser and Nano), you throw shurikens at their middle sections, not their legs.

! Stage 2 Area 4 - 1:11
A new guest here: yellow nanobots. They have 48 hp.

I acquire 20 electric shurikens at the beginning. I spent some time researching and decided to spend 4 shurikens on two most time-consuming yellow nanobots because the time saves I got override possible time save in boss battles in Area 5. Most time was save from a singleton nanobot.

The spawn of 5 green dragons after the first squad of yellow nanobots was very lucky.

Mousers section was an act of almost perfect geometry. Unfortunately, I didn’t manage to make both barrels land in the exact way so both mousers would push other mousers back so both lines of mousers would be destroyed. The final strong hit was also imperfect, but I managed to destroy the only survived mouser with regular shurikens before other mousers blew up. 

! Stage 2 Area 5 - 1:52

Boss: __Nano Monster Ver.2.1__ (240 hp)

The first boss battle was completed with shurikens. Nano has 240 hp and it's placed far away from me. If you attack it outside the screen, it won't wake up and play its running away sequence at the end of the fight.

Some time can be saved if there were only green dragons in squads, but not much time was lost.

After the big lava pool, near the squashing mechanisms, there are 3 barrels which would theoretically save time in destroying 6 yellow nanobots, but the pipes around them have wierd hitboxes and the barrels cannot be thrown anywhere. It's a trap for the player.

It might be possible to catch a right sequence for the squashing mechanisms and dash through them without losing time, but it's complicated task for me to figure out their nature. Nevertheless, I passed the last squasher as soon as it's enough open for me to dash through.

Boss: __Nano Monster Ver.2.1__ again (240 hp)

The second boss fight was formed around Nano boxing animation because it's the fastest one. 
With minor time loses and manipulations, it's possible to destroy it with 10 shurikens with no boss animation played, but as I said earlier, I saved more time of destroying time-consuming yellow nanobots and 6 shurikens with melee attacks were just enough to drain all its health near the end of its animation.

! Stage 2 Area 6 - 0:25
Oh boy, you haven't learned anything!

Boss: __Nano Monster Ver.3__ (540 hp)

It has its own table of damages. 

* 33 hp - barrel explosion. If you're lucky, barrel deals damage 2 times.
* 25 hp - electric shurikens
* 24 hp - air attack (head)
* 22 hp - air attack (chest and leg area)
* 20 hp - air attack (arms)

24-24-22-22 = 92 - from 1 air attack, if on the top floor

22-22 = 44 - jump attack from the ground

By math calculations, Donatello can destroy it in 6 "full" jump attacks which deal 4 hits each. 

It's difficult to manipulate Nano's actions. The main priority was to prevent it from exploding because you must keep the distance for a while. It's invulnerable when it performs an attack, and it can do it as soon as its previous animation is over to become invulnerable once again. 

The luck manipulation was not on my side again. I managed to get 3 hits from one of the jumps and had to jump at the ground to add up 1 more hit. Let's consider it 6,5 jumps. 

! Stage 3 Area 1 - 2:04

This area has the most complicated enemy placements for New Game tactics. It involves a lot of dashing and collecting enemies, but I’m still not sure if I saved maximum time. The situation got a little lenient at times thanks to continues squads, so I was more focused on killing 2-3 enemies to make more enemies appear, especially for foot-dragon mixtures.

! Stage 3 Area 2 - 0:29
That section was cumbersome regarding the framerule. Eliminating squads of 2-3 katana ninjas, when done in the fastest time, is just enough to cut 1 keyframe (30 frames) from spawning new enemies. The concentration of 56-59 frames periods for spawning was high while making this TAS, but I managed to save time where possible. 

! Stage 3 Area 3 - 2:37
It would be a good idea to lure ninjas and knock a landing Foot Tech Ninja with them, but unfortunately, it lacks time to make him fall in the right direction, so I would lose more time reaching the next fighting spot in time. I managed to do that only once, at the very last squad, and saved only 9 frames.

Boss: __Evil Turtlebot Ver.1__ (240 hp)

That’s not really clear what Konami was willing to do with Turtlebot, but its AI works in a weird way. When he spawns in, he’s initially invincible for 232 frames. He also becomes invincible after being knocked down for 61 frames. After performing an attack or a combo, he stands dead on his tracks for a short while regardless of the outcome. When it runs out of health, its complete fly-away animation takes 283 frames before the arrow pops up.

I’ve been examining possible strategies, how to spend exploding shurikens and how many of them I should spend on 2 Turtlebots, and I ended up beating the first one with combos and dashing because I found killing a Foot Tech Ninja with exploding + electric shurikens quicker in terms of time saving.

! Stage 3 Area 4 - 0:46
This is my favourite area in Stage 3. This area looks like a tile 3x3 with 5x5 squares in each cell and it’s filled with explosive barrels. I don’t know if the developers were conceived this, but the whole area can be cleared with barrels only. Except for the first squad where regular fighting is faster.
Thanks to the smooth explosion propagation, human enemies can be hit twice, which simplifies the task of eliminating Foot Tech Ninjas.

! Stage 3 Area 5 - 1:09
Not much to say about this area. I got lucky with both of the swinging hooks. I had to keep 2 explosive shurikens for Turtlebot and spent the extra ones on Foot Techs before the second hook. The ones near the exit were beaten with strong attacks, thanks to the narrow area.

! Stage 3 Area 6 - 0:13
Finally, I got to the end. We know about the invulnerability thing from the first Turtlebot encounter. That’s the main reason why I was collecting those regular shurikens, because I have enough of them to drain most of its health and since I got 2 explosive shurikens, I can drain the rest of its health quickly. There’s 1 frame gap when you can hit almost fallen Turtlebot with a shuriken, but you gotta slow down. That’s why I threw explosive shurikens at the end. 

Thanks to the cutscene before the fight, I was invulnerable to the attacks at the beginning, which let me push Turtlebot towards the corner so I could keep the right distance to have this frame gap. 

! Dojo Progress (Dojo 2) - 0:09
Comparing to Dojo 1, the luck got negated, so I had to bruteforce the whole thing.

For this Dojo, Turtle’s Home location is divided into several spawn zones where Foot Ninjas spawn in. There are 4 squads in total. A squad contains of 3 ninjas, but it can be decreased to 2 of them to match the usual limit of 5 humans. The first spawn point is selected at the very beginning of the training, so the only way to manipulate it is to skip frames on Stage Select screen, so I had to do that to have the first squad close to me.
For other squads, the spawn points are also selected at random. It depends on the moment when the last ninja in the squad is vanished as well as your attacks in a specific time gap. Usually, doing a strong attack 16+ frames before a squad jumps in results in it having spawned in a different spot.

If you have a squad on the field, then an additional squad is spawned. I don’t know the actual mechanic of it, but it seems like it spawns in in 3 sec, if the previous squad hasn’t been destroyed yet. Of course, waiting for so long is pointless, so I eliminate it in the fastest time and the game spawns a new one as soon as the next time period is in order. There might be a special case to have 2 squads quickly, but I didn’t manage to reproduce it. There’s no point in having a ninja running after you to somehow manipulate a spawn to be bigger or quicker because it’s limited to 3 ninjas to you still end up having 4 squads spawned in.

I have bruteforced 25 spawn setups and, excluding possible time loses on getting close to the first squad, I managed to get 0:50:23 (+- 10 ms) time remaining because beating 4 squads (3+3+3+1) sequentially as soon as they appear is the fastest strategy in practice. 


! Stage 4 Area 1 - 1:20

I finally had my strength improved. Being able to take down a Foot ninja with 2 weak attacks unlocks more potential for time saves, but this means more pain in the shell. The potential now lies just near a keyframe which can be saved, and the problem is, not every squad can be destroyed fast enough to make the next squad spawn 30 frames earlier.

Foot Tech Ninjas also became easier to eliminate, but there’s also a difficult time-saving tactic in sight: “(A-A-A)-B, dash, B” - perform a legs-circle combo to hit a Tech Ninja with spinning legs as soon as they are vulnerable, dash and do a strong attack. This tactic makes sense to do against solo techs or 2 techs spawned close to each other near the wall. The wall is needed to have 2 ninjas hit by a strong attack in restricted time. As a result, spawn – hitting – vanish sequence finishes near the closest framerule, saving 30 frames.  For a duet, the conditions must be almost perfect to have it done in 1-5 frames before the keyframe. That’s why it’s not seen so often.

As an alternative, some spawn points are accompanied with urns, which you can kick into Techs and make them fall down faster and win enough time to cut down 1 keyframe. The same tactic concerns “2 + 1” squads too, where I push one Tech into the upcoming Tech to save time. 
I used all nearby urns on Area 1 with the exception of Tech squad #2. Unfortunately, I cannot collect 2 Techs together (neither Tech 1 and 2, nor Tech 2 and 3) to eliminate them in 1 combo or by doing B-dash-A-dash-B. If I let 2 Techs finish their show-up animation and kill them, there’s still no timesave for the last Tech if I kick urna at him because he lands far away from me. “(A-A-A)-B, dash, B” should have been used instead.

A new enemy is introduced here: __Foot Bee__ (60 hp). These foot ninjas in yellow aircrafts have the longest show-up and vanishing animations in the game and therefore are top priorities because other enemies can be destroyed while a Foot Bee spins and blows up.


! Stage 4 Area 2 - 1:45
Here, I use leg-spinning combo more often. I’m satisfied with the shuriken management.  Not much to say.

! Stage 4 Area 3 - 1:32
The area is concentrated around 5 mini-boss battles. Foot fights in the first 2 rooms were mostly easy with the exception of the squad of 3 ninjas near the northern-east wall, which I couldn’t eliminate that easy for some reason because my weak and strong swings were bypassing one of them. Strong attack was more efficient, but the positions of fallen ninjas were uncomfortable for me to finish them quickly, so I went on with a combo.

Bosses: 5 __Mystic ninjas__ (240 hp each) 

They were really easy to kill. I’m surprised speedrunners didn’t use combo-dashing on them, in the same way they did with Evil Turtlebot.

Explosive shurikens knock a ninja down and it becomes invulnerable and does a wide attack to keep the player away.
Regular and electric shurikens doesn't knock them down. Hence, low reserves can be spammed bottoms up.
The only downside is that these ninjas are pushed back from attacks/shurikens much further than regular enemies.

Unfortunately, I faced another desync when playing back the whole stage, so I had to resync the input until I reached the point where I left off, but some playaround moments were lost.

! Stage 4 Area 4 - 1:04
This area provides a difficulty to speedrunning because some spawn points of Foot Tech Ninjas are placed inside fountains and, even though they don’t look that high, you still have to jump out which slows you down, and you have to cross their borders to narrow the distance you need to cover with dashes.

At least, 3 squads of a Bee + Foot Tech Ninjas were difficult to optimize.

2 desyncs happened here.

! Stage 4 Area 5 - 0:19

Boss: __Foot Gunner Ninja__ (360 hp)

While it is in its attack state, except for shooting you, you can hit it 5 times. Unlike Dragon Face who does a counter attack if his is punched 3 times, the gunner has a strong limit involving an instant state reset to recover and use its shield.

Unfortunately, this state to block player's attacks looks very abusive. If you get behind it using dashes, you can hit it once, even if it's an explosive shuriken which deals 2 hits in 3 frames. It doesn't relate to your hits cross its shield hitbox.

If your hit gets blocked, it does an instant turn towards you.
It's easier to do this extra hit with air juggling, but unlike Razorfist (Stage 5), the gunner still blocks it. As a result, hit-dashing it until it's dead is a bad tactic because of hard manipulations and slow tempo.

Its attack pattern is prescribed: Flamethrower, Gun, Flamethrower, Rockets, Flamethrower, Gun, Rockets, Gun, Gun, Flamethrower, Rockets, Flamethrower and it goes on.

If the gunner blocks melee attacks, he uses hit gun out of turn, but it still follows the pattern where it was left off.

It's possible to make him shoot you quickly, if the actual weapon is the gun, by making him block an attack or a shuriken. It's random.


This small area with well-adjusted tactic was a real nightmare for me! Desyncs here were stable! Savestates were not determined regarding Foot Gunner Ninja’s protection, whether my attacks and shurikens are blocked by his shield at the moment. I could easily hit him through the shield, but it didn’t happen during the movie playback.

Invalidating savestates in TAStudio didn’t help that much. The issue could be seen only when playing the movie from the boot-up or Stage 4 select screen. It seems like it’s a transit problem which cannot be seem by simply replaying the last area.

After the whole playback, I got a proper save and finally finished it.

! Stage 5 Area 1 - 1:39

Like in Stage 2 with its nano robots, here we have another pack of stage-unique enemies: __Blue __(48 hp), __Brown __(54 hp) and __Green __(60 hp) __mutants__.

Mutants cannot be killed by falling enemies. They also have bigger collisions, and this means they are harder to collect to be beaten. You and any two mutants need exclusive positions, so you could beat them in a single combo.

A strong attack can hit blue mutants twice, if attacked from the back or the side (when a “knock-down from behind” animation is played). Stationary attack shows better results than a charged one (if you were running for 16+ frames).

Boss: __Quarry__ (360 hp)

Not much to comment here. She always takes up to 2 hits and teleports into other place.


! Stage 5 Area 2 - 2:07

At the very beginning, I faced the weirdest desync so far. I had a frame-perfect kill of the first monster, which was delayed by 1 frame during the playback, which resulted in the next monster spawned 1 keyframe later. I rewatched it again with the saves invalidated. It still was still showing this delay. I rebuilt the input again in view of this delay, then I rewatched it again with saves invalidated and turned out I could save that 1 frame. I replicated my old input from the snapshots, rewatched it again without saves and it worked! Your assumptions? And how sad it was, at that point the finished Stage 5 TAS went out of sync while replaying the whole movie from the beginning and I had to start it all over again.
Anyway, the area features some complicated squads. Twice I had to drop perfect fights because brown monsters do a long jump when knocked down from behind.
Brown and Green mutants can take multiple strong attack hits while lying on their backs, but the time window is not so big at time. When they wiggle around to jump back on their feet, they don’t take damage.

Explosive shurikens are not so efficient here, despite being real problem solvers in fights with humans. The main problem is that mutants get separated very easily after a single attack that knocks them down because they cover a solid distance by falling on their backs (blue mutants don’t, but I have a different tactic for them). The explosion range the shurikens cause is not enough to damage all 3 monsters unless they are spawned in a triangle.
The best solution I found is to use them and the end of a squad elimination, instead of doing a combo attack. So 1 shuriken saves 30 frames.

Boss: __Razorfist__ (450 hp)

At least 90 frames are spent on standing still blocking player’s hits. Then he picks a decision to do something: 

1) jump sideways while keeping the block, 

2) charge and jump forward, 

3) do a backswing and box forward, 

4) rush forward while keeping the block. Sometimes, if he successfully blocks a players attack, he may do action #4 immediately, without waiting for 90 frames to pass.


While he keeps his hands forward, blocking your hits. 

1. Front air juggling attack + dashing works twice. Further juggling or other attacks are blocked. After his ouch animation is over, he rushes forward and does a lap, in case the player has dodged his charge.

2. If you hit him from behind, he bands over and hits the area behind him. If using this tactic, then you can hit him once per 58 frames.
When he does a preparation to do actions #2 or #3, or after he has finished these sequences, there is a window when he lets 4 hits to be done from behind (these 4 hits can be strong attacks). On the 5th hit, he bands over and hits the area behind him. If attacked from the front, only 1 hit can be done. An “ouch” animation, then he starts blocking.

Most of the time, he chooses to either jump sideways or rush forward while keeping the block, which are the 2 attacks not acceptable for TAS. However, it’s possible to fool him with input manipulations to do a different action. It’s usually done by doing a dash behind him while moving towards his field of view, although you can’t move anywhere while dashing.


There is good strategy with explosive shurikens on Razorfist. I managed somehow to deal 2 explosion damages on the same frame once. I tried to reproduce it, but got no luck. 

Even If it’s possible to reproduce double explosion damage bug 4 times, then you can save 4 * 30 = 120 frames and the duration of one band-over Razorfist does when attacked from behind (60 frames). In total, that’s 3 seconds which is slower than my strategy of finishing squads with shurikens. 


! Stage 5 Area 3 - 1:08

This area provides barrels, but it’s not as fun as in Stage 3 Area 4. Barrels deal damage (30 hp) only once per a mutant. You need to make monsters fall back and touch another barrel or detonate it. Barrels don’t save much time, but still make sense to use. Plus, it’s boosts entertainment a little.

Items from boxes block flying shurikens, so I had to take a defense crystal here.

I got unlucky with the last electricity transmitter hazard.  


! Stage 5 Area 4 - 1:10

Not much to say here. A computer explosion deals 30 hp, but it takes 6 secs for one to detonate, which is not acceptable for TAS.


! Stage 5 Area 5 - 0:15

Boss: __King Nail__ (600 hp)

It spends most of the time in the air where shuriken spamming is not very efficient. It can hold its right stand waiting or fly towards you until you both are next to each other. Possible actions:

1.	Flies near the floor

2.	Flies across the room

3.	Flies around the broken flask

4.	Lands with its hands crushed into the floor

5.	Lands with its hands crushed into the floor and smashes surface

Unlike Razorfist, Nail has some sort of timer table according to which it picks a random action. Its nature is still unknown for me. Looks like, it’s a combination of movement, sounds and even shurikens quantity. Because, doing strong attacks with dashes, like I did to manipulate purple dragons spawn doesn’t work here.

Regular shurikens deal 3 damage. Electric ones – 25 damage. Explosive – 25+20 damage, as usual. A full set to fight Nail is 8 explosives and 10 electrics. 

The strategy I’ve found the fastest is making Nail approach me and do action #4 or #5 twice, because these actions turn Nail into an immobile target and you can spam shuriken at it. I had to skip some frames during the area selection and dialog skipping in order to make it approach me and do an action I wanted it to do.

Action #5 at the beginning is the only opportunity to throw all the shurikens in one time, but despite all my attempts, Nail never did it. So I had to move around, to make it take an appropriate position for me.

I don’t know why, but there were situations when at some point of spamming shurikens, the damages stopped being registrated on Nail. I was getting my combo meter up, but with no effect.

Only after throwing away my regular shurikens, I managed to get an acceptable scenario for me. And unfortunately, I had to sacrifice an electric shuriken in order to provoke Nail to do action #5 and do it quickly. Since I had no shurikens left, I had to do a jump attack. 

! Special Stage Ordeal (Dojo 3)

Boss: __Leonardo__ (120 hp)
Just like Evil Turtlebot, Leonardo has a prescribed initial timer of invincibility, so I had to dance around a little bit.

! Stage 6 Area 1 - 2:17

I’m finally as powerful by attack damages as RTA now and we can do more proper comparison how much time TAS can save. 
I still have to complain about the difficulty of full potential realization. Regarding Foot Tech Ninjas, it just cuts one keyframe comparing to what I had to deal with in Stage 4: I can eliminate a pair of Techs in less than 180 frames using regular combos, but the gap to win one more keyframe of pushing one ninja into another one is even tighter now.

There is a way to kill one Foot Tech in almost no time using weird collision machination of legs spinning in A-A-A-B combo, when you hit it with your first leg twice. It relies on in which position and which direction you were facing comparing to the target. The cool-down time for the same hit ticks out before the hitbox of your first leg leaves the target, so you hit it one more time. To achieve this, you should spin past the enemy, so your hosting leg touches the enemy’s hitbox on its way up. 

I didn’t manage to reproduce that A-A-A-B trick on neither of Mystic Ninjas. Judging by the moment at which hit auto-targeting happens, I think the target must be tall enough to be hit.

A bit of time was lost because of clockwise swinging which didn’t let me compose a proper set-up to push a Tech into a newly spawned one and kill the last squad member in the fastest time.

Regarding Foot Bees, the fastest cycle of “spawn-hit-vanish” takes 270 frames. If I had one more frame, I could save 30 frames in each battle where a Bee is the last enemy to kill. 

Boss: __Mystic Earth Ninja__ (240 hp)

Same as in Stage 4: use combos and dashes until it’s down. Hypothetically, 15 frames (1 attack) could be saved if you had enough time to take the red crystal in the box towards which I was dashing at first, but then turned around, because, by the time you take it and dash back, the Earth Ninja is already vulnerable and shoots rocks at you. 


The last squad of 2+2 Foot Techs is interlaced with boss fights. If you kill first 2 ninjas within the same keyframe, Mystic Metal Ninja spawns in. After you defeat it, the last 2 ninjas spawn in. But they spawn with a delay of 30 frames, so that’s 30 frames lose because you can’t kill the last ninja in less than 150 frames. 

Boss: __Mystic Metal Ninja__ (240 hp)

Same as in Stage 4: use combos and dashes until it’s down.


Boss: __Elite Foot Ninja with an Axe__ (480 hp)

Now we’re talking serious. These bosses have 2 special abilities:

1)	Shadow running (or teleporting)

An Elite Ninja lets you do 3 hits. On your 4th hit, unless it’s damage from a falling enemy, he performs shadow running. It takes at least 13 frames to perform it. After that he can take damage again. The hit which provokes shadow running deals zero damage.

When a battle begins, the boss always does it on your first hit, unless you wait for him to attack you.

When a melee attack provokes it, he always runs behind your back at the moment of your last successful hit. By maneuvering in one direction during the combo, you can cut the distance from the teleported boss to minimum and win 3 frames. If a strong attack knocks him down, the next hit provokes shadow running, unless he gets up and starts attacking you.

When a shuriken provokes shadow running, Elite Ninjas teleports somewhere in front of you, which is useful at the beginning of a battle, but not anywhere else. I don’t know why, but if you knock an Elite Ninja down and use a shuriken to make him do a shadow running, he doesn’t do a usual swift running, but instead, covers a big distance and ends up being in front of you. This consumes a lot of time.

2)	Creating a shadow clone (60 hp)

A clone is basically a copy of the boss, which cannot do shadow running and the longest combo.
The animation of creation takes 152 frames. 

He creates a shadow when his health gets <340 after using shadow running, and 2 shadows when his health gets <120. Both procedures cannot be circumvented. In theory, it’s possible for a falling clone to drain the remaining health (you can drain it beforehand down to 60) of the boss, but this requires the boss to be somewhere in the corner, so he wouldn’t move anywhere from the trajectory of the falling enemy.


! Stage 6 Area 2 - 1:01

That’s why I was looking forward to completing the last Dojo. Foot Ninjas die of a single strong attack now! On the other hand, now you face 4 Foot Bees at once.

Boss: __Mystic Fire Ninja__ (240 hp)

Same as in Stage 4: use combos and dashes until it’s down. Again, a hypothetic improvement of 15 frames is left behind because the red crystal is placed too far away from the Mystic Ninja.

Still, I took it because I had free time to do that. When I step on the bridge, the squad of 1 Foot Tech and 2 Foot Ninjas cannot be improved. If I do a charged strong attack, a ninja pushes the Foot Tech away from me.


! Stage 6 Area 3 - 1:43

Like in Area 1, you gotta deal with Foot Techs and Bees. The lab introduces a new regular enemy in the game:  Tall gray mutants (72 hp). There are 10 mutants in total. They spawn in envelopes, accompanied with glass breaking animation. 

Unfortunately, I cannot jump onto an envelope’s area, so I had to make the mutants run out of envelops at me. Some keyframes can be saved here if mutants would run out faster and perform an attack on me. Then A-A-A-A combo is quick enough to get rid of a mutant close to the edge of a keyframe, saving maximum time.

__Tall gray mutants__ (72 hp)

Like Green mutants, they can take multiple strong attacks after being knocked down. Besides hitting, grabbing and spitting attacks, they have the ability to roll around the room, which is annoying a little. 


! Stage 6 Area 4 - 4:01

At no doubt, this is the longest and the most difficult area to optimize. The beginning is easy, but the mouser arsenal and beyond is a mess. 

The game introduces the final new enemy: __Big White Mouser__ (60 hp). Although it’s not a hard enemy on its own, it appears in big quantities and the player has no possibility to kill them in one hit, like it was in Stage 1. Their spawn points are logically sequenced, and you can draw a shape out of them on a list of paper, but the elimination of a big squad often made me feel like I was missing some faster tactic. I wish my maneuvering during combos would be more flexible.

Boss: 2 __Giant Mouser Robots__ (780 hp each)

This boss battle also left a feeling that it could have been done faster. The problem is, not all your combo moves can be executed on both Mousers at once. Spending electric shurikens at the beginning doesn’t help that much to make the rear mousers catch up with the front one. If one of them decides to spin its arm-heads, you end up hiding behind the other mouser, therefore dealing less total damage from you combos. So I kept them in line and used A-A-A-B combo to deal partial damage to the rear mouser.

Most of the Foot squads up to the platform with the core have some weird setups, like the developers entered the wrong queue numbers in a HEX editor. The 2nd squad after the boss fight was hard to optimize because the Foot Techs spawned on opposite sides of the line of computers. 

"Boss": Giant Green Core

This one is a complicated object. It has the same hit detection mechanic what cars on the street levels have: each attack deals damage every 2nd frame while the hit collision overlaps the hitbox of the target. However, the core doesn’t have any specific health meter or timer related to it. Maybe, my skills in RAM search are not high enough.

I compared my casual beat-up with speedruns and turns out we all manage to make the core burn in about the same time (~27 secs). Even Co-op speedrun doesn’t win time here. I think all you need to do is deal a specific amount of damage or more in a specific amount of time. 

I picked up electric shurikens near the end, but I didn’t find any place where I’d use them. My attacks are more powerful and these shurikens are not so useful against the remaining bosses. 

! Stage 6 Area 5 - 0:25

Boss: __Dr. Stockman__ (1080 hp)

Possible actions:

1.	Shoots a lot of small projectiles up

2.	Shoots from the minigun while spinning around

3.	Shoots big projectiles at you (not tested with his helmet)

4.	Approaches you (only when his helmet is in order)

5.	Approaches and catches you (only upon his helmet being destroyed)

At the beginning, explosive shurikens are not that efficient. 16 damage of explosion. 

You can hit Stockman’s illuminator area with A-A-B combo. Double legs hit deals 18 damage. Two hits can be done. The fastest combo takes 81 frames.
Jump attack does 26 damage. Two hits can be done. The fastest jump takes 76 frames.

Stockman’s pain animation takes 31 frames.

When Stockman shoots the projectiles up, he is immune to attacks for 38 frames.

One jump attacks can be done safely. Two jump attacks result in being hit by lent projectiles, if you are within the area the projectiles lend, even if you are up in the air. Dashing doesn’t help. One big explosion will spawn on you and its range is too wide for a dash to evade it. In total, that’s 100 frames lost. A-A-B combo takes 94 frames.

Minigun circle shooting is a little better. He is immune to attacks for 354 frames (almost a full circle), but at least you don’t have to deal with projectiles flying down.

It’s possible to manipulate his actions by delaying your attacks. If he chooses to approach you instead of shooting, you can do a successful jump attack. This can be done multiple times because while he approaches, you have a good range of frames when it’s possible to hit him with a jump attack. 

When his health reaches __700__, his illuminator breaks and now you can hit his body as well. The damage table for body looks like this: 

-	weak attack, air juggling and CRASH hits in A-A-B combo – 15 hp, 

-	strong attack in combos (CRASH hits in A-A-A-B, A-B and A-A-A-A) – 17 hp, 

-	strong attack – 20 hp,

-	explosive shuriken – 12+20 hp (sometimes 12+40 hp due to the collision bug),

-	electric shuriken – 9 hp,

-	regular shuriken – 4 hp.

His head area now takes full damage, although you can hit it with the respective moves that reach it: 

-	Jump attacks (2 hits)

-	Double legs hit in A-A-B combo (2 hits),

-	Top-down bo hit in A-A-A-B/A combos,

-	Final leg circle hit in A-A-A-B combo at the very end.

When he tries to approach and catch you, you don’t have any time to pick the right time for a combo. You hit his head just before he catches you.

When he shoots big projectiles at you (action #4), you can circle around him using “B-dash” (22+15 frames).

When he catches you, you can hit his head and lend down, but due to a [https://www.youtube.com/watch?v=cA4h1IpLz-A|glitch] you stick to his hand at the beginning of his each animation of trying to catch you.


! Stage 6 Area 6 - 1:28

Well, it’s a trap corridor. You gotta dash around obstacles.

Boss: __Elite Ninja with a spear__ (480 hp)

In addition to what I told about these Ninjas in Stage 6 Area 1, when you are on the stairs, the boss sometimes shortens his shadow running animation and does an air juggling attack. However, it doesn’t save time because your active combo has only 1 hit which knocks enemies down, so you still need to do a dash and start a new combo. 


! Stage 6 Area 7 - 0:17

Boss: __Shredder__ (1200 hp)

An utrom with a Tengu sword, who are you without it? Even in Battle Nexus, in 2 of 3 battles he wields this sword.

Initially, he can be hit 7 times. After that, he stops going into the pain state on being hit and starts doing finished and unfinished combos. He has wide swings in his arsenal, so you’ll end up either dashing away or behind him, or use explosive shurikens to make him react.

In order to make him vulnerable again, he must not take damage from you for 60 frames, which is about his one regular combo. Alternatively, you can use electric shurikens, air juggling or a charged strong attack. They make him slide away and he starts taking damage after he gets up (60 frames).

Shredder has a very narrow body collision. This means you can easily dash through him, and it works against you because you often have to wait for Shredder to begin his attack in order to prevent him from quickly turning at you. Manipulating his actions is very hard on this regard.

Spamming 10 explosive shurikens at him doesn’t work properly. Like King Nail, at some point Shredder may stop taking damage from shurikens for no apparent reason. So I decided to split them into 4 parts.


Well, this is the end!


!! Possible improvements

! General
* Desyncs ruined a lot of good moments. Although I managed to improve most of them, the TAS was still labored at times due to my inconsistent free time periods and harmed motivation of redoing wasted parts of the game.
* The new strategy of killing one enemy by using A-A-A-B combo alone, which is described in Stage 6 Area 1 section, provides possible improvements regarding distinct enemies throughout the game, such as Foot Ninjas. Unfortunately, I discovered it too late, but at least, it’s not a major timesaver. 

! Stage 1 Area 3
* The squad where I throw an electric shuriken in a green Purple Dragon can be improved if you simply wait for 2 dragons to the right to become vulnerable and kill 3 dragons with a strong attack. Not much time is lost though.


! Stage 3 Area 3
* The second squad before the boss fight can be improved if you kill two Foot Ninjas with “B, dash, A” tactic to make a Foot Tech spawn 30 frames faster.
* Spam Evil Turtlebot boss with regular shurikens when its health is 70 or below. I found a route optimization when fixing Area 5 of desyncs and kept 1 more explosive shuriken for the last boss fight, which means by the first boss fight, I had a reasonable amount of regular shurikens to spend on it.


! Stage 4 Area 1
Use “(A-A-A)-B, dash, A” tactic, which I discovered in Stage 6 (mentioned in General) against the last Tech of the second Foot Tech Ninja “2+1” squad to save 30 frames. This squad was mentioned above as the one which I didn’t kick an urn at.

! Stage 4 Area 5
Maybe a couple of frames can be saved of movement optimization. 

! Stage 5 Area 2
Razorfist boss fight. I saw how the [https://youtu.be/6s-IP0y6TxI?t=2635|speedrun] hits him two times while he was keeping the block and then he starts preparing an attack in almost no time, without keeping the block for usual 90 frames. I tried to trigger such a behavior, but got no results. It would save around 1.5 secs.

! Stage 5 Area 4
Maybe some frames can be saved of better movement over the giant stairs. Unfortunately, I cannot do precise movement because the direction you point to depends on the camera’s position.

! Stage 5 Area 5
Spend the shurikens faster. Find a way to do the same as I did, but without a shuriken sacrifice. Probably, I should have taken regular shurikens on Stage 5 Area 1 to be safe from such a case, but that was something I couldn’t predict.

! Stage 6 Area 4
The squad of 1 Foot Tech Ninja and 2 Foot Bee on the bridge to the Giant Green Core should have been eliminated starting from Foot Bees, not the Foot Tech.


!! Special Thanks
;[https://tasvideos.org/Users/Profile/BlackWinnerYoshi|BlackWinnerYoshi]: For verifying my Bizhawk movies on the actual Dolphin emulator. Trifle, you say, but it was important for me.
;[https://www.youtube.com/@weengell/videos|Weengell]: For his TMNT 2003 speedruns. It helped me with my motivation. I didn't use much from them, but I was counting how many squads I have to beat to finish an area. Yeah, like reading a book and looking for how many pages remaining to the next chapter xD

Suggested screenshots: 60397, 128073.
