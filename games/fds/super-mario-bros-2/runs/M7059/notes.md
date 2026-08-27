> **Imported**
> This run was originally published at https://tasvideos.org/7059M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

This is the new fastest SMB2J (The Lost Levels, FDS) "game end glitch" (ACE) tool-assisted speedrun (TAS), improving upon [6503M|the previous TAS] by 9 frames, through optimization of the final room in World 8-4.

[module:Youtube|v=QN5oKkaCdRM]
[https://mega.nz/file/z81nCL5K#rlzJtHk3PgziKbWQrEsoNQtjDqWJj0xXtErF1S5pDP4|Download HD encode (MKV, 21.6 MB)]

In March, 2025, LuigiSidekick accidentally crashed the game in 8-4 and posted it on Twitter. Simplistic6502 verified that there was ACE potential. Threecreepio made the payload approach, and web2000 made the first full TAS.

! HappyLee's Comments
Recently, I tested ACE in this game for the first time, and discovered the 9-frame improvement in 8-4. Since I wasn't familiar with ACE, most of my time was spent learning its underlying principles.

In simple terms, the glitch works by loading the long Firebar twice to overflow the enemy slot value, creating an enemy with ID $84. By taking damage from the Firebar in lava, and combining 2P controller inputs with the X positions of two fireballs, arbitrary code can be executed to end the game early.

8-4 is currently the only known location in this game where ACE can be triggered. This run is 19.25 seconds faster than the [3348M|fastest any% TAS], but ACE and non-ACE runs are considered separate categories.

Most of the entertainment part comes from [3348M|my 2017 TAS], with minor adjustments by me and web2000. Don't miss the wall clip in the third room of 8-4 - it was an idea I discovered in 2018. Coincidentally, it reaches the pipe at exactly the same time as the previous upper-route turnaround drop, so I never had a practical use for it - until this TAS.

For more information about the ACE glitch, please read [9613S|web2000's submission].

! Suggested Screenshot (frame #27753):
[https://i.ibb.co/N2Rd36c6/SMB2-J-Game-End-Glitch-27753.png]
