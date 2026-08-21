> **Imported**
> This run was originally published at https://tasvideos.org/5847M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is a TAS of 'Mighty Bomb Jack' for the NES that completes the game as quickly as possible with "Any Ending" (aka any%). The "Best Ending" requires collecting special items hidden in a pyramid's labyrinth so that all three members of a royal family, and a secret treasure, can be saved at the game's end. But for "Any Ending", no items are required and only the King is rescued. In previous submissions for this branch, warping was used in all 16 Palace Rooms because it was believed that was the fastest way to get to the end game area. But while I was putting together a full game map I found out that if you fail the warp in PR 4, you can take a shortcut through some of the standard labyrinth rooms to get to PR 11. The warping strategy is then used again from PR 11 to 16 to get to the end of the game. 

All inputs in this TAS were manually input by myself, no inputs were copy/pasted from other TASes, although other TASes were reviewed for routes and tactics.

In these notes I will describe various game mechanics and TAS tactics to help with understanding the run, as well as a breakdown of which tactics were used in each stage.

__SPECIAL THANKS__
Before continuing, I wanted to give a special shoutout to three people who have been instrumental in helping me optimize this TAS.

Firstly, Ktwo has helped guide me towards a number of resources that improved my understanding of the game, and also came up with some route improvements that will be specified in the stage breakdowns. The first version of the TAS I submitted was already faster than a previous submission for this category/branch by Guybrush, so I figured I was on the right track and didn't need to analyze his TAS. But under Ktwo's recommendation I took a look at that TAS as well as Hisatoki's 'Best Ending' TAS for routing and helpful tactics.

Secondly, Threecreepio figured out some details about the game's movement mechanics that allowed me to optimize the TAS even further with sub-pixel manipulation. He also discovered a pause-jumping trick that made opening chests and breaking blocks a little faster.

Thirdly, a user by the named Procyon on stratgeywiki.org put together a bunch of awesome info, most important of which is the "shortcut" that helped cut many seconds off the TAS. He says he found it in a Japenese strategy guide.

__IMPORTANT MEMORY LOCATIONS__
*3D1 - Sub-X Pixel, 3D3 - X Pixel
*3D7 - Sub-Y Pixel, 3D9 - Y Pixel
*3E6 - Sub-Gravity, 3E7 - Gravity
*3C1/3C2 - SubX/X when the screen in moving
*3C3/3C4 - SubY/Y when the screen is moving
*FA - Jump/Hover Counter
*356 - Bomb Counter

__MOVEMENT MECHANICS & SUB-PIXEL MANIPULATION__
Jack's movement along the X-axis is fairly consistent, alternating between 1 pixel and 2 pixels because the sub-X pixel movement is 1.5 pixels per frame. The only thing that can slow down horizontal movement is bumping into a barrier. But Y-axis movement is very different. Just like with the X-axis, movement along the Y-axis has sub-pixels, but how quickly those sub-pixels change depends on your current “Gravity”, which changes based on “Sub-Gravity”. Your current G determines how quickly your sub-Y changes, according to a table. For G values less than 64 the change to sub-Y is negative (rising up the screen), becoming 0 around 64 (hovering), then beginning to become positive when beyond 64 (falling down the screen). G caps out at 127 (aka “terminal velocity”). Whenever Jack jumps, both G and sub-G set to 0, while hovering causes G to set to 64 and sub-G to 0. Each frame during jump/hover (including the frame of the jump/hover input) will cause sub-G to grow by 240 unless there are up/down inputs. Up inputs make is grow only 160, while down inputs make it grow 352 (aka 1 G + 96 sub-G). Whenever Jack lands on a surface, the main Y value “snaps” to a number determined by the surface, but the sub-Y when landing can be different. With careful input control this can be used to set up for faster jumps/falls. Sub-Y and Sub-G carry over from the end of one stage to the beginning of the next, so you can manipulate inputs when approaching an exit to set up for an ideal start on the next stage.

__PALACE ROOM WARPING__
There are 16 Palace Rooms in MBJ, each with a different configuration of 24 bombs and thin columns/platforms. When the first bomb is collected, another bomb becomes lit determined by a bomb sequence. To warp to the next Palace Room and bypass the labyrinth areas between them, the lit bomb must be collected last. The routes used in each of these stages selects a first/last bomb set that allows for a faster overall path through the room. Ideally we want to collect a bomb near the entrance that will light a bomb near the exit, but the bomb sequence usually doesn't allow this. If the lit bomb is collected early, another bomb becomes lit and the warp will fail. The warp is failed on purpose in PR 4 of this TAS to access a shortcut through the labyrinth.

__SPAWN TYPE MANIPULATION__
Every time Jack jumps or hovers, a counter goes up. When a mummy hits the floor of a room, it will transform into one of six different types of creature. The type of creature is determined by the jump counter's value (mod 6). Usually this doesn't matter in the TAS, but there are a few places where the wrong type of spawn would get in the way.

__LAG REDUCTION__
When too much stuff is on screen and/or happening at once, it's possible for a lag frame to occur which essentially causes the game to freeze for a frame. This is more common on later stages because the mummies spawn faster so you're more likely to have 4 mummies/creatures on screen at once. Also the 20th bomb collected in each stage causes a Power Ball to spawn, and every time you hit a 5000 point threshold a Bonus Coin appears, adding more sprites to the mix. It would be great if points could be manipulated so that those 5k thresholds only occur during the stage clear screens and we never get any Bonus Coins. Unfortunately, options for manipulating points are limited given the fact that our primary goal in this TAS is speed. During stages the only way to adjust points is collecting the Bonus Coin for more points, collecting the Power Ball to turn enemies into coins and collecting the coins, or jumping off a surface which earns a mere 10 points. It's much easier to adjust points during the beginning screen and during the shortcut by collecting more/less bombs and jumping off surfaces more/less. The current version of the TAS had a very good level of lag reduction.

__MUMMY PHASING__
Sometimes mummies can pass throw a platform or wall that is supposed to stop them. I don't understand the mechanics of how this is possible, but Jack's X position is clearly an important factor. This version of the TAS has no mummy phasing because the rooms where it was done on purpose have been bypassed by the shortcut, but I still wanted to mention it here for posterity (see previous TAS versions). In both cases I had to “wiggle” Jack while he was in midair to get the mummies to fall completely through the floor. It seems to be a multi-frame process because there can be situations where the mummies look like they're starting to phase through the platform, but snap back up to the surface unless you do the wiggle.

__GENERAL TACTICS__
Below is a list of tactics that I will reference in my stage breakdowns.
*Corner Clipping: At the right speed/angle, it's possible to make Jack clip into the side of a platform or a chest. This can be useful in situations where a platform is in the way of a desired horizontal movement, effectively shortening the length of the platform, or when a chest would otherwise get in the way of landing and jumping sooner.
*Totem Pole Clipping: Developed by ktwo. Only useful during the shortcut to jump up through a totem pole's wing/ledge.
*Clip-Up: When corner clipping upwards, a jump input can be used to make Jack's sprite shift up to get on top of the platform faster than letting him rise normally.
*Jump Boosting: Stopping at a platform during an ascent to jump off it for an overall faster ascent. This is often after a Clip-up. Clip-ups and jump boosts can be done with consecutive inputs in Palace Rooms because both A and B do the same thing. In other types of rooms B is used to activate Mighty Coins.
*First Frame Jump: On the first frame that inputs can affect Jack in a stage, a jump input will cause him to jump mid-air from his starting position. After that frame you can only hover when in mid-air.
*Edge Bumping: When Jack is falling/rising past a platform, there is a particular frame where pressing into the platform will result in on overall sooner horizontal movement, even though the sprite looks like it's facing the wrong direction for a frame.
*Hisatoki Leap: Developed by Hisatoki in their “Best Ending” TAS, this involves jumping off a platform in order to to fall past its edge faster than hovering over the platform would have been.
*Pause Jumping: Developed by Threecreepio, this is useful in stages other than Palace Rooms. There are a few places where we must jump off something to break/reveal/open it, then land again as quickly as possible, probably to do it again. Without pause jumping, this would require an A press, a gap frame, and then another A press. But Threecreepio discovered that you can do an A press, start on the next frame, gap frame, then press A and start on the same frame. It would seem that this wouldn't be faster since it takes 4 frames instead of 3, but the pause stops Jack's sprite from getting higher up before the hover.



!!!STAGE BREAKDOWNS
%%%ROUTE ORIGIN: My stage breakdowns will start with me giving credit to the first usage of the routes. This credit won't necessarily reflect where I myself learned the routing from (I based my early work on Msm_smtn's WR before looking at pre-existing TASes and former WRs), but is intended to give credit to the first person who developed the routing. Palace Room routes are evaluated on three general elements: the first/last bomb choice, the order the bombs are collected, and the path followed to collect the bombs. If all three elements were developed by the same source, I consider that the same route overall, otherwise I'll specify when the individual elements were developed.
%%%EXPLANATION: In this section I will describe the various TAS tactics used during the route and try to explain why things are done in a certain way. It will not be a full explanation of the route, just the TAS tactics that made the route faster. I will also try to give possible explanations for any lag frames remaining, but I forgot exactly where all the lag frames I was able to avoid are. I won't bother going into detail about the sub-pixel manipulations because almost every jump and up/down input are part of that. The general explanation of sub-pixels given above should be enough to understand those decisions.

__BEGINNING STAGE__
%%%ROUTE ORIGIN: Used the No Coin strategy by Guybrush.
%%%EXPLANATION: In terms of speed the only thing that matters on this screen is to keep moving right without stopping or hitting any objects. The TAS reaches the exit as quickly as is possible because Jack does not stop to collect any of the Mighty Coins, even though I do reveal the location of some Mighty Coins for the benefit of RTA runners watching the TAS.

__PALACE ROOM 1__
%%%ROUTE ORIGIN: Same first/last and bomb order as Ktwo, but Msm_smtn jumped onto the lower left platform after collecting the first three bombs and my path to the first bomb is different.
%%%EXPLANATION: We start by falling down and to the right. Right movement has to be delayed a bit to avoid hitting the upper left platform. As Jack approaches the lower left platform we move left to corner clip into it and collect the first bomb. Without the corner clip we would either collect the bomb to the right first, or be forced to hover to make sure we get the correct first bomb. As we collect the last bomb in the left column we move right to corner clip into the upper left platform, then clip-up and jump boost off it. Another clip-up and jump boost is used near the end of the room as well.

__PALACE ROOM 2__
%%%ROUTE ORIGIN: Same first/last as Hisatoki, but my path to the first bomb is different and I have different pathing in the top section. Ktwo developed different bomb order on the right side that saved 12 frames. 
%%%EXPLANATION: We start off with a first frame jump to go over the bombs to the right before dropping down to collect the intended first bomb. Without the FFJ we would have to tap left to avoid grabbing the bomb right next to us at the start, then hover below the bombs while moving right, which would get us to the first bomb 5 frames slower. After collecting the bottom left set of bombs we jump up and clip into the next platform. A single right input is needed to collect the right bomb of the set before clipping up and collecting the rest of the set. Then we jump up to get to the next set, but this time we don't have the space need to clip (unless we move further right first but that would have taken more time). Instead we do an edge bump while rising past the platform to get us to the left bomb sooner and start dropping down to the platform. The right movement as we're falling has to be delayed a frame or else we would miss the platform. Edge bump on the middle platform on the way down at the end.

__PALACE ROOM 3__
%%%ROUTE ORIGIN: Same first/last as Hisatoki, but I collect one bomb early and have different bomb order and passing on the right side.
%%%EXPLANATION: After collecting the first bomb, we jump up to the left and clip into the lower left platform, clip up, and move left a little to collect a bomb before continuing up to the left column of bombs. This may seem slower then just jumping up for the column first, but when we come back down to get the other two bombs we're able to jump up sooner than if we had to walk across the whole platform for all three bombs. When jumping to the right side, there seems to be a mummy in our way, but the timing and hitboxes are just right for us to land and jump over it to collect the two bombs on that platform then jump again for the top right bombs. No special tech after that.

__PALACE ROOM 4__
%%%ROUTE ORIGIN: Same general pathing as Guybrush, but this TAS fails the warp in order to access the shortcut so first/last and bomb order are different.
%%%EXPLANATION: After collecting the bombs on the left floor, we clip into the lower left platform a little bit, clip-up, and jump boost off. The jump boost is performed a little slower than is possible so that we can collect the left bomb on the platform a little early. Like in the last stage, this makes is so that we don't have to walk across the platform as much later and can jump up earlier. We clip into the upper left platform, but have to make a single input move to the left to collect a bomb before clipping up and collecting the rest. Just like in the last stage, a mummy looks like it will be in our way but we have just enough room to land and jump over its hitbox while collecting the bombs on the upper right platform. This ends up being a Hisatoki Leap since we don't have ceiling bombs to grab before going down like in the last stage. Another Hisatoki Leap is performed on the lower right platform.

__SHORTCUT__
%%%ROUTE ORIGIN: Described by Procyon in his StategyWiki.org notes. 
%%%EXPLANATION: The first room of the shortcut is vertical and starts off with a first frame jump followed by a series of jump boosts with a couple edge bumps along the way and a corner clip into the chest at the top to jump into the exit sooner. The second room is horizontal and also starts with a FFJ, then we clip into the totem pole ledge to get to the left faster. We keep moving left without delay until we get to a platform we have to break to access an invisible chest with a sphinx in it, which will open the door to the next room. Pause jumping is used to get the sphinx faster. We then jump off a platform to the left and head back to the right side of the room without delay, corner clipping into two chests along the way, and jumping up into an exit that's only open because we grabbed the sphinx. In the next room all we have to do is die as quickly as possible. After the death we respawn in the previous room and repeat the sphinx collection and death. (NOTE: the deaths have to occur in the third room). On the third go around we don't die (we would Game Over if we did), instead we FFJ and jump boost our way to an exit in the upper left corner that only appears after the deaths, and corner clip into the chest at the top to jump into the exit sooner. The next room starts off with a FFJ followed by a series of jump boosts. Then the last room of the shortcut is just a FFJ up to the door that takes us to Palace Room 11.

__PALACE ROOM 11__
%%%ROUTE ORIGIN: Same first/last as Ktwo's former WR, but bomb order and pathing were developed by Ktwo more recently.
%%%EXPLANATION: The first jump up is technically a clip, but only by necessity since we don't have the space to collect the third bomb and move over to the top of the wall. Hovering over would be slower. We clip in and up at the upper left platform. We don't need the single left input to collect the bomb we miss because we're going back that way again later. We sort of do a mini Hisatoki Leap off the top platform. The ceiling prevents a full leap. Edge bump at the bottom left. Jump boost on the center right wall, then clip in and up to the upper right platform. Then another mini Hisatoki Leap to head down to the last bomb.

__PALACE ROOM 12__
%%%ROUTE ORIGIN: Same route as Hisatoki. Guybrush's route was very similar, but had a different first/last.
%%%EXPLANATION: Not much here in terms of special TAS tech. We start off with a First Frame Jump in order to get over the upper left bombs and get some of the upper right bombs first. Hisatoki Leap off the left side. Lag frame caused by the appearance of the Power Ball (Bonus Coin being present likely a factor).

__PALACE ROOM 13__
%%%ROUTE ORIGIN: Developed by me in 2020 for RTA spawn manipulation purposes, turned out to be good for TAS as well.
%%%EXPLANATION: As far as TAS tech is concerned, there's a clip when going down the right side, then and edge bump near the bottom. Clipping up the left side too, and a clip-up at the top. Likely was some jump/hovers control for spawn type manipulation in there somewhere.

__PALACE ROOM 14__
%%%ROUTE ORIGIN: Same route as Hisatoki.
%%%EXPLANATION: No special TAS tech to point out. There's a lag frame from when the fourth mummy spawns.

__PALACE ROOM 15__
%%%ROUTE ORIGIN: Route, including first/last, developed by Ktwo.
%%%EXPLANATION: First Frame Jump to get to the the first bomb, making the last bomb close to the exit. Edge Bump during the fall back down the right side. Slightly clipped into wall on the left side to make boosting off the wall a little faster. 2 lag frames caused by too much stuff on screen.

__PALACE ROOM 16__
%%%ROUTE ORIGIN: First/last is mostly irrelevant here since we aren't warping, but pathing was developed by Msm_smtn. I collect one bomb earlier than Msm_smtn, although they may have skipped it by mistake.
%%%EXPLANATION: We do a First Frame Jump so we can get the top left bomb and immediately hover so we get the second too (in hindsight this isn't necessary since collecting them at the end wouldn't slow down our approach to the exit, but it's a helpful thing to do in RTA since it makes it easier to hit the exit). Clip in and up when entering the bottom hole. Also clip on the way out.

__END STAGE __
%%%ROUTE ORIGIN: No coin strategy from Guybrush.
%%%EXPLANATION: We start with a first frame jump up to the platform. Edge bump on the way up. Pause Jumping to break the blocks. Didn't need pause jump when opening the chest, doing the regular double jump was just as fast for some reason (does need different sub-pixel manips afterwards though). Rightward movement to the exit needed to be stopped for one frame to avoid hitting the platform. In the second room, there is technically a clip-up to get on top of the invisible chest. Pause jumps to reveal chest and open it. When we return to the first room, we edge bump and jump boost to get to the exit faster. In the last room, we FFJ to get up faster. Hisatoki Leap to get down faster. Pause jumping to break blocks faster. Edge bump and jump boost to the exit.
