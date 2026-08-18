> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/3567M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This run exploits a programming error that allows the author to start playing from the second half of stage 5, skipping a lot of this game. If you notice that there's nothing meaningful going on in the first 2 minutes of the movie, this is normal: the actual gameplay takes place only after triggering the "major skip" through one of the demos.

!!__Game Objectives__

* Emulator used: Bizhawk 2.2.1

* Major skip glitch

* Takes damage to save time

* Uses hardest difficulty


Droodbot wrote on the recent TAS that a new glitch that allows Porky to skip most of the game was discovered recently.

Also, since the published run was accepted on Vault, I could consider the 'demo%' a faster any run, for Vault purposes (also, because I noted that [5671S|run] was recently accepted to obsolete a 'full' TAS, which also is in Vault). So, this movie is an attempt to obsolete the published 'full' run.

!!__About the demo glitch__ 

If you wait long enough at the title screen, a demo will start playing. This game has 3 demos:

* Demo 1 - Stage 1 (room 2)

* Demo 2 - Stage 3 (room 1)

* Demo 3 - Stage 5 (room 3)

During the loading transitions of each demo, there are some non-lag frames a bit before the demo fully loads. So, if you press start at one of these frames, the game will be paused until you unpause when the loading finishes, allowing you to control Porky in one of the demos. Since the 3rd demo sets on the second half of stage 5, you must need to wait a lot (about 2 minutes) to this. Also, I choose the hard mode after the first 2 demos, otherwise, the next demo will be set on the normal mode.


!!__Tricks used on this run__

__Moonwalk__

Holding left and right at the same time forces Porky to walk left while in the animation for walking right. It can be made more visually interesting by alternating Left + Right with just Left, every other frame. This causes Porky to spin, or something like it.

__Slope technique__

Normally, when Porky walks, the maximum speed value is 2, but during a slope, the value can reaches until 4. If you don't hold a direction, you can mantain some speed for a few frames by jumping off a slope or not. With the help of RAM Watch, I discovered that by not jumping off a slope gains 1 more pixel forward (on level 6).

__The camera trick__

You can move the camera while Porky is stationary. This allows you to load in sprites a bit earlier and get them to more beneficial positions.

__Sprite glitch__

On the bosses, ff you press left or right (or both) every other frame, their sprite animations will freeze until you stop this movement. This is useful to avoid lag (see the yeti boss path).

__Slowing down movement__

If you don't press left or right button while on the air, after 4 frames, Porky will lose 1 pixel, and if you __don't__ move on this exact frame, 2 pixels will be gained on the next frame (and now you can move) instead of a couple of one pixels for some frames. This is useful because stopping normally, costs more frames to recover the normal speed (2 pixels).


!!__Weather__

The weather effect is notable every time this game is played. This game chooses 'randomly' by entering the demos/start (title screen)/map screen at different frames. Also, some weather takes __longer__ to load than others.

So, during the wait for the first two demos, I pressed up and down for very some frames to get the shortest loading time possible, although the fadeout is delayed for some frames.

!!__Chain swings__

During the work on the last stage, I discovered that chain swings has a global timer (0015A1 WRAM - also, freezing this address stops the movement of all chain swings). The position of the swings is determined between 0 and 255 value (the center position is determined every 64 frames - 33, 97, 161, 225). This value only increases during the gameplay and the map screen, but not during __lags__, transitions (excluding non-lag frames), and other things.

For this reason, that's why I wasted some time on the room 4 of the last stage to reduce lag in order to avoid more wait for the chain swing of the room 6 (bathroom).

!!__Stage-by-stage commentary__

!!__Stage 5__


*__Room 3__: By moving the camera to the left instead of right, the next enemy is loaded some frames later, allowing me to get the ball and skipping the pit much earlier.

*__Room 4__: Lag reduction (and probably more due of different weather).

*__Room 5__: The skips were improved, respectivelly: First, by loading the bird earlier, second, by using the slowdown movement, third, by the new use of camera trick in order to load the bird, allowing me to take damage to a faster skip.

*__Room 6__: During every loading transition between rooms (on non-lag frames), you can move to gain until 4 pixels. But during this transition, I decided to move 3 pixels, because otherwise, Porky will hit the wall, losing speed movement. Another improvement is the use of slowdown movement on one of the enemies.


__Boss__: With the sprite glitch, all lag (except a unavoidable lag when this boss is defeated) were removed!

!!__Stage 6__

On the map, I entered 5 frames later in order to manipulate weather, thus shortening the loading time during the transition between intro and room 1.           


*__Room 1__: A new route is go to the hidden 'fountain' room, because for some reason, the left of the room isn't 'blocked' and a wrap leads directly to the next room.

*__Room 4__: Some frames were wasted on some paths to reduce lag, because of a global timer required for the first chain swing of room 6. Also, another use of slowdown movement to better optimization.

*__Room 6__: Unfortunately due of global timer, you need to wait more time to grab the chain swing.

*__Room 8__: Slope optimization.

__Boss__: After the first hit, I waited for the stunned robot reaches next of Daffy Duck, not only delaying the next hit but saving a lot of time on the remaining hits, defeating the robot on the same floor instead of going up and down between floors.


!!__Other comments__
I considered that the published run could be improvable, since I haven't used RAM Watch at the time (as well as most of my works before February 2017). I put much more work than the published run (notably by rerecord count).

Special thanks for __droodbot__ for the information about the demo glitch, as well as some improvements for these stages included on the recent 'full' TAS.
