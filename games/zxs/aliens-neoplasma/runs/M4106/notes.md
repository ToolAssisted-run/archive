> **Imported**
> This run was originally published at https://tasvideos.org/4106M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Aliens: Neoplasma
Aliens: Neoplasma was a game submitted for the ''ZX Dev MID Remakes'' competition.  It takes place in the same universe as the Alien movies created by Ridley Scott.  In this game, you play as a woman awaken from stasis to find her shipmates all dead and the ship overrun by aliens.  As with most Aliens based stories, the AI on the ship has decided that the alien creatures are more important than yourself and is trying to get them back to earth at all costs.  You are tasked with escaping the ship by running around and activating various terminals to open doors to new pathways through the ship; ultimately leading to the escape pod.

This game has two endings (of which this submission is the shorter 'Bad Ending'):%%%
'Bad Ending' = Just escape without destroying the ship.%%%
'Good Ending' = Overload the ship's reactors to cause an explosion to kill the aliens before they reach earth....and escape before the explosion occurs.

!! TAS Notes
* Emulator used: BizHawk 2.3.2
**Due to the 2.3.2 rerecord count bug, rerecords were set to 0/unknown.
*I don't think this needs a branch, but if it does...someone who can, add something that works.
* Due to this being a TAS and wanting to finish as quickly as possible, none of the terminal dialogue between the ship's AI and the player is readable.
* It is impossible to finish this game without using weaponry
** The machine gun is necessary to kill/bypass the aliens
** Grenades are necessary to (temporarily) stop fans within the ship that would otherwise kill you
*Use of weaponry affects movement speed in an odd way...more on this below.

!! Negative Recoil
Now it's not uncommon for programmers to strive for realistic physics in their games.  It's not unheard of for them to ignore natural physics either.  This game however has a very odd physics phenomenon.

While one would assume that running across a screen non-stop would be the fastest method of traversing the distance, that would be incorrect for this game.  In fact, running __while__ firing the machine gun is actually faster than running ''without'' firing.  I believe this has to do with variations in the character's animation that affect the X-coordinate position on screen.

Thus, firing as much as possible during the run while still maintaining enough ammunition to deal with the aliens yields a faster movie than only firing when necessary to deal with aliens.  For lack of a better term, I'm calling this "Negative Recoil," because the gun actually sucks the character forward instead of blowing her backward.

!! Other Notes
Some of this game contains backtracking as would be seen in a Metroid style game, but it's not that egregious.  Unfortunately, there's no other power-ups other than acquiring weaponry. 

!!Potential Improvements
Utilizing the negative recoil boost; I believe it may be possible to use different/better ammo management to allow for more boosted running throughout the game.  Making a better movie than this submission, however, would require significantly more route testing on what ammo re-supply locations to use for obtaining the ammo needed for said boosting.  Any supply stations that would need visited that are not already used in this run would require additional detours, and the resulting time loss would need to be more than made up for via Negative Recoil boosting.

As this potential for improvement is currently only theoretical and this run is complete and otherwise well optimized as-is; I believe this version was satisfactory for submission.

!!What about a 'Good Ending' run?
The difference between the two endings requires detonating the ship's reactors to kill the aliens before they reach Earth.  Where the path diverges is only after the last (10th) terminal activation.%%%
Thus, a 'Good Ending' would simply require some minor backtracking through the ship to the reactor rooms (not seen in this TAS) to flip 4 switches before heading up to the escape pod (instead of immediately escaping after the 10th terminal).  This would add probably 1-3 minutes of time yielding only a very minor difference in the end-game scene/story.  The ship would explode in a flash and the end dialogue would be different.%%%
If this 'good ending' run could garner moon tier support, both endings could theoretically be published on the site.  But I personally, don't think there'd be enough of a worthwhile visual difference in the runs to warrant having both.  Others may feel the difference in end-game story would be enough to warrant both.

!!Suggested Screenshot
Frankly, I think the intro screen is the most visually eye-catching part of the game.  If that's not acceptable for a screenshot because it's not part of actual game-play, I'd suggest anywhere that the player deals with multiple large aliens on one screen (I'll lookup specific frame examples of this later).

!!Note to potential publishers:
---The loading portion of this TAS contains the typical screeching data sound associated with loading from tape on ZX Spectrum.  BizHawk's audio settings within the ZX Spectrum core contain an option to alter the tape audio volume.  Reducing this to the lowest setting will allow for the loading portion of the TAS to be done silently instead of with the screeching data sound.  I don't believe changing this setting would affect the sync of the submitted .bk2; but if it did, copying the input and pasting into a new tasproj file that is initialized with the tape volume minimized should work.---%%%
It seems that maintaining the tape loading sounds is preferred from an accuracy perspective.

''I feel like I'm forgetting something....Not sure what.  I'll add it if I think of it (or someone points out what I've forgotten).''
