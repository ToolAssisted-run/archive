> **Imported**
> This run was originally published at https://tasvideos.org/6155M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

Code Name: Viper TAS Improvement

I'm happy to announce an 81-frame improvement in Code Name: Viper! This TAS project began in early 2023, and I discovered new tricks to enhance gameplay.

Breakdown of Improvements:

* 57 frames saved through gameplay optimizations

* 15 frames gained from faster cutscene skipping

* 9 frames gained from emulation differences between FCEUX and BizHawk (FCEUX is not accurate at emulating Code Name: Viper so that shouldn't be a concern)

New Techniques:

* Despawning enemies
* Manipulating loading frames between levels to control luck

The grenade door location (stored at RAM address 0x00A2) is frame-dependent, meaning it varies based on the exact frame you exit a level. Previously, this required sacrificing frames at the end of a level. However, the new loading frames technique eliminates this need.

This technique involves manipulating loading frames between levels to significantly impact:

* Enemy behavior
* Grenade door location
* Cutscene duration

Additionally, RAM addresses 0x350, 0x380, and 0x3B0 store enemy type bytes from the ROM, enabling:

* Enemy spawn and despawn manipulation
* Tracking of off-screen enemies causing lag.

Detailed Level Improvements:

Level 1: Saved 10 frames through careful optimization.

Level 2: Gained 15 frames from improved enemy behavior and reduced lag.

Level 3: Found a 3-frame improvement through better grenade door placement.

Level 4: Lost 3 frames due to unfavorable enemy behavior and lag.

Level 5: Saved 3 frames to maintain a 28-frame improvement.

Level 6: Saved 15 frames by despawning enemies and reducing lag, but missed optimal grenade door placement by 1 frame so I had to sacrifice 5 frames resulting in a 10-frame improvement here.

Level 7: Gained 3 frames, but lost 2 due to bad luck.

Level 8: Applied all new tricks to save 18 frames.
