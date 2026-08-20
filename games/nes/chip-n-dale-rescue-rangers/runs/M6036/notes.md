> **Imported**
> This run was originally published at https://tasvideos.org/6036M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This tool-assisted speedrun improves dragonxyk's [1128M|2008 TAS] by 2513 frames (41.88 seconds), by using 1+1 new glitches.
The games offers 11 different levels, but the TAS uses the shortest route of 8 levels. The object is simple: go from point A to point B while avoiding enemies and hazards.

!! Game objectives

* 2 players
* Uses death to save time
* Heavy luck manipulation (subpixel values, boss' actions)

!! Comments

! General game mechanics

* The game runs at 60 fps, but the lagging occurs when there are too many moving objects on the screen, let it be enemies or projectiles. When a lag frame occurs, the movement logic is not executed, which means, all creatures and projectile freeze and no compensation is applied.
The TAS uses a glitch which moves the players faster then usual, and that causes a lot of situations when new enemies spawn in and early ones haven't left the screen yet.

* When you take damage, you:
** become invincible for 60 frames, 
** enter a pain state, which blocks your movement for 20 frames,
** are pushed back. 
The TAS always turns around before taking damage and tries to keep the chipmunks (players) in the air, so they cover more distance when they can't move.

* In a 2-players mode, when a chipmunk runs out of lives or falls in a pit, it respawns on a balloon after 145 frames of idle. During this period the chipmunk technically stays on the screen and it cannot be moved by X axis past the point when the chipmunk is left behind. Also, if the other chipmunk dies while its partner isn't respawned yet, the level starts from the beginning.
The TAS tries to maximize the traveled distance while the screen is idle.

* When a boss is hit, it becomes invincible by 59 frames. Each boss has 5 HP, so that takes 4 seconds from the frame when it takes the first hit to end the battle.

* Level design follows a 16-pixel grid. Each box is 16x16 pixels. Each platform, not matter transparent or solid, is also placed according to this grid. It's impossible to have a platform or a box that's above or below any other platform (box) by a height other than multiple of 16.

! X and Y axis subpixels

Each chipmunk (player) has its own vertical and horizontal positions (X and Y pixels) which determine where on the level it is currently placed. However, there are also X and Y subpixel values, which provide an element of randomness of how chipmunks move. Suppose you move right by holding Right button. If your X subpixel is low, on the next frame you move right by 1 pixel. Then your X subpixel turns high, then on the frame you move right by 2 pixels. The same principle concerns vertical movement.
* X subpixel changes only when your X pixel changes.
* Y subpixel changes on every frame and it depends on your current X and Y pixels. The only case when it stays constant is when a chipmunk is being carried by the other one. 
As Dacicus described the mechanic of calculation of Y-subpixels: 
> $0460 is changed by the value at $0550 and $0510 is changed by the value at $0560. The value at $0550 is itself modified by the value at $0099, which seems to be fixed at $0055. Same thing for Dale, but with addresses $0551 and $0561.
* Subpixel values are never reset, which makes Bonus sections not equal to those found in dragonxyk's TAS. Somewhere X and Y positions are different, at other moments I had to make changes to manipulate appropriate Y subpixels to perform glitches described below. 

! Glitches for 2-player mode

__Zipping__ 
%%%The game features a special mechanic of collision between the chipmunks. When one player walks or jumps into the other player, it tries to separate them by applying a movement force to one of the chipmunks (or both of them). However, it's possible to trick this mechanic to apply the same exact force to both chipmunks, making them slide at the faster speed than their normal walking. It's possible to do so by jumping inside the other player. There are 4 ways to do so:
* __Throw your partner 1-2 frames before you land__. Aglar described it in details [Forum/Posts/429269|here]. However, the conditions of Y subpixels described there are more like a reference point. You can find several cases in my TAS when Y subpixels don't match it. It was discovered by manual input bruteforcing. I can summarize it like that: when you do all like the guide says and it doesn't work, try doing it with opposite Y subpixels (high Y subpixel for carried chipmunk and low Y subpixel for carrying chipmunk).
** When a jump after a throw is performed, you jump up by 43 pixels which is enough to jump over 2 stacked boxes or a small enemy.
* __Be inside your partner when it drops its balloon__. When the chipmunk on the balloon touches its partner that's not holding its balloon, the "balloonless" chipmunk is pushed away. However, if he moves the opposite direction, he can keep himself close to the "ballooning" chipmunk and gain some boost. To enter the zipping state, both chipmunks must have (nearly) the same position to stay collided. Sometimes, it requires jumping to achieve this.
* __Jump inside your partner__. This is done at the beginning of Zone F and J. Like the way of throwing your partner, it requires its own conditions to be satisfied, including the distance between chipmunks (22 pixels).
* __Stun your partner with a box__. It's not used in the TAS because you need to wait for the stun state to pass.

Three ''input patterns'' are used in the TAS to make zipping chipmunks jump over obstacles while preserving the collided state. Two most common ones let you jump on a platform that's 32 pixels above you. The third one is used for a 64-pixels higher platform and to perform big jumps while gaining some collision boost for one of the chipmunks.
However, the pixels condition still has to be satisfied for the jump or drop down to succeed, or else at some spot the chipmunks get separated in mid-air.

__Box ascension__ 
%%%The point of this trick is to utilize the quirks in the mechanic of chipmunk states. When the animation of throwing is initiated, a chipmunk cannot be stunned by a box flying at his front perspective. However, the flying box still collides with his hitbox, making him ascend by a small distance.

In order to perform it, you need to have equal Y subpixels for both players and keep a certain distance between them. Under these conditions, the ascension power is much higher than under normal circumstances, and this lets you move up even faster than by rapid jumping.

The only problem is to get equal Y subpixels. Unfortunately, they are recalculated on each frame (except the case when a chipmunk is being carried by the other one), making it very hard to get continuous equality of subpixel values. Even if you achieve it, you cannot do any kind of platforming or else you lose that equality. 
For this reason, Zone F, section 2 looks the only time-saving spot where that's effectively useful.

! The speed of movement

* While moving right, you speed is 1-2 pixels per a frame.
* The speed of moving left is 1 pixel higher. That is 2-3 pixels.
* You cover 2 extra pixels while zipping on the ground, and 1 extra pixel while collided chipmunks are in mid-air.

! Authorship

* [user:Dimon12321] - the main author of this TAS. I passed 7 levels out of 8.
* [user:Aglar] - he passed the first level (Zone O). I [Forum/Posts/529556|tried] to find improvements in his TAS, but nothing was found, so I decided to build my TAS upon his movie. He also [Forum/Posts/429269|made] a nearly finished test TAS which I was using for reference.
* [user:dragonxyk] - since I'm not very skilled at making entertaining sequences, I borrowed input of some Bonus stages and those one-screen sections when a big mouse steels your cheese. However, the difference between subpixels and the RNG made me adjust the input or redo the sequences completely.

!! Stage by stage comments

For simplicity, "Zone B, section 1" means Zone B1.

! Zone O

This is the most variable section in terms of platforming. Aglar is doing everything possible with chipmunk collision mechanic to win maximum time. Here, the only zipping-preserving 64-pixels jump was performed. I assume, such a jump can only be performed when you scroll left. 
I [Forum/Posts/529556|couldn't find any] improvements there, so I build the rest of the TAS on top of his movie.

! Zone O2

There is a moment where chipmunks fall between test tubes. It lacks 1 pixel for Chip to have both chipmunks successfully lend on the floor by doing one long fall.

! Zone B1

The top route of the section is slower. The second mouse on your way does an big jump if you zip on the boxes near it.

! Zone B2

I had to do a zipping glitch with Chip and not move too far because otherwise you land on the glass and not collide with the thrown chipmunk.

The part when you need to turn off 5 faucets is done manually instead of flying them over on balloons. Each faucet takes 21 frames to be turned off, which is 105 frames of the screen not moving forward. However, the same amount of time is lost using the balloon strategy because of respawning periods. Since a lot of time was previously saved by zipping, there was no point in taking damage to perform the balloon strategy.

! Zone B Boss

The spaceship is the most RNG-dependant boss in the game. There are 5 different altitudes it can come from. You can manipulate the needed one by losing time, either by entering the boss section sooner or by pausing the game. So, I spent 4 frames (1 frame on later entering, and 3 frames on pausing) to get the lowest altitude of the spaceship. This let me throw the ball as soon as I grab it.

! Zone D2

Here, the part with 5 levels of ascending long platforms and rag-pulling rabbits is extremely laggy because zipping glitch makes it hard for rabbits to run away.

! Zone F1

The ending of the section is done slower by 40 frames because I needed to get equal Y subpixel values for both chipmunks in order to perform Box ascension glitch in Zone F2.

! Zone F2

I love it! Box ascension glitch save several seconds here. I even managed to have the chipmunks on the very top of the screen by the time I reach the platforms. Since some time is required to load the boxes, I clipped through them and saved some more time.

! Zone G2

It requires 2 stacked boxes to be able to jump over a rhino while preserving the collision state.

! Zone H2

The last part with a 3-level platforming, you cannot perform a throw while you are on the top platform. So, I had to jump down to a lower platform.

! Zone I1

This is the only section in the game where I didn't find any improvements. The stacks of mugs have tightly placed boxes and performing a zipping glitch is not reasonable there.
The blowing fans makes you move really slow, so the only good option is bypass it all on balloons.

! Zone I2

The pushpin lines work in a weird way. You don't take damage on the frame you lend on them, but on the next frame. Anyway, despite one chipmunk being invincible (thanks to Zipper), I didn't manage to pass the pushpin lines while using Zipping glitch.

! Zone J1

Moving platforms boost your movement by 1 extra pixel. If one moves in the direction of the exit, you need to run against it in order to preserve Zipping glitch.

! Zone J2

I don't like the sequence from the end of the swinging axes on the 1st floor, up to the last area with a load of boxes on the top. I tried various routes, including the one used in dragonxyk's 2008 TAS, but I didn't find any improvements.
But, at least, I got lucky with despawning the weasel near the exit.

! Zone J Boss

1 frame was spent to get a lucky RNG. If Fat Cat spams ashes from his cigar too often, it causes a lot of lag frames.

! Bonus levels

When a zone is finished, you have to play through a time-based bonus level to collect bonuses. I copied some input from drakonxyk's 2008 TAS.
# Zone O - Zone O from 2008 TAS, but with mirrored input to let Chip take a 1UP.
# Zone B - Zone F from 2008.
# Zone D - Zone B from 2008.
# Zone F - Zone D from 2008.
# Zone G - It's my own improvisation showing the intrigue who of chipmunk will get a 1UP. 
# Zone H - from 2008, but I accidentally edited the ending while trying to match subpixels.
# Zone I - from 2008, but due to the wrong RNG, the final box doesn't have a 1UP, which doesn't make the sequence that adorable.

!! Possible improvements

* In Zone D1, it's possible to save time by doing a throw for a zipping glitch when landing on the stacked boxes right next to two clown boxes. I tried switching characters and meshing the input in every way possible, but the glitch didn't work, so I had to do a much longer jump in order to pull it off.
* Well, I mentioned D1, then I'd say, this TAS lacks luck. I've spent a lot of time meshing input in various places to get proper subpixel values for zipping glitch. I think, 60% of them is when I had to lose 1+ frames. For example, by delaying my jump.
* Find more input patterns for safe jumping while preserving the collided state. This especially concerns 48-pixels higher platforms.
* Lag optimization. I did my best, but I doubt it's perfect.
* Complete Zone F1 faster. As I mentioned before, 40 frames were spent on input bruteforcing to have equal Y subpixels for F2. I'm sure it's possible to save more time here.
* Complete Zone I2 faster, if it's possible to pass pushpin lines while using zipping glitch.

!! Special thanks to:
* [user:junkyard_dave] - he [Forum/Posts/525847|discovered] Box ascension glitch and shared the input file with me.
* [user:sinister1] - he was giving me various useful suggestions and sharing interesting ideas on my way to have this TAS finished.

!! Suggested screenshot
13537
