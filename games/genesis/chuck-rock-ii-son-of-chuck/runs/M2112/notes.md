> **Imported**
> This run was originally published at https://tasvideos.org/2112M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Goals:
* As fast as possible
* Takes damage
* Dies
* Has dinosaurs of varying colors

All in all, 1935 frames (32.25 seconds) faster than [1524M|maTO's published version].

Ram watch file: [userfiles/info/1420872762118577]

Lua script file: [userfiles/info/1420914191806473]

Recorded with Gens 11a (but is probably backwards compatible with older versions of Gens like always)

!!!Tricks

When you land with a high downwards speed, Junior will make a small bounce/jump. During one frame, it is possible to make a normal jump instead, but only if the x-speed is zero. The bounce does not occur at all when riding an animal.

The current x-speed is frozen when standing on the club or holding a swinging rope. Only the position is changed, and when releasing the rope/club Junior continues with the previous speed. For this reason it can be beneficial to try to change your speed before grabbing a rope.

Lag works a bit differently than in most games. Gens built-in lag counter reports frames that no input is accepted on, but in this game the engine still advances one step. There are also frames where the game engine does not advance, but input is accepted (and not used). These have to be detected with a Lua script or by eye.

This game seems to save no global coordinate information of player in level, only position on screen in level and position in screen. In this regard it works the same as Castlevania Bloodlines.

When landing from a jump-attack with the club pointing down-forward, there is a frame where you can jump and continue with the club in that position instead of swinging again.

The initial position of Junior at level start seems to vary 1 pixel sometimes. Subpixel position is not reset between levels.

Junior has the same acceleration and max speed on the ground and in the air. This is true also for all the animals he can ride. There is no delay for jumping or landing. The only difference is that Junior does a small turnaround animation when on the ground, so it is better to change direction while airborne.

||Character||Max speed||Acceleration||Deceleration
|Junior|2:0|0:40|0:40
|Pig|3:0|1:0|0:64
|Ostrich|4:0|0:128|0:32
|Goat|3:0|0:128|0:32


As in many games, Junior can attack without delay in the air, but has to stop to attack when he is on the ground. On the ground, the attack first hits objects behind Junior, then in front, above, and finally behind him again. Therefore it's possible to hit twice in one attack. In the air, the attack starts behind and goes overhead. If you turn around before the attack is complete (club pointing down), the attack restarts, again making it possible to hit more than once.

When riding an animal, you can attack while moving on the ground, and the attack animation is the same as when jumping.

Walking smash: this trick was discovered by maTO. Usually you are stationary when attacking on the ground. If you start the attack while turning around, you can move forward during the attack.

Bosses usually have 20 frames invincibility between hits. Junior can hit faster than this under most circumstances. When hit, some bosses are frozen in place, making it possible to lock them in perpetual hitstun.

Max HP is 8. All enemies do 2 damage. Bottles refill 1 HP. You die if you have 3 or 2 HP when hit.


!!!Level notes

||Stage||Improvement
|Stoneage suburbs 1|3
|Stoneage suburbs 2|17
|Stoneage suburbs 3|292
|The apple tree|85
|Dippy the dinosaur|130
|Butterfly grove 1|168
|Butterfly grove 2|6
|Wacky waterfalls|-42
|Watch out for Ozrics tentacles|794
|The river race|0
|Lively lava|19
|The spooky cave ooohhh!|53
|Going up the tree|14
|Going down the tree|61
|The lava tree|-1
|Statue carving|35
|The fruit mountain|67
|Snow problem|2
|Meet Morgan moose|1
|Sergei the sea slug|12
|In the smelly sewers|-4
|The car factory|22
|Uh oh Brick Jagger and his Robot|201

!!Stoneage suburbs 1
Just some minor optimizations and lag. Nothing special. Better position/speed when the screen unlocks after the T-rex stomps across the screen.

!!Stoneage suburbs 2
Minor things again, better handling when riding the pig. Does not take damage at the spikes at the end, since it actually loses time.

!!Stoneage suburbs 3
Here we go! Better activation and landing on the strongman at the start. Better breaking of the stone wall just before the boss, by avoiding the small bounce when you fall a long distance.

Due to a better boss tactic, this boss is finished in one phase instead of two, which saves around 250 frames. The trick is to get the hits in evenly, so that the hitstun prevents him from advancing to the next phase. Fixing this was the reason I started the run, because I knew the boss could be killed in one round - I had done it on console.

!!The apple tree
Around 80 frames saved due to getting down the apples in one round, so the dog doesn't have to run back and forth on the screen one extra time.

!!Dippy the dinosaur
Slightly better position and speed when the screen unlocks after the dinosaur goes for a dip. Jumping between the feet of the bird is very hard to perform in real time, and means instant death if you fail.

The boss can be hit before he attacks, which I can understand that maTO missed. The sprite is pretty far off the hitbox. With the right position and timing, it is just barely possible to hit him twice per jump and keep him in hitstun the whole fight, so he doesn't get a chance to attack. Saved 130 frames due to this.

!!Butterfly grove 1
I decided to take more damage in this level rather than later in Wacky waterfalls. After losing a life on the ant, running ahead of it saves around 90 frames. Around 60 of those are lost in Wacky waterfalls due to not being able to take damage there, so overall it saves 30 frames. Around 60 frames more are saved with a shortcut at the end and getting on the flexing branch in a different way.

!!Butterfly grove 2
Ostrich riding! The club swinging at the start to get the banana in the correct position is improved 6 frames. Otherwise this level is unchanged.

!!Wacky waterfalls
Not many changes here either, but 20 frames gained on scaling the staircase with enemies on it. You don't need to stand on the lowest step. I lose 60 frames as noted above due to not being able to take damage and having to wait for the waves.

If you wonder why I am waiting a bit before getting on the first wave a bit into the level, it is to spawn the second wave (outside the screen) at the best moment to minimize waiting time.

!!Watch out for Ozrics (sic?) tentacles

First, I die just because I can. And to show how unfair the tentacles are, they hit me even though they are pretty far off.

There are two improvements in this fight:
* The big one is to hit three fishes per round instead of two, so that a whole round is skipped. Hitting with the extra fish requires precise timing, it has to be hit very late, below the surface, so that the boss has time to get high enough.
* The small one is to hit two fishes at once, so that the stun period is half of what it would be otherwise. This is the only boss which can take damage even though he is in his "I'm hurt!" pose.

I am very satisfied with the way this boss fight turned out. All in all, it is almost 800 frames faster than maTO's version.

Oh, and the first fish (?) Ozric throws at you cannot damage him for some reason.


!!The river race

This is just autofire A to win. No improvement.

!!Lively lava

Very small improvements in various places, like getting on and off the rolling rocks in a better way. It's possible to gain time by taking damage, but the health is better used in the next stage on the slow-walking yellow anklylosauruses. Dodging them without taking damage takes forever.

!!The spooky cave ooohhh!

The run was stuck here for eleven months because I lost interest. In spite of good improvements early, like breaking the blocks with fewer club swings, I couldn't match maTOs speed at one of the ankylosauruses, where I lost several frames because the ankylosaurus damaged me but not him, and couldn't figure out why. (I ended up finishing both Taz-mania and X-men 2 in the meantime.)

The reason, it turns out, was that the ankylosauruses follow you, but can only turn every 12 frames. I had gained 2 frames earlier which meant that the enemy had turned one cycle earlier and ended up in a less favorable position than before.

Went back and lost the two frames on purpose, and suddenly I was back on track again.

Overall, 50 frames gained due to small changes here and there.

!!Going up the tree

Some changes on how to grab the swinging ropes and other minor stuff. 15 frames saved.


!!Going down the tree

60 frames saved, the majority due to avoiding a small bounce which gets me on a swinging rope one cycle earlier.


!!The lava tree

This is an autoscroller. But the boss is very tricky.

I thought that I would be able to improve it since the yellow bird form can be hit as soon as it has risen to the top. This doesn't help though, since the boss needs to be in the top right corner before it can be damaged after it turns into a red bird.

The yellow bird needs to receive the last hit on a specific height, to land in the lava as high as possible. Otherwise you lose frames when it slowly rises up to the top in red bird form.

When delivering the last hit on the red bird, I take damage and die on the same frame. This shortens the win animation by quite a lot. Doing it on a very specific position so you drop deep into the lava saves even more time, for some reason.

maTO had all of this figured out already.

For reasons I don't understand, I gained 2 frames on the autoscroller and lost 3 frames on the boss. So overall I lost 1 frame. :(


!!Statue carving

This bonus stage consists of hitting 10 blocks of stone so that they break off the statue. Each block needs to be hit 3 times before hitting the next one. As before, the invulnerability time between hits is 20 frames, but when a block breaks off, the next one can be hit on the following frame.

35 frames were gained due to better planning of how to hit the blocks so that the next block could be hit as quickly as possible.


!!The fruit mountain

I hate the stupid random falling stones. They are hard to manipulate. The most effective way is to hit a breakable block. Unfortunately this also easily creates lag, and breakable blocks are not always nearby.

In this stage you get to ride a goat for a while. It's fun while it lasts.

The biggest changes here are talking damage at the balloon ride, which saves 67 frames, and picking up a bottle of milk to regain that health, which loses 43 frames. I tested skipping taking damage at the three locations where it's done in maTO's movie, but all of them save more than 43 frames. Smaller timesavers are better turnarounds when changing directions and a better goat ride. In total 67 frames saved.


!!Snow problem

This stage seems very straightforward, but again, there are stupid falling stones. If you want to improve my movie, this is where to start looking. There are two random things to optimize, how closely after another the stones fall, which influences lag heavily, and where the stones fall, which means you might have to stop/slow down. I gain 20 frames over maTO on lag, but lose 18 when I need to slow down because the stones land in front of me.


!!Meet Morgan Moose

This stage is basically an autoscroller. 1 frame gained in fade-in, otherwise no frames gained or lost. I try to fool around a little anyway - it's possible to miss two of the platforms and still survive.

Also worth noting is that the candy in this stage gives life refills, and not points. 


!!Sergei the sea slug

This boss has 41 frames between hits unlike the others. Since maTO nailed that part, the only improvement of 11 frames is getting the first hit sooner. This is done by delaying the first jump. As the boss rises from below the screen at the start, you can hit it on the way up your jump instead of down.

Unlike maTO's movie, I take no damage since it isn't necessary to finish the boss as quickly as possible.


!!In the smelly sewers

Loses 8 frames to manipulate the first set of random falling gears. :(

I win back 4 of those frames before the stage is over, so a net loss of 4 frames.


!!The car factory

Gained 21 frames from better luck on the falling gears at the end. 

These two stages have a lot of opportunities to take damage to save time. I tested how much each of them saves, and ended up with exactly the same choices as maTO.


!!Uh oh Brick Jagger and his Robot

In the first cycle, you have to hit the head. Usually you have to wait until the robot attacks with its arms outstretched to be able to get close. I take damage directly instead of waiting for the first cycle to begin, which saves 100 frames. As soon as the robot is stationary, you can start attacking it by jumping between the body and the hands. Don't try it at home, there is only 1 pixel wiggle room.

In the second cycle the robot loses its head and starts to flail its arms wildly. After all its HP is gone, the robot exits to the right. This means that getting the hits in optimally isn't important as long as you get them before the robot starts to move left again. 70 frames gained due to the robot being in a better position when the fight starts.

In the third cycle you have to hit Brick Jagger himself. 4 frames gained by getting the first hit standing.

!!! What's next?

No idea honestly. Lets hear your suggestions!
