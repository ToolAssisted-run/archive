> **Imported**
> This run was originally published at https://tasvideos.org/5607M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Jet Set Willy II: The Final Frontier is the sequel to Jet Set Willy and the third game in the Miner Willy series. The premise is that what we saw in Jet Set Willy was a censored, sanitised version of what really happened, because the truth was too ridiculous to believe. As before, Willy wakes up in a bathtub with the tap still running after a party he's too hungover to remember, and has to tidy up the entire house in order for his housekeeper Maria to let him go to bed.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: +2A
* Aims to get to bed as quickly as possible.
* Uses death to save time.
* Collects the minimum number of items necessary.

!! Comments

This is a tool-assisted speedrun of Jet Set Willy II: The Final Frontier for the ZX Spectrum. It completes the any% category, touching the bed in Master Bedroom as quickly as possible.

TAS timing (power on until last input): 79292 frames, 26:25.206

RTA timing (press ENTER to start the game until entering the ending room): 66871 frames, 22:16.885

! Model

The run is performed on the Sinclair ZX Spectrum +2A. JSW2 does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and JSW2 has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

Jet Set Willy required all 83 items to be collected before the game could be completed; JSW2 increases the item count to 175, but only requires 150 of them. Only the minimum number of items are collected and the slowest items to collect are omitted.

As mentioned previously, JSW2 does not attempt to control its framerate. When there is more to process, the game runs slower. As a result, the first action of the run proper is to turn off the in-game music, as this provides a considerable speed boost to the game.

The game also runs slower when there are more lives available. Death abuse in general save more time than can be gained from this, but items are collected in an order which puts these deaths as early as possible, to maximise the benefit from both the death abuse and the increase in game speed. This change in speed is not as dramatic as that from turning off the music, but is still significant.

In addition, the run attempts to minimise jumping, as the game slows down a little while in the air. In best conditions, the game runs at approximately one in-game frame every 0.04 seconds. For the rest of this section, "frame" refers to in-game frame.

Unlike Manic Miner and the original Jet Set Willy, inputs are read only once per frame. While in the air, the movement checks are skipped as Willy cannot be controlled while airborne, but pausing, turning music on/off, and quitting are still checked.

Willy moves horizontally at two pixels per frame, whether on the ground or in the air. This means he travels across a cell in four frames. If this movement would cause him to enter a cell which contains a wall, it will be skipped and he will not move horizontally. Willy can turn around at any time while on the ground, but will not move that frame; however, unlike in past games a jump performed that frame will result in Willy moving horizontally while jumping.

Willy's jump carries him in a fixed arc, unless interrupted by a wall or floor. A jump lasts 18 frames, reaching a peak of 20 pixels above his starting position, allowing him to collect any item up to five cells above the ground he's standing on. This jump can be performed while stationary or while walking, the latter landing him 36 pixels away on flat ground. If he hits a ceiling during the jump, the jump will be cancelled and all movement, both vertical and horizontal, will stop, leaving him to start falling the next frame at 4 pixels/frame. If his horizontal movement is impeded during the jump, the jump will continue as normal without the horizontal movement until either the wall is no longer in the way or the jump ends. If Willy lands on solid ground before the jump is fully completed, or on completing the jump, the jump will be cancelled and he can continue walking without stopping. If he is still in the air on completing the jump, he starts falling at 4 pixels/frame.

Internally, staircases are cells which teleport Willy up or down a cell when you walk into/off them in the correct direction. His visual position is then lowered depending on his horizontal position to create the appearance of a smooth ascent/descent. Collision detection with guardians is done using his visual position, but everything else uses his internal position, most notably jumps (which can cause him to instantly shoot upwards six pixels before even starting the jump). If jumping onto a staircase means he lands on a cell having already moved partway into the next cell, he won't be warped upwards but instead will be able to walk through the staircase (this is an intended mechanic). It's also possible to jump through a staircase without landing on any of the cells that make up the staircase, in which case Willy will just continue his jump as normal; the run usually does this as it is faster than landing on it and falling.

Ropes swing in rooms in a fixed pattern; if Willy touches a rope he will grab onto it. Moving in the direction the rope is currently swinging climbs down the rope, and moving in the opposite direction climbs up it. Some ropes allow him to climb to the top of the screen and enter the screen above, although others prevent this.

When Willy is standing on a conveyor, the game will internally press the movement key corresponding to the conveyor direction. In most cases this will force him in the direction of the conveyor. However, if both left and right inputs are pressed together, he will continue moving in whatever direction he is currently moving. This means if he walks onto a conveyor, or jumps onto it from below, he can walk against the direction the conveyor is moving. However, if he falls onto it from above, he can only stall movement before being forced in the direction of the conveyor. Many conveyors are disguised as normal platforms, and even some staircases are conveyors.

JSW2 adds a quirk with regards to the edges of conveyors - if only one of the two cells Willy is standing on is a conveyor, Willy can jump in any direction, even directly opposite the one he is currently moving in. This is used a few times in the run to walk against conveyors that otherwise can't be walked against.

Willy can safely walk off a floor and land up to four cells (32 pixels) below; when jumping he can land up to two cells (16 pixels) below the starting point of the jump. Falling any further will cause him to die on landing. He will also die on entering a cell which contains a nasty (static enemy), or if his sprite touches that of a guardian (moving enemy) or arrow. JSW2 ignores enemy collisions in some circumstances involving ropes that I don't fully understand.

All rooms start in a fixed state, and none of the enemies are affected by Willy's actions. As such, there is no RNG and no enemy manipulation in the run. On death, the entire room resets back to its state on entering the room, except for:

1. Willy himself, who returns to the last static solid ground he was standing on. If this was in a different room, that room will be loaded.

2. Items, which remain collected even after death; this allows for death abuse by collecting items earlier than they should be able to by dropping onto them from far above, or by dying after collecting the item to warp back to the room entrance.

3. The rooms "Highway to Hell" and "The TROUBLE with TRIBBLES is..." have a special routine for their moving platforms; the state of the platforms in these rooms persist not only when dying in the same room, but also when exiting and re-entering the room, and even after ending the game and starting a new game. Neither of these rooms feature in the run.

There is an in-game timer but this does not attempt to run at any equivalent to real-time; it ticks one second for every ten frames. It holds four digits for the number of hours so will work until 360 million frames have passed, which will take approximately six months. I don't know what happens when this point is reached, as only 24950 frames pass when Central Cavern is reached.

!! Detailed comments

! Loading and pre-game

The first three minutes of the run consist of loading. The +2A accepts menu input from frame 55, so a single ENTER press is used here to start loading the game immediately. After the game has loaded, there is a DRM check to make sure we haven't copied this game illegally - every JSW2 game came with an cassette inlay with a grid of colours; the game will ask for a random part of this grid as proof you have this inlay. We definitely have this inlay.

! Main House (items 1-17)

We immediately head right to collect the tap. We ignore the items in Dumb Waiter and Top Landing as it will be faster to collect them later. We enter The Nightmare Room where we turn into a flying pig and dodge flying Marias and a foot in order to collect a beer mug. We climb upwards to Conservatory Roof and collect the four items in there; JSW2 has changed the layout such that all four items can be collected without dying.

We drop down into Orangery and collect the three items in there before jumping down into Swimming Pool. JSW2. We use the rope to save us from fall damage and head to the West Wing Roof to collect the four items in there, before going to the Cold Store to collect the four items in there.

! Sewers and Beach (items 18-29)

Climbing up the rope in the Cold Store brings us to the sewers area, one of the new areas in JSW2. We collect all items in this area with the exception of one of the objects in In The Drains that requires a lot of retreading ground to reach, so we ignore it.

We drop out of the sewers into The Beach and head straight left to The Yacht and The Bow and collect the two items there. There is a secret room here - if you hit the trip switch in Trip Switch and collect both items on the yacht, walking along the base of The Yacht will cause it to drive off and crash into Deserted Isle, where a single item awaits. This single item is the slowest in the game, so naturally we don't see it in this run.

Coming back to The Beach, we collect the now single sandwich on the beach. We then enter the Tool Shed, look at all of the platforming required to collect the item legitimately and get back out, and decide it's better to just let gravity do the work, falling to our death on the corrupted conveyor tiles to skip it all. A quick clip through the stairs to the lower part of Back Door saves some more walking in Back Stairway and takes us into the basement.

! Basement (items 30-57)

In the original Jet Set Willy, the basement section of the game was a gruelling one-way gauntlet. In JSW2, this gauntlet has been extended. We start with six items in The Wine Cellar; after dropping down a level there's no way to get back up, so we must collect items on both sides before dropping. Enemy cycles determine the most efficient route here, and we take a death to the saw to avoid waiting a few seconds for it to travel back and forth so we can jump over it.

Entering The Forgotten Abbey, we time our jump onto the conveyor so we can follow behind the upper green monk as closely as possible. We can no longer clip through the platform, so we collect the item as intended and make our way over the former Teletubbies (unfortunately Po has been replaced with a Laa-Laa clone) into Trip Switch.

Trip Switch takes the difficulty and annoyance of the Amoebatron rooms in Manic Miner and doubles them. Fortunately, we can save a lot of backtracking by collecting the item from below. We keep progressing, ignoring the item in Potty Pot Plant as it takes too long to get, but collect items in Seedy Hole and The Zoo before heading into Rigor Mortis. 
In Rigor Mortis the monks can't move until both items are collected, so we do just that and indulge in some nostalgia in the mining section. The yellow razor in Down T' Pit moves far too fast to be reasonable, and getting across the room with any real speed requires taking a death. Back up to the Crypt, we hit the switch so the monk moves out of the way and we can leave, collecting all the items in Money Bags and Tree Root before finally reaching the MegaTree.

! MegaTree and Front (items 58-81)

We jump into At the Foot of the MegaTree to collect the first item immediately, then place another jump to collect the next two without touching the deadly... ropes? We go Under the MegaTree and over The Bridge (which seems to be missing its titular feature) into The Garden. Four pixel- and frame-perfect jumps in a row required to get through The Garden in each direction, which is near-impossible for a human but trivial for a TAS. We head into The Off Licence and collect the twelve items there, saving The Garden item for the way back.

Back to Under the MegaTree, we take another item before visiting Cuckoo's Nest and doing the same there. Up to Tree Top, differences in timings means collecting the three items anti-clockwise is faster than clockwise even though it wasn't the case in the original game.

We take an unusual route in Out on a limb as it's faster to get around the enemies that way, and then we drop down into On a Branch Over the Drive. Normally a fall this distance would be deadly, but unless you've already fallen too far to survive the fall counter is reset between rooms; the distances before and after the screen transition are both exactly the maximum survivable distance, so this is the longest fall you can survive in the game. We collect the item in On a Branch Over the Drive, and then climb down the tree and go home.

! East Wall and Roof (items 82-116)

After a short trek we get to Ballroom West and collect a total of 21 items in here and Butlers' Pantry, deathwarping to save time backtracking before retracing our steps to climb the East Wall. We collect the item in Priests' Hole and go through Emergency Generator into ]. The original JSW had an unused room simply titled ], and this room is a reference to it, now storing a large version of an unused camel sprite.

We collect the item in I mean, even I dont believe this and exit via the top. In the original JSW, this is an infinite death loop that ends your game, but done right in JSW2 allows you to skip a small chunk of the rooms and arrive in the middle of the Hunchback screens, in the now misspelt We must peform a Quirkafleeg.

We backtrack to collect a bell and head all the way to the right and back again, collecting all the bells, Esmerelda's prison door, and the end of the flagpole. The wrongwarp above Rescue Esmerelda has been replaced with the Belfry, a new room that takes a long time to get through with only a single item as a reward, so we ignore it.

Back to Quirkafleeg and up to The Watch Tower, we collect the items from right to left as we need to head up afterwards. The wrongwarp above The Watch Tower has been replaced with the Rocket Room, which takes us to our final two new areas: space and teleport zone.

! Space (items 117-140)

Arriving in Docking Bay, we collect one item in NCC 1501 normally and take a death to collect the second early. We collect the two items in Aye 'Appen and then ignore the entire right-hand side of the spaceship - it's a long dead end with very few items. Instead we head back to the Docking Bay and collect the two items before going left into the Cartography Room.

The Cartography Room has a very interesting gimmick - as the name suggests, the room is a map of the game world; rooms you have visited and cleared are marked in green tiles, which can be walked through and stood on; rooms you have visited and not cleared are marked in red tiles, which are solid and cannot be walked through. It's possible to softlock the game by visiting certain rooms without clearing them, but we've made sure to leave a safe route not only through the room but also up to the item.

We head left and collect the lower item in Photon Tube, before coming back for the items in MAIN LIFT 3. We take the lift up so we can collect the upper item in Photon Tube, and then deathwarp to save a lift cycle. Still going right, we collect both items in Phaser Power and head into Sickbay. The top route in Sickbay is a trap - you can't collect the item that way, you can only collect it from below.

In Foot Room, the foot (which crushes you on the game over screen) starts to move down once both items have been collected. To make matters worse, the floor is also a hidden left-moving conveyor. The "correct" way to clear this room is to collect the top item, drop down safely and be carried out of the room before re-entering and collecting the bottom item, running back before the foot blocks the way. Instead we collect the bottom object, jump up to the top and then jump off to deathwarp us back down to a lower platform where we have enough time to get under the foot.

We head back to left side of the spaceship and fully clear all the items, eventually making our way to Beam me Down Spotty. Each of the four platforms is a teleporter; the top two outgoing and the bottom two incoming. We take the top left teleport and enter the teleport zone.

! Teleport Zone (items 141-147)

Teleport Zone is a fairly linear set of rooms that are somewhat experimental compared to the rest of the game. We just head right collecting items as we go, and ignoring INCREDIBLE BIG HOLE IN THE GROUND as although there are a few items below in The Hole With No Name, it takes a long time to get them. Loony Jet Set loops vertically and has hidden staircases leading to the top platforms, so it's a weird route through but trivially the fastest, and we leave via Beam me Up Spotty.

! Going to bed (items 148-150)

We take the top right teleport and arrive back in The Bathroom; we use this opportunity to pick up the items we skipped on our first time through these rooms and then go to... bed?

!! Other comments

Finally continuing the Miner Willy series. This game has not had nearly as much attention from speedrunners, and for good reason - the respawn mechanic makes infinite death loops very, very common, and most of the extra rooms are either incredibly boring or incredibly unfair, or both. Jet Set Willy II+e.22 improves on this game in every way, and you should play that version instead of this one.

With this run I've completed the Willogy with an RTA equivalent time of 51:54.814, more than ten minutes faster than my personal real-time PB. Beating any of these games by themselves is an achievement in itself, and all three in a row is incredibly difficult, but we've yet to see the day when someone does all three in a row in under an hour.

Special thanks go to Derrick Rowson and Steve Wetherill for making the game, Matthew Smith for making the original Jet Set Willy, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
