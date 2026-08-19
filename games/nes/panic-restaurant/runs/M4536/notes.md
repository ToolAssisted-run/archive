> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/4536M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Panic Restaurant stars a chef named Cookie who must navigate through his own restaurant, which has been cursed by a rival chef named Ohdove. Cookie has to battle evil food monsters with kitchen utensil weapons in six levels before taking on Ohdove in a final battle.

* Genre: Platform
* Aims for the fastest time
* Performs heavy lag reduction
* Aims to obsolete [4020M|currently published TAS]

Started working on this TAS earlier this year but I only got around to finishing it this month.

I'm using the Japanese version as it has a slightly faster intro and less enemies.

Stages are numbered X-Y, where X is an in-game level number and Y means a section that is separated by a door.

!! Improvements
Comparing to the currently published run.

* Intro - __Saved 91 frames__ on title screen due to the Japanese version of the game letting you skip it faster.
* 1-1 - No time saves.
* 1-2 - No time saves.
* 1-B - No time saves.
* 2-1 - __Saved 41 frames__ by slowing down to remove all the lag before the elevator.
* 2-2 - __Saved 54 frames__ by killing the apple before it explodes which reduces a lot of lag, killed the second and third apples in a way that caused less lag and still managed to get to the elevator in time. More lag reduction.
* 2-3 - __Saved 22 frames__ by reducing the lags.
* 2-B - No time saves.
* 3-1 - __Saved 12 frames__ by killing the second to last egg, although it doesn't matter since you have to wait for the elevator. Also managed to reduce the lags.
* 3-2 & 3-3 - __Saved 113 frames__ by jumping and slowing down to reduce the lags on the conveyor belt. Saved some frames in 3-3 by slowing down to reduce the lags since you have to wait for the elevator anyway. The Japanese version of the game has only one toaster at the top which means, you guessed it, less lags.
* 3-4 - __Saved 44 frames__ by reducing the lags.
* 3-B - No time saves.
* 4-1 - __Saved 22 frames__ by reducing the lags.
* 4-2 - __Saved 3 frames__ by reducing the lags.
* 4-3 - __Saved 65 frames__ by reducing the lags and also not having to wait for the enemy at the top of the ladder.
* 4-4 & 4-5 - __Saved 9 frames__ by reducing the lags.
* 4-B - No time saves.
* 5-1 - __Saved 181 frames__ by reducing the lags. You have to wait for a moving platform in 5-2 so might as well slow down a bit to reduce the lags.
* 5-2 - __Saved 125 frames__ by jumping on the spikes instead of waiting for the second moving platform. Also reduced some of the lags by climbing a ladder and then falling off of it which causes the enemies to fall under the ground.
* 5-3 - __Saved 44 frames__ by reducing the lags, did some more de-spawning.
* 5-4 - __Saved 27 frames__ by reducing the lags and taking the first moving platform which isn't present in the US version of the game. Killed the fourth to last ice cream which made the ice platform fall sooner.
* 5-B - No time saves.
* 6-1 - __Lost 2 frames__ to reduce the lags in the next section.
* 6-2 - __Saved 53 frames__ by de-spawning one of the enemies which greatly reduced the lags.
* 6-3 - __Saved 4 frames__ by reducing the lags.
* 6-4 - __Saved 11 frames__ by reducing the lags.
* 6-5 - __Saved 18 frames__ by reducing the lags. You can save a couple of frames by going down a ladder and going back up again.
* Final Boss - __Lost 28 frames__, the boss fight is identical but the cutscene is slightly longer.

__Saved 887 frames in total__

!! Memory Addresses

||Address||Name||Type||
|006E|Character X|Signed word|
|006D|Character X Sub|Byte|
|007B|Character X Speed|Signed Byte|
|007A|Character X Speed Sub|Byte|
|0071|Character Y|Signed word|
|0070|Character Y Sub|Byte|
|0078|Character Y Speed|Signed Byte|
|0077|Character Y Speed Sub|Byte|
|00AD|Boss Health|Byte|
|00B4|Boss Invincibility Timer 1|Byte|
|00B6|Boss Invincibility Timer 2|Byte|

Special thanks to Sidetrakkd and Hirexen for their help on how the game works.
