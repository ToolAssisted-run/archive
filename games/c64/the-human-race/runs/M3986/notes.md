> **Imported**
> This run was originally published at https://tasvideos.org/3986M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!The Human Race - for Commodore 64
The Human Race is a single player game with different game styles on each level.

The aim of the game is to achieve a high score. This is done by jumping around the screen and collecting objects. Each single screen level is set at a different point in man's evolution and sees the character start as an ape and evolve into a caveman and beyond as the player progresses through the game. 
Each level is a different kind of mini-game. For example the first level is a platform style game where the player leaps through the jungle eating bananas and avoiding nasty creatures such as dinosaurs, while level two has the player negotiating a path through a lava lake while avoiding falling fireballs.

This game is played using a joystick.

!!Game Basics
*The game consists of 5 stages, where a different challenge offered.
**Chapter 1 (Food for Thought): Just Go For The Biggest Banana In Sight....
**Chapter 2 (Great Balls Of Fire): Easy...Just Hot Foot It Across To Safer Ground....
**Chapter 3 (Logger): Easy...Just Roll On Over To The Cave Behind The Falls....
**Chapter 4 (Unstable Ground): Forget What You Know...Red Means Go..And Only A Mouth Full Of Water For Protection....
**Chapter 5 (The Human Race): A Race Lasting Twelve Thousands Years..Your Goal Is To Reach The year 2000 AD. As Long As Your Energy Lasts You May Accelerate....

!!Tools Used:
	Bizhawk 2.3.1
	
!!TAS Notes
Finally, after all this time...I have committed to doing a Commodore 64 game. Commodore was my first experience with computers and my absolute love. I'm sad that today's machines just don't have what they offered back then.

As for this game, I decided on TASing it because most runners of this game agreed that the controls were terrible, and the game was extremely hard. In fact, I never got to see the last Chapter, until I did my research on TASing this.

Once I got involed, and a bit of hassle with versions, DrD2K9 helped me figure out what to do in order to get this TAS correctly lined up. Basically, any disk images that were used...are typically "Cracked" versions of the game. So, with his help, I had to realign my TAS to an official version of a tape release. Because of this, my re-record count will be roughly 2500 re-records less.

The TAS eventually ended up being 2 Minutes and 52 seconds. This is about half of the fastest run that I could find.

__Chapter 1__
*Everything on the screen that moves, is a hazzard. Tigers, Dinosaurs, Flying Bugs, and Birds. 
*The action that was necessary to make this stage as fast as possible, was to manipulate the bird. I affected the position of the bird early on so that its pattern would be better suited for avoidance in the later part of this scene. 
*Additionally, you will see me jumping bananas. Avoiding bananas was crucial to moving fast, because time is wasted in eating them.

__Chapter 2__
*This screen is irritating to deal with, because the falling fireballs are not operating in true 3d detection. Basically, if the main characters sprite comes in contact with the fireballs...you die.
*Jumping, when in proximity to these fireballs, will avoid sprite detection. Most players of this game, including myself, always took measures to avoid. When creating this TAS. I accidently discovere this and realized it made the game play much easier.
*Last, the Up and Down joystick movement was limited to jumping only. Left and Right move as normal.

__Chapter 3__
*In getting across the river, without having to stop, adjustments were made to the entry frame of this particular screen. If you were to go to fast, you'll eventually have to stop...in order to avoid a crocodile. This is VERY BAD, as it takes time to get started again...thus wasting time. The best option was to find a way to keep moving without any interuption.

__Chapter 4__
*Avoiding the squares, where the current color marker is pointed at, is the key to keep moving. However!, I found that the checking algorithmn have a flaw...where there are a number of frames that it doesn't discover when you are on the wrong color. Because of this, I was able to find a pattern that put me in the right situation to walk across a lot of the area without falling through any of the squares. Honestly, I'm not entirely sure if this was a glitch, but it was certainly a time saver of up to almost a minute.

__Chapter 5__
*This is the only scene where anything you do doesn't affect the ending time of the game. The goal is to stay alive until the year 2000 AD.
*To make the TAS timing faster, I had to figure out how to end the inputs as earlier as I can. In doing so, I discovered that any "Static" object on the screen can be passed through, if you have a nearby moving object. Basically, if you coming in contact with sprite, it affects the collision algorithmn of the stationary items. When I found the correct RNG and route, I was able to end the inputs much earlier than the level is over. This eqauted to many seconds being cut

The Ending of this TAS was in question. Basically, the credits, or the ending, was reached. However! The cycle around to see the next no game playing screen, can only be reached by pressing the fire button upon reading the "Success" message. The inputs provided beat the game, but for the publishing...it might require an alternate BK2 to help complete the video and show all the content the game has to offer. You may add it for this purpose, but I leave that up to the judges or publisher.

__Suggested Screen Shot: Frame 19757__
