> **Imported**
> This run was originally published at https://tasvideos.org/3729M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives

* Emulator used: Bizhawk 1.13.1
* Primary objective: speed
* Takes damage and deaths to save time

!! Improvements

To quickly summarize what has been improved over the previous TAS:
* The birdman scare comes with the special ability to jump higher. This was used to take shortcuts in the graveyard and afterlife stages.
* If you don't have any scares when approaching the cave frogs in the sewer stage, the game will freely award you with an umbrella scare. This is to prevent soft-locking the game since the screen is locked at the cave frogs. This trick has a big impact on the money, scare item and shop routes in the first two stages.

These two points are behind the bulk of the improvement. However, there has also been many minor improvements, e.g.:
* Routing in many places
* Fighting in the overhead stages
* Luck manipulation in the overhead stages
* Menu navigation

!! Game mechanics

! Scares
Some of the scares have special abilities. Since neither the previous TAS, nor the previous RTAs took full advantage of this, here is a summary of my current knowledge:
* Medusa head - 1 attack, freezes floating skulls (found in some bug holes)
* Birdman - 2 attacks, extra jump height
* Two-headed man - 3 attacks, 1 hit-kills the sandworm on Saturn
* Skeleton - 5 attacks, no damage from bees and 1 hit-kills beehives (town stage)
* Umbrella head - 9 attacks, no special ability (?) (even though the manual hints about giving some sort of advantage against the octopus in the sewer stage)
* Ogre - 12 attacks, 1 hit-kills cave frogs (sewer stage)
* Ghost - 15 attacks, no special ability (?)
* Snake - 19 attacks, no special ability (?)

! RAM-adresses
* 3BF/3BE/3BD - Big/Small/Sub x-position
* 3C2/3C1/3C0 - Big/Small/Sub y-position
* 2C/42 - Screen x/y-position
* 1FE - Potions
* 62D/63B - x/y-position of the mouse
* 42F, 430 and 431 - Bug type (0 - red, 1 - dark blue, 2 - light blue/magenta, 3 - yellow)
* 59A, 59B and 59C - Enemy health (overhead sections)

! Shops
The content of each individual shop is pre-determined. Most shops have different sets of items, determined by Beetlejuice's x-position when entering the shop.

! Luck manipulation
This TAS required several low probability events to occur. The best way to manipulate was attacking at different frames or delaying screen transitions. A few random factors could also be manipulated by Beetlejuice's movement.

In two places, up to thousands of possibilities had to be tested to come up with the best available solution. For this purpose, the bot written by Bobo the King was used, [Forum/Posts/361672].

! Screen warping in the overhead stages
This trick was first published in the previous TAS by DrD2k9 and is described in the comments for that submission, [5279S].

!! Run comments
I'm using the same stage splits as DrD2k9 used in his submission, which is different from how the manual labels the stages. That is, each stage below is defined as starting with the game map being shown.

! Stage 1 (town)
* The first part before entering the house and inside the house were copied from the previous TAS.
* 3 yellow bugs were bot manipulated from the first bug hole outside the shop. Luckily, they also got within stomping range quite quickly (although not perfectly).

! Stage 2 (sewers)
* Thanks to the yellow bug manipulation in stage 1, I could buy two Medusa head scares that allowed damage-boosting through the first two octopus.
* The death abuse after the first cave frog was unavoidable. It's only possible to damage-boost through the third octopus with the birdman scare, which would have been incompatible with the item route.
* There are shops in this stage that are better located than the one used here, but they either don't have the birdman scare or would otherwise invalidate the free scares received at the two first cave frogs.

! Stage 3 (overhead, basement)
* All the saws in the game have a fixed pattern and run on a local timer that starts upon entering the room.
* The damage could have been prevented by delaying 10 frames.

! Stage 4 (overhead, house)
* The spiders in the kitchen are random and can be in the way. I got a good setup here though without having to resort to any manipulation measures.
* The yellow room with Delia's 3 art pieces has to be cleared of enemies in order to proceed. The art pieces respond to Beetlejuice's movements to some extent, which makes manipulation slightly easier. I got an acceptable setup here, but still had to waste some vertical movement frames in order to catch the hammer (required by the game).
* In the next auto-scroller, the right path is 14 frames slower. However, the 3 potions on the right side easily make up for the additional distance later on.
* I'm mostly happy with how the fight with the stools (?) went. There were missed movement frames, but the enemies' invincibility time is quite long, which made it difficult to manipulate more than this and the last couple of hits of the two lower ones lined up nicely off-screen. The stools respond to some extent to Beetlejuice's movements.

! Stage 5 (overhead, attic)
* I don't think I've ever seen the football players' legs not attack Beetlejuice, so the potion was necessary for avoiding damage. There is another potion in here that could have been collected for 24 frames. An additional potion could have been used for example when fighting the stools or in a luck manipulation. I couldn't find any use that justified the detour though.
* In the next auto-scroller, it's also presumably impossible to avoid damage without using a potion. There are quite a few possible options for when to throw it though. That was used to set up the RNG-seeds favorably for getting through the next rooms without taking damage.
* The spiders in the room with the fireplace are again entirely random and can sometimes be in the way to deal damage. No issue here though.
* The bathroom is the first room with flies. The flies have one movement component that is linked to the screen and then one component added on top that is random and only manipulable by throwing potions or delaying earlier screen transitions. Because of how the component linked to the screen counters any of Beetlejuice's movements (unless he's at the edge of the screen, where he can move while the screen doesn't), there is no point in trying to dodge the flies. If they have the wrong pattern, they will always hit Beetlejuice, no matter what. Got through unscathed though thanks to the manipulation in the auto-scroller before.
* More football players' legs. The first pair of legs will in most cases hit you. The potion thrown in the auto-scroller mentioned above manipulated no damage though.
* In the library, more flies were avoided. It still goes back to the manipulation in the auto-scroller mentioned above.
* The potion thrown in the yellow auto-scroller was done to manipulate the mouse movements. The solution was found with the help of the bot.
* The mouse starts out in a room to the right. Every frame, it randomly moves horizontally or vertically (although it seems to have a bias for continuing in its current direction). In order to reach the left room, it needs to pass through a narrow corridor. The rather strict requirements consisting of mainly moving to the left and hitting the narrow corridor make this a very low probability event. The mouse doesn't respond to Beetlejuice's movements, so the only options for manipulating it was by throwing a potion or by delaying previous screen transitions. The end result was good, but not perfect. I had to stop the vertical movement for 2 frames.
* The last set of rooms demands a fairly long time spent with flies swirling around. Again, there is no way to move out of the way of the flies due to how their movement is built up. Unfortunately, it didn't line up completely this time and I had to use an additional manipulation for the flies. The only manipulation left was a delay. This was the reason for the 2 frames of delay right before exiting the mouse room.

! Stage 6 (graveyard)
* Here is where the birdman scare first came to use. A few shortcuts were used before the tower, but most of the shortcuts were inside the tower.
* The flower inside the tower is another RNG-event. Again, it didn't line up perfectly and I had to resort to a delay for manipulating it. That's the reason for the 2 frames of delay right before exiting the previous stage.

! Stage 7 (overhead, attic maze)
* Nothing of note here. Just warping to the exit.

! Stage 8 (afterlife)
* There is a 1-frame delay right at the start of the stage to manipulate a frog to be out of the way on the right side of the stage.
* The additional jump height from the birdman scare allows for some neat shortcuts, which means collecting the tickets out of order and a significant time save over the "intended way".
* The two death abuses save somewhere around 2 seconds each.

!! Credits
* DrD2k9 for the previous TAS and for helping converting the movie into bizhawk.
* Bobo the King for writing the bot and sharing it in the forum.
