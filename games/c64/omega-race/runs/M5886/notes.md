> **Imported**
> This run was originally published at https://tasvideos.org/5886M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Omega Race (Commodore 64)
Omega Race is a conversion of the arcade machine with the same name. The deficit of a black and white design on the original machine was compensated by a colored overlay over the screen. It is a vector graphics game where you can - as in Asteroids - turn your spaceship or give it a thrust by activating the rocket propulsion. Instead of asteroids you need to shoot UFOs and their mines here which gives you the corresponding points. The hostile spaceships can shoot back, hostile shots and obstacles as well as collisions with the enemies destroy your ship. The game is over when all three own ships are destroyed. In contrast to Asteroids, there are protective shields at the border of the screen, where the ship will bounce off. So you cannot fly further than the border of the screen. In the middle of the screen there is a rectangular protective zone, where the highscore and the ships that are left are displayed. --C64-Wiki.com

More information can be found in the [https://retro-commodore.eu/files/downloads/Game%20Manuals/C64/Omega%20Race%20(1982)(Commodore)/Omega%20Race%20Manual%20(1982)(Commodore)%5bVector%5d.pdf|manual].

!!Tools Used
*BizHawk 2.9.1

!!Effort In TASing
As with [8358S|Gorf], this game was also on my list to TAS. I never owned it on the C64, but it was one of my eventual purchases on the Commodore VIC-20. Lately, I poked [user:DrD2k9] to get back on this...as we have not TASed it for maybe 6 months. In regards to TASing it, it was all manually optimized, having experimented with different shooting patterns to see what worked best. Basically, we would take turns trying to set a base-line of inputs. Then the other would try to beat it. Thankfully, we are able to do what humans could never do...which is just blasting right through the horde of aliens, holding the acceleration through most of the destructive sweep.

!!Ending Choice
The two of us, had discussions on what would be an ending for this game. Well, we found that the levels do not increase after about 5 or 6 screens. So, because it had "Droid Forces", we decided to do two full "Droid Forces", which are 4 waves attacks each. Anything after the 2nd "Droid Force" is destroyed, it basically repeats.

!!Tech Info (from DrD2k9)
There is a tiny bit of RNG that is manipulated: the player can either start a round in the upper left or upper right corner. Changing input can affect this.  We use the right corner as it was a faster way to beat stage 4 and thus all subsequent stages.

Regarding the repeating stages: from stage 4 onwards, the layout of enemies is the same and copy/paste of input will work from stage to stage requiring only minimal tweaks to sync between stages.

Even though there’s nothing new beyond stage four, we chose to do the 2nd wave as it’s technically different than the first wave due to number of enemies:%%%
First wave-the number of enemies increases each stage%%%
Second wave-the number of enemies is maxed each stage

!!Human Comparison
[module:youtube|v=40LANg3m2pE]
