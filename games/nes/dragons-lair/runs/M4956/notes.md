> **Imported**
> This run was originally published at https://tasvideos.org/4956M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Game objectives
* Emulator used: Bizhawk 2.8
* Primary objective: speed

!! Game mechanics
See comments for previous submissions and https://kb.speeddemosarchive.com/Dragon%27s_Lair_(NES) . The latter source currently contains mainly information for the U-version, but many things can be translated to the J-version, despite the significant gameplay differences.

!! Comments
This is a "side-submission". I originally only intended to work on the U-version of Dragon's Lair, but noticed that some solutions could improve the TAS of the J-version. Since this game is easy and short to TAS, with (mostly) good synching properties, I decided to spend a little time with the J-version as well. 

While implementing the improvements that were common to both versions, I also took the opportunity to investigate some of the areas that needed a version-specific approach and came up with a few additional improvements (mainly in the boss fights). The bulk of this TAS is however copied inputs from previous TASes. Comparing Kirkq's (KQ) and MESHUGGAH's (MH) previous efforts, I can see (non-trivial) traces of both in this submission and have therefore included them as co-authors.

!! Stage by stage comments

! Level 0
Based on MH's TAS (which looks like it used some of the inputs from KQ).

! Level 1
Based on MH's TAS (which looks like it used some of the inputs from KQ). However, the following improvements were added:
* Changing the manipulation of the Lizard king (LK) around the first set of gates. This initially lost 18 frames compared to MH's TAS. However, by avoiding bumping into the LK, it could be manipulated again later in the level (if the LK bumps into you, you lose all gold and the LK will not appear again).
* By avoiding bumping into the LK the first time, two more LK manipulations were possible. The first one saving 39 frames, the second one saving 42 frames.
* 6 frames saved on the boss fight by starting with a jump (saving wind-up time of the attack animation).

-18 + 39 + 42 + 6 = 69 frames saved in this level.

! Level 2
Based on MH's TAS (which looks like it used some of the inputs from KQ), but 21 frames were saved from a faster boss fight (different approach).

! Level 3
Based on MH's TAS (which looks like it used some of the inputs from KQ). No improvements in this level.

! Level 4
This level is tricky to TAS optimally without external tools. The LK has a 1/816 chance to spawn every game frame (so every 3 actual frames), based on the game's RNG. Other than frame delays, the only way to impact RNG is by pressing R. The "Basic Bot" in Bizhawk was an excellent and invaluable tool for quickly finding suitable solutions. I'm guessing KQ and MH did not use any tools in this level and there were therefore a few delays from unoptimal manipulations in their respective TASes. 21 frames were saved from getting optimal spawns.
