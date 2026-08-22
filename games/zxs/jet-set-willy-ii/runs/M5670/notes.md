> **Imported**
> This run was originally published at https://tasvideos.org/5670M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Jet Set Willy II+ is an enhanced remake of the sequel to the sequel to Manic Miner, written by one of the original JSW2 developers in 2017. 30 years after his wild party and massive ordeal in cleaning up, Willy tries to remember exactly how it happened; however, his memory is a little hazy and he may have confused some of those events with his favourite episodes of Star Trek.

!! Game objectives

* Emulator used: BizHawk 2.9.1
* Model used: +2A
* Aims to get to bed as quickly as possible.
* Uses death to save time.
* Collects the minimum number of items necessary.

!! Comments

This is a tool-assisted speedrun of Jet Set Willy II+ for the ZX Spectrum. It completes the any% category, touching the bed in Master Bedroom as quickly as possible.

TAS timing (power on until last input): 67896 frames, 22:37.377

RTA timing (press ENTER to start the game until entering the ending room): 68932-11599 frames, 19:06.202

! Model

The run is performed on the Sinclair ZX Spectrum +2A. JSW2+ does not attempt to control its framerate, it simply processes the game as quickly as it can at all times. 128K versions of the Spectrum run their Z80 processor at a slightly higher clock rate, and the +2A and +3 also have some improvements in memory access speeds. As a result, the game runs fastest on these models. The +3 is a disk-based system, and JSW2+ has never been officially released on disk, so the run uses the +2A and loads the game from tape.

! General information

Most of this information is identical to JSW2 - check the changes section below this one if you're already familiar with how JSW2 works.

Jet Set Willy required all 83 items to be collected before the game could be completed; JSW2 increased the item count to 175, but only required 150 of them. JSW2+ requires 298 of 325 (or 330); while technically more items can be left than in JSW2, this isn't the case proportionally, and results in more of the world being visited. Only the minimum number of items are collected and the slowest items to collect are omitted.

As mentioned previously, JSW2+ does not attempt to control its framerate. When there is more to process, the game runs slower. As a result, the first action of the run proper is to turn off the in-game music, as this provides a considerable speed boost to the game.

In addition, the run attempts to minimise jumping, as the game slows down a little while in the air. In best conditions, the game runs at approximately one in-game frame every 0.03 seconds, slightly faster than JSW2. For the rest of this section, "frame" refers to in-game frame.

Like JSW2, inputs are read only once per frame. While in the air, the movement checks are skipped as Willy cannot be controlled while airborne, but pausing, turning music on/off, and quitting are still checked.

Willy moves horizontally at two pixels per frame, whether on the ground or in the air. This means he travels across a cell in four frames. If this movement would cause him to enter a cell which contains a wall, it will be skipped and he will not move horizontally. Willy can turn around at any time while on the ground, but will not move that frame; however, unlike in past games a jump performed that frame will result in Willy moving horizontally while jumping.

Willy's jump carries him in a fixed arc, unless interrupted by a wall or floor. A jump lasts 18 frames, reaching a peak of 20 pixels above his starting position, allowing him to collect any item up to five cells above the ground he's standing on. This jump can be performed while stationary or while walking, the latter landing him 36 pixels away on flat ground. If he hits a ceiling during the jump, the jump will be cancelled and all movement, both vertical and horizontal, will stop, leaving him to start falling the next frame at 4 pixels/frame. If his horizontal movement is impeded during the jump, the jump will continue as normal without the horizontal movement until either the wall is no longer in the way or the jump ends. If Willy lands on solid ground before the jump is fully completed, or on completing the jump, the jump will be cancelled and he can continue walking without stopping. If he is still in the air on completing the jump, he starts falling at 4 pixels/frame.

Internally, staircases are cells which teleport Willy up or down a cell when you walk into/off them in the correct direction. His visual position is then lowered depending on his horizontal position to create the appearance of a smooth ascent/descent. Collision detection with guardians is done using his visual position, but everything else uses his internal position, most notably jumps (which can cause him to instantly shoot upwards six pixels before even starting the jump). If jumping onto a staircase means he lands on a cell having already moved partway into the next cell, he won't be warped upwards but instead will be able to walk through the staircase (this is an intended mechanic). It's also possible to jump through a staircase without landing on any of the cells that make up the staircase, in which case Willy will just continue his jump as normal; the run usually does this as it is faster than landing on it and falling.

Ropes swing in rooms in a fixed pattern; if Willy touches a rope he will grab onto it. Moving in the direction the rope is currently swinging climbs down the rope, and moving in the opposite direction climbs up it. Some ropes allow him to climb to the top of the screen and enter the screen above, although others prevent this.

When Willy is standing on a conveyor, the game will internally press the movement key corresponding to the conveyor direction. In most cases this will force him in the direction of the conveyor. However, if both left and right inputs are pressed together, he will continue moving in whatever direction he is currently moving. This means if he walks onto a conveyor, or jumps onto it from below, he can walk against the direction the conveyor is moving. However, if he falls onto it from above, he can only stall movement before being forced in the direction of the conveyor. Many conveyors are disguised as normal platforms, and even some staircases are conveyors.

JSW2+, like JSW2, has a quirk with regards to the edges of conveyors - if only one of the two cells Willy is standing on is a conveyor, Willy can jump in any direction, even directly opposite the one he is currently moving in. This is used a few times in the run to walk against conveyors that otherwise can't be walked against.

Willy can safely walk off a floor and land up to four cells (32 pixels) below; when jumping he can land up to two cells (16 pixels) below the starting point of the jump. Falling any further will cause him to die on landing. He will also die on entering a cell which contains a nasty (static enemy), or if his sprite touches that of a guardian (moving enemy) or arrow. JSW2+ ignores enemy collisions in some circumstances involving ropes that I don't fully understand.

All rooms start in a fixed state, and none of the enemies are affected by Willy's actions. As such, there is no RNG and no enemy manipulation in the run. On death, the entire room resets back to its state on entering the room, except for:

1. Willy himself, who returns to the last static solid ground he was standing on. If this was in a different room, that room will be loaded.

2. Items, which remain collected even after death; this allows for death abuse by collecting items earlier than they should be able to by dropping onto them from far above, or by dying after collecting the item to warp back to the room entrance.

3. The rooms "Highway to Hell", "The TROUBLE with TRIBBLES is...", and "Present Wrapping Room" have a special routine for their moving platforms; the state of the platforms in these rooms persist not only when dying in the same room, but also when exiting and re-entering the room, and even after ending the game and starting a new game.

There is an in-game timer but this does not attempt to run at any equivalent to real-time; it ticks one second for every ten frames. It holds four digits for the number of hours so will work until 360 million frames have passed, which will take approximately six months. I don't know what happens when this point is reached, as only 47380 frames pass when Central Cavern is reached.

! Notable changes from JSW2

# Willy starts in the Cartography Room - this makes the routing somewhat different from JSW2 as the space section of the game must now be traversed twice.
# Collapsing platforms return from Manic Miner. Every frame Willy is on a collapsing platform it will collapse. After eight frames (not necessarily consecutive) the platform will completely disappear. As Willy is always on two cells (when standing or walking) and Willy's actual position within the cells is irrelevant, a few rooms have some unusual routing to make the most of these platforms.
# Willy has an invincibility period on dying. This lasts about 50 frames and is liberally used throughout the run to prevent a lot of either waiting or backtracking.
# Every 40 rooms visited and items collected earns an extra life, allowing for even more death abuse.
# Most rooms new to JSW2 have been updated to be more fair, and a fair few extra rooms have been added.
# Item count requirement has been increased from 150/175 to 298/325.

!! Detailed comments

! Loading

The first three minutes of the run consist of loading. The +2A accepts menu input from frame 55, so a single ENTER press is used here to start loading the game immediately. The DRM from JSW2 has been removed so we are free to play immediately without entering a code.

! Space, first visit (items 1-16)

The Cartography Room has a very interesting gimmick - as the name suggests, the room is a map of the game world; rooms you have visited and cleared are marked in green tiles, which can be walked through and stood on; rooms you have visited and not cleared are marked in red tiles, which are solid and cannot be walked through. It's possible to softlock the game by visiting certain rooms without clearing them, preventing you from passing the room from right to left. At the start of the game, this is the only room we've visited, and it's marked green due to a bug - this room will be marked red when we revisit it later to collect the item here.

We collect the items in MAIN LIFT 3 and take the lift up. Going right, we collect both items in Phaser Power and head through Sick Bay, saving the items for the way back.

In Foot Room, the foot (which crushes you on the game over screen) starts to move down once both items have been collected. To make matters worse, the floor is also a hidden left-moving conveyor. We collect the top item first and use the new collapsing ground in the room to drop down to the lower item and walk out safely. We head back to Sick Bay and collect the items there before going to left side of the spaceship and fully clearing all the items we see along the way.

! Beam me Down Spotty

Arriving in Beam me Down Spotty, we find it has seven platforms, three more than JSW2 did. Each of these platforms is one end of a teleporter, with the following structure:

 |To Teleport|\    /|To Bathroom|
               \  /
 |To Back Door| \/ |To Mega Hill|
                /\
               /  \
              /    \
             /      \
            /|To Off \
           / Licence| \
          /            \
 |From Teleport| |From Deserted Isle|

This gives us five destinations to choose from, with a massive impact on routing. Some of these are easily discountable:
* Teleport: This takes us to the Teleport Zone, a self-contained linear area with few items that eventually leads us back into Beam me Down Spotty. It's not worth doing this part of the game in an any% run.
* Off Licence: This takes us to the right-most point on the map, which would be great were it not for the basement section of the game only being traversable from left to right (and being mandatory in order to get enough items). Whichever route we take necessarily puts only a few rooms away from The Off Licence, so there is no need to warp there.
* Bathroom: This takes us into the heart of the house, and saves a few rooms of backtracking. However, as we have to traverse the space section twice, and we have to end at Master Bedroom anyway, we're better off saving this as our second teleport.

This leaves us with a choice between Back Door and Mega Hill. Both of these are very close to each other (there are only four other rooms going from Back Door to Mega Hill) and each cut out about three rooms of travel compared to the other. I chose Back Door as it allowed me to take a faster route through Cold Store and made it the tiniest bit faster as a result.

! West Wing, Sewers, and Beach (items 17-92)

After arriving at the Back Door, we head straight to the West Wing Roof to collect the four items in there. We then continue onwards to Under the Roof and deliberately die to use temporary invincibility to allow us to drop down, skipping the need to climb The Banyan Tree and A bit of tree. We collect the four items in Conservatory Roof and the three in Orangery before jumping down into Swimming Pool. We use the rope to safe us from fall damage and go to the Cold Store to collect the four items in there.

Climbing up the rope in the Cold Store brings us to the sewers area. We collect the item in Mega Hill and then enter one of the new areas to JSW2+, Experiment X. This is a small offshoot of the sewers that ultimately leads to a dead end, but one well worth taking as it has 49 items in total.

We head back to the normal sewers area, collecting all items here with the exception of one of the objects in In The Drains that requires a lot of retreading ground to reach, so we ignore it. We alse take deaths in Downstairs and The Outlet to save a few seconds of waiting time each.

We drop out of the sewers into The Beach and head straight left to The Yacht and The Bow and collect the two items there. There is a secret room here - if you hit the trip switch in Trip Switch and collect both items on the yacht, walking along the base of The Yacht will cause it to drive off and crash into Deserted Isle, where a single item awaits. This single item is the slowest in the game, so naturally we don't see it in this run.

Coming back to The Beach, we collect the now single sandwich on the beach. We then enter the Tool Shed, look at all of the platforming required to collect the item legitimately and get back out, and decide it's better to just let gravity do the work, falling to our death on the corrupted conveyor tiles to skip it all. A quick clip through the stairs to the lower part of Back Door saves some more walking in Back Stairway and takes us into the basement.

! Basement (items 93-140)

The gauntlet returns, relatively unchanged from its JSW2 incarnation except for some additional items. We start with six items in The Wine Cellar; after dropping down a level there's no way to get back up, so we must collect items on both sides before dropping. Enemy cycles determine the most efficient route here, and we take a death to the saw to avoid waiting a few seconds for it to travel back and forth so we can jump over it. Entering The Forgotten Abbey, we immediately take a death to the first monk and abuse the temporarily invincibility to cross the room without stopping, ignoring the single item here.

Trip Switch takes the difficulty and annoyance of the Amoebatron rooms in Manic Miner and doubles them. Fortunately, we can save a lot of backtracking by collecting the item from below. With six items in Potty Pot Plant instead of just one, it's now worth going to collect them. We drop into Wonga's Spillage Tray and collect the items there as well as those in Seedy Hole and The Zoo.

In Rigor Mortis the monks can't move until both items are collected, so we do just that and indulge in some nostalgia in the mining section. The turbocharged yellow razor in Down T' Pit has been replaced with a sensible speed drone. Eight items have been added to Water Supply so we drop down to collect them; however, to get out we need to wait for the rope to return. It takes so long that it's actually faster to drop down the four rooms to your death to respawn the rope that way, so we do. Back up to the Crypt, instead of hitting the switch we just take another death and walk through the monk, collecting all the items in Money Bags and Tree Root before finally reaching the MegaTree.

! MegaTree and Front (items 141-164)

We jump into At the Foot of the MegaTree to collect the first item immediately, then place another jump to collect the next two without touching the deadly... ropes? We go Under the MegaTree and over The Bridge (which seems to be missing its titular feature) into Garden. This is significantly easier in JSW2+ by reducing the height of the obstacles, no longer requiring pixel and frame precision. We head into The Off Licence and collect the twelve items there, saving the Garden item for the way back. We also take another death to avoid additional backtracking in Garden.

Back to Under the MegaTree, we take another item before visiting Cuckoo's Nest and doing the same there. Up to Tree Top, differences in timings means collecting the three items anti-clockwise is faster than clockwise even though it wasn't the case in the original game.

We take an unusual route in Out on a limb as it's faster to get around the enemies that way, and then we drop down into On a Branch Over the Drive. Normally a fall this distance would be deadly, but unless you've already fallen too far to survive the fall counter is reset between rooms; the distances before and after the screen transition are both exactly the maximum survivable distance, so this is the longest fall you can survive in the game. We collect the item in On a Branch Over the Drive, and then another death to skip having to climb back down the tree.

! East Wall and Roof (items 165-212)

After a short trek we get to Ballroom West and collect a total of 21 items in here and Butlers' Pantry, deathwarping to save time backtracking before retracing our steps to climb the East Wall. We collect the item in Priests' Hole and go through Emergency Generator into Present Wrapping Room, a room new to JSW2+ with the rare moving platforms.

We collect the item in I mean, even I dont believe this and exit via the top. In the original JSW, this is an infinite death loop that ends your game, but done right in JSW2+ allows you to skip a small chunk of the rooms and arrive in the middle of the Hunchback screens, in the now misspelt We must peform a Quirkafleeg.

We backtrack to collect a bell and head all the way to the right and back again, collecting all the bells, the end of the flagpole, and Esmerelda's prison door. The Belfry now has twelve items instead of just one, and also only needs to be traversed one way thanks to temporary invincibility, so we take them.

Back to Quirkafleeg and up to The Watch Tower, we collect the items from right to left as we need to head up afterwards. The wrongwarp above The Watch Tower has been replaced with the Rocket Room, which takes us to our final two new areas: space and teleport zone.

! Space, second visit (items 213-294)

Arriving in Docking Bay, we collect one item in NCC 1501 normally and take a death to collect the second early, which also allows us to skip backtracking to head further right. We collect the two items in Aye 'Appen and make our way to Star Drive and back again, collecting all the items along the way, aside from the one in (Flower) Power Source which takes just a touch too long to get. Someone Else is made much easier by collecting items from below instead, and we save a bit of travel in Star Drive by abusing the conveyor mechanics.

Back to Shuttle Bay, we take a death to access Glitch in Holodeck, the other new area to JSW2+. This is the only way to access the area, but you get that life back and then some with 60 items in total. We head back to the Docking Bay and collect the two items before going left through the new Unrestrained room into the Cartography Room where we can now collect the item.

We take the lift up so we can collect the upper item in Photon Tube and jump up to get the item in Defence System, and head back to Beam me Down Spotty.

! Going to bed (items 295-298)

We take the top right teleport and arrive back in The Bathroom, and collect all the items on our way to bed.

!! Other comments

My favourite game in the series, shame it's only semi-official. Basically this is better than JSW2 in every way, although I still recommend playing Manic Miner and Jet Set Willy first as this is much faster and therefore harder to control.

Special thanks go to Derrick Rowson for making the game and JSW2, Steve Wetherill for making JSW2, Matthew Smith for making the original Jet Set Willy, Sir Clive Sinclair for making the Spectrum, and everyone in the Speedtrum Specrunning community for keeping da speccy alive.
