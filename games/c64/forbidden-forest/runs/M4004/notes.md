> **Imported**
> This run was originally published at https://tasvideos.org/4004M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

	
!!!The Forbidden Forest - for Commodore 64

Manual Link: https://archive.org/details/Forbidden_Forest_1986_Cosmi/page/n1

At first glance it looks like a pleasant wooded glade on a peaceful, mild day. Watch out! It's a giant spider! RUN! You don't know how it happened;you don't know how you got here, but, unfortunately, you've wandered into the FORBIDDEN FOREST! You'll find a bow in your hand and a quiver full of arrows on your back, as well as four more full quivers on the ground beside you. You're going to need them. The Forbidden Forest is a place on this world but certainly not of this world. It is a place of unrelenting terror and trial. It is ruled by the dreaded Demogorgon demonic king of monsters. He will send in his horde of grisly creatures against anyone who dares enter his realm. And if by some miracle, or your own skill, you should vanquish his army, you will have to face the Demogorgon himself. A word of encouragement: no one has ever returned from the Forbidden Forest alive!
There are five different areas of the forest in which to do battle and you may enter any one of them at any time by running in either direction as they flow into each other, creating one large forest. The moon slowly crosses the sky as you go from late afternoon to the dead of night. Together, these features offer multiple and varied environments. Within this ever changing arena, you will face four increasingly difficult levels of adventure with seven different challenges in each level. Fight your way through bloated bees and winged dragons and killer skeletons, and more, to come face to face with the ultimate terror- the Demogorgon!

This game is played using a joystick.

This submission was done concurrently with [6447S|#6447: DrD2k9's C64 Monty on the Run in 12:35.42] as homage to DANACRYSALIS GDQ runs.
!!Speedrun by DanaCrysalis (done on "Innocent" level)
https://www.twitch.tv/videos/46064539


!!Featured at SGDQ 2014 by DanaCrysalis
[[dead link removed]]

!!Game Basics

*The game consists of 7 stages, where a different enemy poses a different challenge.
**Spiders
**Bees
**Frogs
**Dragons
**Phantoms
**Snakes
**Demogorgon

*Levels (Higher levels usually mean more enemies to kill and faster attacks)
**Innocent
**Trooper
**Daredevil
**Crazy

!!Tools Used:
	Bizhawk 2.3.1
	RAM Watch
		0x41 (Total relevent kills)
		
!!TAS Notes
This is another game that I played a lot, during my youth. It was one of the more popular games and attracted me from the very first time I tried it. Still to this day, I think about it and decided to TAS it to see what the limitations are. Well, it went a lot further than I thought it could have.

The TAS eventually ended up being about 4 Minutes and 51 seconds. There is no speedrun of this game on "Crazy", but one is provided by Dana on "Innocent". In his run, he achieves a Sub 4 Minute completion time.

__Spiders__
Affected RNG to get all spiders to spawn on the left side. This was done because the hit box had better detection on the approach from the left. When coming from the right, you would have to wait for the spider to get closer in order to make contact with the arrow.%%%

__Bees__
Affected RNG to get the bee to appear near the ground and up close to the archer. In this case RNG can be changed every frame...so the path the bee takes can be altered continuously.

__Frogs__%%%
As with previous enemies, RNG is also affected to produce patterns that keep the archer from having to avoid getting hit. After redoing this level multiple times, I discovered that I could not improvement my time cut...even though measures were taken to shot frogs earlier. This is when I decided to research a RAM address that counted enemy kills. After about 2 days of research, I discovered 0x41...which kept a running total throughout the game. My discovery turned out to be very interesting, as there were times that I was killing two frogs at once...without the visual evidence. It was at this point that I redid the stage for the last time, where 2 kills with one arrow was an absolute must.

__Dragons__%%%
There are three directions that dragons can spawn from. Left, Right, and from the far off background. The fastest pattern is to get them to spawn on the left or right. RNG was affected to get them to spawn as early as possible.

__Phantoms__%%%
The Phantoms are no different than any other enemy. Try to get it in the optimal place to kill as fast as possible. In this case, RNG was affected to get the Phantoms to spawn directly in the middle. BUT! That is not the end. This is the only cut scene that actually has RNG!! I made this discover after trying to redo one of the kills and noticed that the death scene went much longer than my previous attempt. That is when i started trying to understand the situation and it appears that a certain percentage of his body must be removed before the scene ends. Well, I affected his RNG during the cut scene and was able to cut off 100's of frames for each kill.

__Snakes__%%%
Easiest enemy of them all. No RNG really to affect, except the 1 frame delay of killing was removed by changing RNG.

__Demogorgon__%%%
This enemy was similar to the Phantoms, except RNG had to be manipulated in such a way to keep this enemy from jumping around too much. Aside from minor RNG adjustments...very easy boss.
