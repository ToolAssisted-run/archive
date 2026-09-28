> **Imported**
> This run was originally published at https://tasvideos.org/5842M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

[user:nymx] has improved the original submission file by 11 frames: https://tasvideos.org/UserFiles/Info/638439118824734706

!! About the Game

''Speedway!'' (EU: ''Race'') was the first ever video game released for the Magnavox Odyssey 2 in 1978, alongside ''Spin-out!'' (EU: ''Spin-Out'') and ''Cryptologic!'' (EU: ''Cryptogram''). It's your average run-of-the-mill retro racing game, where you play as the driver, trying to rack up as high a score as possible by accelerating and dodging other cars within a 2 minute time limit.

!! About the TAS

This TAS aims to get the highest score possible before the 2 minutes are up. The secondary target is earliest input end.

!! Gameplay/Tech

After pressing "0" to start the game and "2" to select difficulty (2 is the harder difficulty, which is preferred for TASing), gameplay starts on frame 1. After pressing those buttons, the game itself takes about a third of a second to load everything before the timer starts ticking.

Score is built up most quickly by holding U to accelerate until you start earning 1 point per frame. After the acceleration process is finished, the score is 98 frames behind the frame count. Due to an error in programming, it counts 121 seconds instead of 120 because the timer shows both "02:00" and "00:00" for 60 frames (it should be one or the other). The actual race time is about 2:00.9, slightly lower than 2:01 because the Odyssey 2 runs at about 60.05FPS instead of a flat 60.

Input ends on frame 7236. From there, we keep driving until the timer ends and avoid the last car and we achieve a final score of 7162.

That's all from me. Thanks for reading.
