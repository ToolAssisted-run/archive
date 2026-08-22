> **Imported**
> This run was originally published at https://tasvideos.org/5490M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

The Trap Door is a cooking simulator based on an 80s children's TV show in which Berk has to prepare various unusual meals for The Thing Upstairs.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: 48K
* Aims to beat the game as quickly as possible
* Plays on hardest difficulty
* Heavy glitch abuse

!! Comments

This is a tool-assisted speedrun of The Trap Door for the ZX Spectrum. It does the bare minimum needed to earn the best rank in the game, "Clever and Overpaid".

TAS timing (power on until last input): 52651 frames, 17:31.338

RTA timing (press S to start the game until the final score bonus starts): 38486 frames, 12:48.490

! Model

The run is performed on the Sinclair ZX Spectrum 48K, as later Spectrum models can only run this game in 48K mode and it takes an extra couple of seconds to make this switch.

! General information

Berk can walk freely around the castle. If he walks into a switch he will flip it, if he walks into a staircase he will climb it, and if he walks into an item he can pick up he will walk left or right to match its X-position before picking it up. While holding an item he can carry it around the castle, tip it to empty its contents, drop it, or gently place it.

Berk is given five tasks to complete in total; the first and last are always the same, but the middle three are presented in a random order. The exact order we get is not too important, as long as eyeball crush is not the first task of the three.

! Wall clip

Normally, Berk cannot walk through walls. However, if you drop an item from the upper walkway onto the boundary between rooms, and then go to the item again, Berk will clip into the wall trying to pick it up. This is used to save a lot of stair climbing.

! Task 1: Can of worms

The first thing we do is set up everything we can in a single loop. We push the cauldron upwards so we can drop a slimy into it later, before taking the bag into the plant room, tipping the seed packet out of it, and then dropping it on the room boundary where we can use it to clip through the wall.

We empty the seed packet into the middle pot. Only one seed actually lands in the pot (the others land on the floor), and this seed will grow over the next few minutes into a giant eyeball. We drop the empty seed packet on the opposite room boundary and immediately use it to clip through to get to the crusher faster, flicking the switch until it is just high enough to crush a monster.

We then head down into the cellar and pick up a slimy. Some RNG manipulation has been done along the way to ensure that the slimy moves left before we pick it up, clipping us into the left wall. There is no room to the left of the cellar, so we briefly enter a blank void; leaving this room puts us in the pantry, which is exactly where , but we have to get to the upper walkway to do so. Fortunately we're still in the wall so we just walk back into the plant room and climb the stairs.

We drop the basket onto yet another room boundary and then grab the can ready to collect our worms. We drop it on the trap door and flick the switch to open the trap door and send the can flying into the air; opening the trap door also releases the worms. We close the door for just long enough to allow a worm to crawl on top of it, and then open it again to send a worm flying in the same trajectory as the can. After closing the door so we don't lose the can, we head over to pick it up knowing that by the time we get to it a worm will have completed its flight and landed inside it. We place it in the lift and send it up to complete our first task.

! Task 2: Boiled slimies

We push the cauldron to the right while we wait for The Thing Upstairs to give us our second task, as monsters do not start leaving the trap door until he does. We open the trap door a few times until the flamethrower monster comes out (unfortunately I couldn't manipulate it into leaving first time), and a ghost comes out with it.

The ghost is a monster exclusive to Superberk difficulty, that randomly leaves the trap door anytime it's open. It can follow Berk around the castle and spook him by touching him, sending him instantly to another part of the castle. I did experiment with using this as fast travel, but there were very few areas where it could be useful and having to continue to deal with the ghost afterwards made it unworkable, so instead it's manipulated to leaving as few and least impactful times possible. Ghosts can be dispelled by feeding them a worm (or a bottle of eyeball crush, but this prevents the game from being completed).

The flamethrower monster roams around the floor of the castle and actively chases Berk whenever he can. If he gets close enough to Berk he will stop and shoot flames at him; if this hits Berk he will be sent instantly to another part of the castle, just as when the ghost spooks him. If, however, he hits the cauldron instead, he will heat up its contents.

We deal with the ghost and push the cauldron towards the lift. We accidentally heat the cauldron while dealing with the ghost, but it will have cooled by the time we get it to the lift, so we need more heat. We allow the flamethrower to give it another blast and send it up.

! Task 3: Eyeball crush

We push the vat into a position we can drop things into it, clip through the wall to pick up the now fully-grown eyeball and drop it into the vat. We then make our way to the crusher and stand in a position where the flamethrower monster will stop directly under the crusher, triggering it and killing itself. We need to do this as only one monster can be out of the trap door at any time (except for the ghost).

While the crusher is falling we quickly flip the switch to break the parity on the crusher; normally, each flick of the switch raises it up by two cells, but if done while the crusher is falling the first part doesn't register, resulting in it raising only one cell (and the switch being the wrong way around). This eventually saves time in the final task, and we raise it to the height we need then.

We let the spring monster out of the trap door, having manipulated RNG so it's the first monster that appears and also jumps to the right, which allows us to push the vat and the bottle into its path more quickly and get some eyeball crush up to The Thing Upstairs.

! Task 4: Fried eggs

We send the vat down the trap door and allow the spring monster to follow it. We get the bird out instead, and it's followed by a completely inconsequential ghost. The intended way to get eggs is to take the bullet out of the basket, place it on the trap door and use the switch to fire it into the bird's cloaca (no, really) to make her lay an egg, and then catch the eggs in the basket before tipping them into the pan.

We're in too much of a hurry for this though, so we use the pan to hit the bird (giving a worm to the ghost in the process), and then catch the egg directly in the pan and put it on the stove.

It takes a little while to cook so we do a bit of cleanup while we wait and drop Boni on the trap door before collecting the fried eggs and sending them up.

! Task 5: Tidy up

In order to tidy up, you must empty the castle of every item (except for Boni and any slimies in the cellar). We head to the plant room and put everything in a pot, before heading back to the trap door.

The bird will wait over the trap door to leave by herself if you've made her lay all her eggs, but otherwise she requires another hit first, and this time Boni is the one to do the honours. While waiting for the bird we collect worms in our pot and send Drut flying through the air and down the trap door. We burn our last worm on the ghost, saving us the effort of potting it, and then drop the pot down the trap door and close it off for eternity.

With a tidy castle, we send the lift up, and are rewarded with a safe containing our wages. This is where the intracacies of the crusher come in. The easiest way of telling the height of the crusher is to count the number of rope knots visible; at ground level there are 12, and each flick of the switch raises it by two. When there are four or fewer knots visible, anything that ventures below it will set off the crusher and be crushed.

The safe can only be opened if pushed under the crusher when it is at a height of three knots; at two or higher, the entire safe will be crushed and Berk won't get his wages (resulting in a "good but underpaid" rank); at four, the crusher will land on the safe at a height of seven knots. As you can only increase the height by two knots at a time, the intended solution is to raise the crusher to a height of four, push the safe under it so the crusher lands on it, push the safe back out of the way again, and then raise it to a height of three before pushing the safe under it again.

Fortunately, earlier we removed the need to do all this by flicking the switch while it was mid-crush, causing the parity to be odd all by itself and allowing us to raise it directly to the height of 3 without needing the safe at all. With the hard work done we open the safe and claim our wages.

!! Other comments

The Trap Door is truly a unique game. It was a licensed game that wasn't just a clone of an already existing game, it was a cooking simulator before anyone even knew what those were, and it used big chunky sprites to convey the personality of the characters far better than anything else of the era.

This TAS is definitely improvable with better RNG manipulation by using monsters to get around the castle faster or even more exotic strategies like manipulating worms to allow the pantry->plant room wall clip without any setup, but I was unable to get this to happen.

Special thanks go to Don Priestley for making the game, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
