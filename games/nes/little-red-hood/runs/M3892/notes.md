> **Imported**
> This run was originally published at https://tasvideos.org/3892M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Another barely known game from Eastern Asia. It became popular through AVGN's [https://www.youtube.com/watch?v=NEwgFmL31RQ|review] about it (18+).
This game is simple, but too random.

! Objectives:

* Emulator used: Bizhawk 2.3.0
* Game SHA1: 7F4C3071BA94C3ABF6A44F9B54B22141737FB0DC
* Takes damage to save time
* Heavy luck manipulation

!! Goal

Ok, the goal is to collect 12 fruit and a key, and get to another World. There are 10 worlds (levels). Each one features a different terrain and fruits. To find a key, you have to go down a staircase. There are 3 pink guys attacking you all the time, so you have to evade them.
Sometimes there is an extra hidden requirement which you have to complete to make the key available for spawning inside a staircase. 
In short, you have to search throughout the game to figure out what to do.

!! Bunches (rocks)

By kicking small bunches lying around, you can get one of these things:

* gold: the only item you really need. 3 worlds require purchasing items at shops in order to get through. In total, you must collect at least 45 golds to finish the game. If you die, you lose all the gold.
* dog: a friendly bot that kills pink guys.
* balloon: takes you to a bonus stage where you're able to collect 8 golds. Doesn't save any time, but it's a good opportunity if you get not enough gold from staircases.
* snake: an invulnerable enemy that has a small hitbox and moves slowly.
* cobra: an invulnerable enemy that has a normal hitbox.
* hedgehog: an invulnerable enemy that has a normal hitbox and moves quickly.
* sweet: restores 1 health point. Collected only when it's needed.

Each drop is random and depends on your overall position when a green ball lands. It is manipulated to get a gold from each bunch throughout the whole TAS. All other things have no purpose.

!! Staircase
A staircase is a secret room where you can find a key/sweet and some gold. Both staircases and loot spawn randomly. It's manipulated to make a big amount of gold and a key spawn somewhere near the exit to spend less time on collecting the stuff. Empirically I've figured out that there is a 55% probability to find a key inside it, but it has little sense.

Staircases appear randomly, but within the certain area. Each world has it's own area. To make it appear, you must be either within it or on the right side of it. 
The loot inside it depends on your, dog's and enemies' positions. If the enemies are close to each other, it's difficult to manipulate a good loot (faced in World 8 only).

You have to wait at least for 670 frames to make a staircase appear. If you exit the shop, the staircase timer resets and you have to wait for ~670 frames again.

You are able to enter a staircase in 51 frames after it appeared.
If a staircase had spawned before you collected your 12th friut, it disappears (51 frames) and respawns again in 78+ frames. Now you can exit a world. 
If a staircase spawns at the area where you are dying, you make some spins like you are entering it, but then it diappears and you still die. No glitch happens.

!! Walkthrough

Since I can't record the footage with the RAM watch screen without enormous framerate drops, you should rewatch the movie on Bizhawk to see how counters and values change.
RAM watch file is [=userfiles/info/52641932287691525|here].

! World 1

World 1 is a simple one. The key is available for spawning initially. Just collect fruit and the key and you're free. 
It also gives you the best loot from a staircase (with a bit of luck, of course). Further worlds are not so propitious. You'll have either a worse loot or a good one, but it takes more time on collecting it.

By jumping you can grab items above you and evade those pink jerks trying to kill you. It saves some time if you need to grab a fruit above you without going up normally to take it. It's rightly for jumping right/left. Otherwise, running as faster than jumping.
Also, you need at least 16 pixels above your head to overcome the full distance from a jump. Else, you hit the "rooftop" (an object that stands above you) and fall straight down.

! World 2 

In the World 2 you don't have to use a staircase to collect a key. It spawns behind the panda. It's weird for me, but the key spawns if you kick a bunch near it and get something but neigher gold nor sweet.
Most staircases were spawning far away from me, so I had to manipulate the one closer to me. Fortunately, no time was wasted.

! World 3 

World 3 features a lake you have to cross in order to get to the staircase area. I managed to collect 11 fruit instead of 12 on the left side because I would miss a turtle which I must jump on to cross the lake. Otherwise, I would lose time.

! World 4 

World 4 has an extra requirement. The key becomes available for spawning only after you kick all the bunches in the level. (See address 0382 line)
Since I must kick the bunches, I manipulated some extra gold =) Collecting fruit on the way also saves some time.

! World 5 

World 5 is the easiest in the game. You have to collect 2 pearls and that's all. By leaning on seaweeds, you lose no time.

! World 6 

World 6 is the longest one. The key becomes available for spawning if you collect 3 sweets from staircases! So you must spawn at least 5 staircases to go further. (3 for needed sweets, 1 for the key and 1 to exit the world). I had plenty of time there. I kicked all the bunches and messed around a little.

! World 7 

World 7 has an extra requirement again. The key spawns only after you buy a slingshot (10 golds). That's why you need to collect gold =)
Also, this World is crappy for having 1-side trees. You can pop a fruit by kicking a tree from the left side only.
This slingshot is useless. Also, you can't jump while having it. I wasted them quickly to get my whistling jumps back to save some time on collecting fruit from the upper tree of my farming place.

! World 8 

Like in World 7, you have to buy an item to make the key available for spawning. This time it's a potion (15 golds). 
Also I had to get the first fruit ealrier to have a better ability for spawning both the staircase and the key location.

! World 9 

Like in World 2, the key spawns behind the guarding bear here. One staircase less and 1 more gold to get. I got into the framerule and took the key without any manipulatins.

! World 10 

The last one. Here you must buy a heart (20 golds) in order to make the last key available. Farming fruit isn't difficult at all.
That's all over!


! Possible improvements 

This game is too random. I don't think it will ever get perfect in timing. I have passed each world for 2-3 times and I think it's still somehow possible to improve some worlds. For me, it's a big headache now. Let someone else dig into this.
