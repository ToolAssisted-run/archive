> **Imported**
> This run was originally published at https://tasvideos.org/5361M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Gorf (Commodore 64)
Gorf is a fixed shooter in which players take control of an unnamed starship from the Interstellar Space Force with a mission to prevent the Gorfian Empire from conquering Earth. The ship is capable of moving freely in all directions around the lower third of the screen under the control of a joystick. This was a departure from older vertically-oriented linear shooters, including Space Invaders, which allowed only horizontal movement of the player's ship controlled by left and right buttons. At the time the joystick input and two-dimensional movement were still unusual enough that contemporary video game guides noted them as distinctive features of Gorf.

Gameplay comprises four distinct missions; each mission presents its own distinct play-style, but the central goal of each is to destroy all enemies. Successfully completing all four missions increases the player's rank, which represents the current difficulty level of the game, which loops back to the first mission

More information can be found in the manual:
https://ia800703.us.archive.org/18/items/Gorf_1983_Commodore/Gorf_1983_Commodore_text.pdf

!!Tools Used
*BizHawk 2.9.0

!!Effort In TASing
I have had this game on my list for some time now. I never owned it on the C64, but it was one of my first game that I personal bought as a kid, with my chore money, for the Commodore VIC-20. Lately, I finally got serious about finishing it. It is a fascinating game to optimize, as I went through it 7 times, before I failed to further its time.

Optimizing was done on several fronts. They are listed below:
*Delaying entry into the upcoming screen, will change the "predetermined patterns", that enemies will abide by.
*Shooting is very precise. Since this is the C64, the sprite register have the ability to know when a pixel touches another pixel (not hitbox related). Because of this, I had to study every shot, frame by frame in order to maximize speed.
*Some times, I have to wait for enemies to appear, as with the first round of battle (Astro Battles). Because the game takes time to show a character, I can pre-shoot, so that the bottom of my laser shot can still touch the top of the enemy, to keep me from having to wait.
*"In-room" routing was also critical, with levels like "Laser Attack". Because the patterns are predictable, I could manage the merging of enemies, as I shoot away the leader of each pack.

!!Ending Choice
Every loop, the game increases its difficulty. In this case, a loop is defined by the four unique missions. Upon completion of one loop, your rank is promoted. This is a just a clever way to identify the level of intensity, for that current loop. The ranks are as follows:

*Space Cadet
*Captain
*Colonel
*General
*Warrior
*Avenger

At the end of the last loop, Avenger is your rank...which doesn't increase afterwards. This is evident by the low placement of the enemies on the first mission called "Astro Battles".

!!Human Comparison
This run doesn't make it all the way to the end, but should give a good example of the differences between my TAS and a human.
[module:youtube|v=LJ_cJNyCVec]
