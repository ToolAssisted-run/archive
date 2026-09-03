> **Imported**
> This run was originally published at https://tasvideos.org/3960M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Montezuma's Revenge - for Colecovision
You play as Panama Joe; fearless explorer and treasure hunter.  You have decided to brave the trap-filled pyramids of the ancient Aztecs in search of Montezuma's treasure.

!!Game Basics
*The game consists of 9 pyramids that must be explored from top to bottom to reach a treasure room at the bottom of each pyramid.
*Each pyramid gets progressively harder and each pyramid (while similar to the others) is unique:
**Walls are moved around from stage to stage 
**Enemies are added
**Traps are added 
**More dark rooms are added
*Once the 9th stage is beaten, the game loops on Stage 9
*Various items/tools can be collected
**Gold Coins - Add points only
**Amulet - Turns enemies grey and unable to harm you for a limited period of time. Activates upon pickup.
**Sword/Dagger - Kills either a skull or spider.  Once used it is lost.  Snakes cannot be killed with this item.
**Torch - Lights up rooms that would otherwise be dark.
**Keys - Used to open doors of like color
*Only 5 of these items can be held at any one time.

!!Pertinent Version Differences
We currently have a [2664M|publication] of this game for the Sega Master System.  The following are differences in the C64/Colecovision port.
*SMS has 11 pyramids, C64 and Colecovision only has 9
*Treasure rooms
**SMS are singular rooms; C64 and Colecovision are multiple screens wide and theoretically infinite screens vertically
**SMS contain traps; C64 and Colecovision do not.
**SMS can be finished by death or by exiting either side of the room.
**C64 and Colecovision can be finished by reaching a pole on either extreme left or right side of the room; however, the Coleco version doesn't have a timeout period before you are kicked out to the next level entrance.

!!Tools Used:
	Bizhawk 2.3.1
	Ram Watch
	Lua Script (for generating frame counts for every room)
	
!!TAS Notes
I started working on this TAS by myself when EZGames69 referred DrD2K9 to me. This is when I found out that we were working on the same game, but for different consoles. Since the C64 turned into a glitch fest, we decided too embark on improving what I had. The collaboration was extremely fruitful and we got a lot out of this effort by challenging each others inputs.%%%
Among our efforts, we committed to heavy experimentation (different routes, different key grabbing patterns, and movement optimization) and finally came to the conclusion, one level at a time on whether or not we thought this effort was optimized.

Finally, we get to see a full run of this game where no glitches were discovered. DrD2K9 was nice enough to hold up [6375S|his submission] until we cleared this one away so that we could submit them together.

__Level 1__
*This is the only level that this route is used in. Two big things occur here that were used to cut the most time possible...and they were used in the same room.
*A precise jump at frame 2584 allows a skip between an opening. This can only occur, when the character's body is shifted a certain way. At first, this wasn't thought possible, but DrD2K9 made the first part of this discovery. The second part came from me find a faster way to pass through the gap in the floor, without having to jump.
*At frame 2793 a death was used. Dying will take you back to the beginning of the room, it cuts off a number of seconds without having to go through the slow rope climb.
*It is important to note that any fall distance beyond 2 blocks deep, will cause a death; however, if you can catch a rope...you can fall as much as you like and avoid dying. At frame 4852, this is accomplished.
*Also, jumping the rope is much faster than climbing, which is seen at frame 4885.
*A jump at frame 5222 was done to maximize the fast fall without dying. This occurs on the edge of 3 blocks...in this case 2 block and 7 pixels...the absolute max fall distance to avoid death.
*As with all level endings, there is a Treasure Room that just be traversed. In the Colecovision version...the behavior is much different than that of the Commodore 64 version done by DrD2K9. Here, lots of time can be save by traversing the the left or right side of the Treasure Room as fast as possible. The optimal situation is to land on the pole at the last frame near the bottom. This triggers the next room and continues on to the next level. With the C64 version, the fall continues for a few rooms and then matches up with the next level entrance.
**The treasure rooms are purely RNG and can be controls by the frame you enter them on. With careful analysis, you can find the most optimum pattern.

__Level 2__
*The entire game has a lot of similarities and you'll notice that the next 8 levels always has the same starting point. The difference each level, comes with different barriers and key placements. Because of this, routing starts to change...pushing us to discover the best route around the new obstacles.
*At frame 7452, a bunny hop was performed to grab a key. This will not be seen much, since the bunny hop was the only way we knew in grabbing the key. Later on, I discovered the body shift that allowed us to grab it on the way down. Now, this make appear to make the TAS unoptimized, but the problem is trying to time up our route with the disappearing floors and chains. This bunny hop lost about 19 frames in some cases, but it wasn't enough to make up for passing through an area on an early cycle. So, this did not impact the TAS.
**DrD2k9: Specifically, removing the bunny hop in the levels it exists would require an additional 29, 56, and 44 frames to be found elsewhere in levels 2, 3 and 5 respectively ''before'' the first disappearing floor that needs fallen through in those levels.
*Another thing to note about the increasing difficulty of these levels, is that darkness will occur earlier and earlier.

__Level 3__
*Same thing at the beginning. Route changes a bit and an early Red key is grabbed at frame 11755. This helped to reduce later traversing for an extra red key and gave us the ability to pass by another cycle of disappearing floors.

__Level 4__
*At the start, the difficult is becoming more visible with more enemy obstacles.
*At frame 16108, the first jump with a body shift occurs for grabbing the Grey key. This time, it was necessary to slip through a cycle in the coming rooms. This shift was made possible by stopping forward motion for one frame and then reversing the opposite direction.

__Level 5__
*Almost the same route as 4. Darkness occurs even earlier.

__Level 6__
*Same start as 5, but the early Red key is cut off from grabbing...so we had to alter the route to find a fast red key.

__Level 7__
*The inputs for 7 seems to be a repeat of multiple levels before, but we struggled to find 2 or 3 frames in level to skip a cycle. I eventually reasoned out how it was better to approach from the right side to grab the key. This made it faster attach to the ladder from the left side...since you can start descending faster from the left, rather the right. Discovering this strategy made it possible to skip the upcoming cycle on the last frame and thus eliminating 103 frames for this level alone.

__Level 8__
*More of the same. One thing to note though...the Treasure Room optimization caused us to come in on a different frame of the floor/chain cycle. Sometimes it was necessary to rearrange the grab order of keys in order to take advantage of the cycles.

__Level 9__
*The final stage is in complete darkness, until the end...where a torch happened to be in the way of us moving towards the exit. This was unexpected, since our maps didn't show the item. On treasure room, the TAS needed to end on the last jump. So extra time was given to find out how far back we can make that last jump to make it over to the pole to the ending of the game.
*The game is over now, since the next level is a repeat of Level 9.

__Suggested Screen Shot: Frame 2284__
