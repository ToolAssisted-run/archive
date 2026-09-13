!! About this run

This movie is primarily a proof of concept for TASing of 3D Pinball Space Cadet in Chimera (DOSBox-X, Windows 98) to get a reproducible workflow working in Chimera and to document the process. In terms of speed, this movie improves on the two previous "1 Mission Completed" movies [https://www.youtube.com/watch?v=QnvTYTgm6yg|here] and [https://www.youtube.com/watch?v=IVh_uDT0Qtc|here] (on Windows 3.1), but it does ''not'' beat the [https://www.youtube.com/watch?v=DnR2XjhSQak|Wii decomp movie]. Yet, keep in mind that and the various releases of Space Cadet are known to behave differently internally so a direct comparison may not be faithful.

!! Game mechanics and manipulation

This game is extremely sensitive to small changes in input. Previous TAS work has found that ball trajectories can be manipulated through flipper timing and even the mouse cursor position, cf. the corresponding [https://tasvideos.org/Forum/Topics/21279|TASVideos discussion].

For this movie, I only manipulated the ball using table bumps which was the most practical way to search for good path manipulation without having to understand how the game uses RNG. A proper TAS of this, or really of any category of this game would also use the bumpers to manipulate RNG, as well as mouse position -- which has been reported to affect the ball's trajectory as well. However, this time around I didn't do any RAM or source-code analysis necessary to determine what exactly is going on here, resp. how this can be manipulated (e.g., it has been suggested that the game just uses the C runtime rand() function), so that could be something for a future movie.

Also, for completeness, there is also a known glitch where one passage through the launch ramp can sometimes count as multiple passages. From my understanding the exact cause is not known, but [https://www.speedrun.com/3pwsc/forums/7nsic|it is suggested] that the ball may remain in the area which registers a ramp shot long enough for the game to register it repeatedly. Yet, this movie does not make use of it because I haven't tried anything with it so far -- but it may certainly be interesting to explore in the future.

!! Reproduction Steps

Note that the combination "Nightly 2026-09-12 (0fd45cc0) + DOSBox-X core bebd7749" specified in the submission notes applies to the actual movie ''as well as the installation movie''.

## Create the image file win98.hdd with Windows 98 installed, according to the [https://tasvideos.org/Bizhawk/DOSBox#Windows98|TASVideos instructions]. Tip: Googling the CDs SHA1 hash can help. This is especially useful because you'll need the same CD for the game-install movie
## Download the installation movie
## Download Microsoft Plus! for Windows 95 (SHA1 of "Microsoft Plus! for Windows 95.iso": DF87E88999D69FE21B4AECCF8E10936F2336A2AA / MD5: 730DD1FFFF4EEF0599BEC0DD78CB9115)
## Put ''"install.chimeraProject"'', ''"Microsoft Plus! for Windows 95.iso"'', ''"w98.hdd"'', and ''"Windows 98 Second Edition ver.4.10.2222A (OEM Full) English.iso"'' all in the same folder.
## Open and play the installation movie
## After the installation movie finished select Emulator > Export Save Data and save the hard disk as ''install.''__hdd__ (either directly, or just rename the file afterwards). The resulting install.hdd should have the SHA1 hash 8D3061B45F6E3309F75CEC68247E69452594D6EF, resp. the MD5 hash 1FD0C365496A8DDCC905D35905F36D1C
## Download the submission movie and put it in the same directory as install.hdd
## Open and play the movie

Install encode:
[module:youtube|v=HUwrmH84xCg]
