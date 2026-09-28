> **Imported**
> This run was originally published at https://tasvideos.org/3668M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! Krusty's Super Funhouse

! TAS Recording and Commentary
The link below is a Twitch Stream of the TAS with Commentary from Binary Dragon, Worsel, Iceplug (WR Holder), and myself.

https://www.twitch.tv/videos/239813343

!! Game Description
Krusty's Super Funhouse is a puzzle based game that is often related to Lemmings. The object is for a player to redirect small rats to an extermination area through complicated maze-like levels. The player controls Krusty the Clown, who must navigate through his Krusty Brand Fun House. Each level is a puzzle in which a number of rats must be exterminated. Using different objects and obstacles, Krusty must create a path for the rats to follow and guide them towards an extermination device. Other creatures such as snakes and flying pigs attempt to hinder Krusty's progress by injuring him; he must throw pies in order to defeat them.

In each stage the extermination devices are run by a different character, including Bart, Homer, Corporal Punishment and Sideshow Mel.

!! Goals
* Any%
* Abuses Death to save time
* Takes damage to save time

!! Tools Used
* lsnes rr2-B23 Emulator
* Ram Watch
* Lua Scripting

!! Addresses discovered
* Active: 7e00d2 (To determine when the activity of a room starts)
* Bonus Timer: 7e002e
* Health: 7e11a4
* Lives: 7e11a3
* Area: 7e0033
* Room: 7e0032
* Remaining Rats: 7e0048
* Speed (X Direction): 7e030d
* Speed (X Acceleration): 7e030c
* Speed (Y Direction): 7e030f
* Speed (Y Acceleration): 7e030e
* Krusty's X Position: 7e0056
* Krusty's Y Position: 7e005A

!! Tricks and Techniques

Super Jumping: The ability to use obstacles to help boost your jump by 16 pixel in one frame. Additionally, if you were to press down while jumping (frame perfect), you will also take the block with you.

Turn-Around Glitch: If you were to place a block at the correct frame, you can force a rat to turn around. Unfortunately, it seems to only work when the rats are moving right.

Bridge Building: By taking the block with you on every jump, you can use two blocks to build a stair way. This was extremely useful for directing the rats much more quickly to the death chamber.

Clipping: Rarely used, but clipping was performed in a few places to gain a huge advantage. Basically, clipping requires the release of a block so that you can get pushed off to the right or left of your position...where you will notice that you are now in the area of where a block can be placed. This can be viewed on one particular level where I lock myself into the door area for entertainment.

Death: By killing Krusty at the beginning of a room, the game takes away the advantage of getting bonus time on reentry. Due to large amounts of bonuses (for a number of rooms), this death time is much shorter and prevents the tallying time...often saving anywhere from 5 to 17 seconds (depending on the remaining bonus)

!! Room Details
*The rooms are listed in order as they are played through this TAS. If comparing to the WR run, some route changes were done for various reason. Some entertainment, some for speed.
*Also, note that the rooms numbers are designations that are used from RAM...or basically engineering notation
*Finally, any time that is mentioned in parenthesis is a time that is faster than the WR run by IcePlug. A run that can be viewed via this link: https://www.twitch.tv/videos/46065728
*RTA Conversion of the 1:14:17.01 TAS time can be achieved by subtracting 909 frames, which it where humans start their speedrun. To get a rough idea, just subtract 15 seconds (1:14:02) and this TAS is almost 26 minutes faster than the WR (1:39:55.00).

! Area 0 - 0 (IE Area 1, Room 1...just add one to each to get a RTA comparable designation)
No Time Save%%%
Demonstration of what needs to be done with the rats. (Very boring for TASing and can't be done better than a human)

! Area 0 - 1 (No Time Save)
Easily done by humans and TAS, but a race to the elevator is needed in order to be as fast as possible.

! Area 0 - 2 (No Time Save)
Only entertainment that I could shoot for was to race around the entire circuit twice, which is something that human would struggle with...in terms of not loosing time getting back to the door.

! Area 0 - 7 (00:06.18)
This is the first room where TASing starts to pull away a bit from human effort. The balance between top and lower rat lines was the goal so that both lines won't loos time towards the death chamber)

! Area 0 - 3 (No Time Save)
This level, even though done precisely and quickly, only has one true effort that is difficult for humans to achieve...grabbing all items at the top of the elevator in one pass. The rest was filled in while waiting for the death of all rats.

! Area 0 - 6 (00:03.75)
TASing pulls ahead a bit, by showing off the “turn-around” glitch that I discovered. Only works when rats are moving to the right though.

! Area 0 - 5 (00:02.37)
This room has a very precise destination that is critical before a rat starts moving in the opposite direction. This is the key with all levels...you must get a rat in the chamber as fast as possible to start the queue. An extra Krusty was found in a review of this entire TAS, so that death management could be done optimally.

! Area 0 - 5 (00:05.07)
After discovering the optimal places for death. A final review of the TAS exposed two extra places that deaths could occur. This level provided the two Krusty's needed in order to cut roughly 650 frames total, in a trade off of 48 frames for collecting two lives. As for this room, it was a push to get every frame, since this was the area ending room and no rats were available to manage.

! Area 1 - 9 (00:03.75)
The only advantage in this room was the ability to get the rats out of the first part of the room before they turned around. According to the WR, this was possible...but was not accomplished. This is the beginning of the TAS strength that can be viewed throughout the rest of the game.

! Area 1 - 8 (00:01.28)
Slight advantage, due to TASing, over WR. Just needs to keep from making movement mistakes. The biggest part was during the bonus area where an extra life was collected and end up in a special area with a box that opens up a new room in the current area.

! Area 1 - 7 (01:15.10)
Hey Hey! Look out, the first true TAS effort where two blocks are used to build a stairway to the death chamber. WR run attempts this, but shows how difficult it could be.

! Area 1 - 5 (00:00.88)
TAS and RTA show equal effort, although a slight edge is achieved in the TAS.

! Area 1 - 2 (00:43.65)
Hey Hey! Look out, this is believed to be a TAS only route. Frame perfect tricks throughout the run allow for manipulating the one rat...especially in catching him in mid-air to force the rat up the first available hole (unintended route). The big trick to accomplishing this, was to execute a clip maneuver, while partially in this hole and laying down a block. Without this trick, this run could have been around 30 seconds slower. This trick is sorta like the turn-around glitch, but you must lay he block down one frame earlier so that the rat is pushed upwards.

! Area 1 - 3 (00:01.38) 
Demonstrated clipping by blocking myself in at the doorway. First death is used here...since waiting for the bonus time is quite long. By pressing 'select', bonus time is aborted on the next try and thus eliminating the waiting of tallying.

! Area 1 - 4 (00:10.98)
TASing pulls ahead, where the “turn-around” glitch is used a bit more and precise movement through the pipes gives a very fast run.

! Area 1 - 1 (00:12.95)
Able to group rats up a bit so that the cycle of rats going through the pipes can be reduced.

! Area 1 - 0 (00:29.72)
As with a lot of the rooms, this room completes goes off target with a TAS only route. In this room every frame counts, since there is only one rat and the race is on to get back to the door, once a pathway is developed.

! Area 1 - 6 (00:13.02)
Pure TAS run. A race to kick the trigger box (which opens up the next area). Side note on stair climbing without a block: Basically had to alternate between jumping and sliding up each step to gain time ahead of RTA. Also, took damage to be able to have iframes for other avoidances.

! Area 2 - 2 (00:10.02)
The trick to getting time cut here, was to blow a number of rats to the beginning so that we don't have to wait on them to cross a bridge that I created to keep them moving directly towards the death chamber. Normally, RTA would fan them into the chamber from the opposite side, after ascending the staircase.

! Area 2 - 9 (00.03.30)
The critical point of this room was to get the kicking block down as fast as possible to stop up the tube, which can be done humanly...but it very difficult.

! Area 2 - 13 (00:13.67)
A lot of block action moves the rats toward the death chamber here in a very wild and TAS only route. Normally, RTA would group up the rats and then blow them over with a fan that is permanent at the top of the room.

! Area 2 - 7 (00:08.95)
Stacks of kicking blocks can be fluidically kicked and allow for the TAS to get the path set up quickly before rats start turning back, which wastes time.

! Area 2 - 0 (00:05.22)
Mostly doable by humans, but again..has an edge on getting things accomplished before the first rat falls toward the direction of a tube that will take the rats towards the chamber.

! Area 2 - 1 (00:11.15)
This room has a TAS only push to get to a specific spot where the turn around glitch moves the rats back towards a fan that gets them moving to a final destination where a block must be placed in order to vault them into the chamber. This room came down to a lot of effort to gain one pixel, in order to pull this off. Because it was achieved, the room time was shorted by roughly 1½ seconds

! Area 2 - 10 (00:11.42)
Something that is not easily noticed here, is the ability to use the kicking boxes to turn around rats. Krusty will pause for a split second before kicking a box...where the box will travel across the floor and trigger selected rats to turn around so that they are effectively cutting their travel time while a block stairway is built.

! Area 2 - 3 (00:09.75)
This is the room that I wanted to show off a rare situation where I can enter a door without having a platform under it. In addition, this room was also chosen to have Krusty wait motionless for the rats so that Krusty would to the “Egyptian Dance”, only to be followed up by the normal jitter moves.
 
! Area 2 - 11 (00:11.90)
A combination of turn around glitches and precise movements are the key to control the rats toward the chamber.
 
! Area 2 - 5 (02:46.63)
Hey Hey! Look out, this is one of the longest rooms and does the job with about half the resources as the WR use. Instead of 6 items, I use 3 items and spend less time traveling back and forward to get those items for vaulting the rats to a specific pipe. This was the biggest cut over the human of this entire TAS.
 
! Area 2 - 4 (00:04.85)
Fair cut, but precision shows for a good run to setting up the pathway to the chamber.

! Area 2 - 12 (00:08.00)
As called by our WR holder, Iceplug...Krusty does a ninja stair climb toward the top to get a fan. This is the biggest help in cutting time for this room.

! Area 2 - 8 (00:21.92)
Again, block jumping to gain height so that a fan can be placed to blow the race in the right area. This came down to a few frames from not making...essentially keeping the rats moving forward without wasting time.

! Area 2 - 6 (00:06.53)
No rats, but a trigger box must be kicked. Frame war the entire run.

! Area 3 - 0 (00:02.68)
Things are beginning to be done off screen in order to advance the rats movement towards the chamber. Basically, shot a ball to break the blocks holding the rats.
 
! Area 3 - 7 (02:00.52)
Hey! Hey! Look out! Normally, this level requires all the jars...but WR holder uses 3 jars. Here 2 jars make the big difference.

! Area 3 - 6 (00:07.52)
RTA and TAS both make a good show here...but what separates them is the ability to keep the rats from walking off the edge. In doing so, I had to be extremely active in the placement of the blocks, fans, and tubes in order to balance out getting the rats up to the chamber on both sides.

! Area 3 - 11 (00:19.45)
Here, the level would seemingly think it was better for the TAS to group up the rats and bridge them over with two blocks, but it was faster to get rats in the chamber as quickly as possible, so Krusty had to move back and forward quickly to transport them one at a time.

! Area 3 - 12 (00:09.15)
Good cut over RTA, but the key came from manipulating the rats below by kicking the box in the right order. Slight changes over the require RTA was necessary to do this.

! Area 3 - 13 (01:25.68)
Hey! Hey! Look out! This is another huge cut where I spent the most time on. The biggest cut came from trying to sync up the elevator with my arrival to get to a second area where more rats existed.

! Area 3 - 2 (01:28.97)
Hey! Hey! Look out! Another example of precision work that most speed runners can't perform. 1. It is not easy to jump through 1 block openings. 2. Building a stairway to a bonus area prevents two different elevator trips by leaving a block behind to provide a platform to jump over to a bonus area door.

! Area 3 - 3 (00:25.93)
Better route over RTA allows to get the rats up to the top faster, where they will be blocked and dropped below to the chamber. Nothing special, except a race to get this started quickly.

! Area 3 - 4 (00:52.30)
This is a super long level where the rats had to be carried over one at a time. RTA stress is obviously removed by TAS and shows what humans could accomplish here. Notable trick for speed increase was to fix the crumble blocks so that bouncing on the springboard was only done twice so that quick access is available to jumping out.

! Area 3 - 10 (00:47.95)
Turn around glitches and precise movement once again makes this considerably faster than RTA

! Area 3 - 9 (00:23.67)
A new trick is used here where jars can be used like blocks, but the rats don't fall in them. To do this trick, you have to lay down the jar at the last frame before the rat hits the threshold of the next block allocation. So, it ends up being the last pixel of the block edge.

! Area 3 - 8 (00:19.38)
Level looks chaotic, but was simple enough to control. Frame by frame shows what I needed in order to manage the craziness; therefore, I was able to manipulate between two areas to advance the rats faster towards the chamber...unlike in the RTA runs.

! Area 3 - 1 (00:31.93)
This level takes a crazy approach to directing the rats upward instead of using jars to move them one by one to the chamber.

! Area 3 - 5 (00:07.07)
No rats, but a trigger box must be kicked. Frame war throughout the entire room. One thing to note, is that I slammed my head on the bottom of a platform to get back down to the spring to get my next jump even faster.

! Area 4 - 2 (00:03.95)
Building a stairway here allowed for me to set up for trapping a few rats into the chamber much earlier and causes processing to commence, while waiting on the others to join in.

! Area 4 - 9 (00:18.87)
Controlling the rats below is very key. Must not let the fans blow them upward. Here Krusty has the ability to move quick enough to manage the blocks before they hit a turn-around point.

! Area 4 - 6 (00:18.90)
Balancing the wait between rats collection in jars and running back and forward to get them on to the chamber.

! Area 4 - 11 (01:02.68)
Hey! Hey! Look out! Here a TAS only route is used after a very tense grouping session. The trick that separates between TAS and RTA is the ability to get to the chamber area quickly to bridge the area before they turn around and fall into a pit.

! Area 4 - 1 (01:24.32)
Hey! Hey! Look out! The TAS precisely controls the rats in a first phase to group them up in a single block area. Next a wild series of block management and jumping around to keep them moving within a smaller area allows them to ascend faster up the platforms to ground level. Lastly, the usual stair building to get them to the chamber.

! Area 4 - 5 (00:38.52)
Turn around glitches done on all right moving rats quickly gets them all set up for a quick grouping, which leads to the usual stair building and push towards the chamber again.

! Area 4 - 0 (00:50.62)
Very wild route give us a big advantage over RTA by using the left side of the platforms, which is obviously not the intended route. One thing to note here, is that rats can be squeezed back into a hole if you lay a block down before they are fully in the next block area. This keeps them trapped, due to an overhead platform.

! Area 4 - 10 (00:22.22)
Block kicking is timed to turn around a few rats. But, the big thing is to get some rats in early for the chamber to start processing. As for the remanding rats, they can be dealt with no time loss.

! Area 4 - 12 (00:38.43)
Very tight route allows to move the rats much quicker than intended by balancing out my back and forward running to manage a fan structure to blow them into a final tube toward the chamber.

! Area 4 - 3 (00:14.15)
At this point, huge cuts are waning but still are significant. This rooms takes advantage of the ability of a TAS to get to the right points in a timely manner to release the rats from a trap that keeps them from continuing on towards the chamber.

! Area 4 - 4 (00:49.50)
Very good and tight route is developed to get through a rather long pathway. Using a fan earlier was developed to eliminate a waiting period. Next a race to get two necessary fans through a long shaft where sections of rats were group for final blowing up to the chamber.

! Area 4 - 7 (00:59.78)
Here is the last good cut where a tight effort was done to corral rats in a closer area for the march toward the opposite side of the room. The second part is basically managed by using fans that would hold a rat in the right place until Krusty is able to get around and break the cycle.

! Area 4 - 13 (00:24.50)
Not mentioned in other rooms, but you'll notice at the beginning of this room...Krusty is killed. As with other rooms, this is done at optimal places to prevent the tallying of the bonus time...which saves seconds. In this case, almost 13 seconds is cut...which is the largest death cut of the game. The rest of this room is a mad dash to maintaining forward movement as much as possible to keep the time waste down. Lastly, a gauntlet run to the finish line.

! Area 4 - 8 (00:02.15)
This last room is nothing special, with a small cut.
