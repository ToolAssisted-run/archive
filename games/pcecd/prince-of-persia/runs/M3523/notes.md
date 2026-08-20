> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/3523M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

The PCECD version of Prince of Persia is similar to the Sega CD version, but the gameplay is notably different than most of the versions
and there are different tricks, resulting on a 'new' objective of this game. This game was released on Japan by Riverhillsoft on 1991 and by Hudson Soft on 1992.

!!__Game objectives__

* Emulator used: BizHawk 2.2

* BIOS used: TurboGrafx CD Super System Card (USA) (v3.0)

* Aims for in-game time instead of real time (except 4 levels. - see more below)

* Takes damage to save time

* Abuses programming errors

!!__Different tricks? New objective? Explain this.__

* __Trick 1__ - In this version, it's possible to grab a ledge if you fall too far (see some level comments below).

* __Trick 2__ - Accidentally I found on GameFaqs, a 'Easy exit glitch':

In any level, reach the closed exit gate and stand in front of it. Now, hit Select to open the menu, then choose "Game End" and then say "Yes".

While the screen starts to fade out, you can enter the closed exit game without the need to open the exit switch! So, that's the 'new' objective: go to the exit room without the need to press these switch buttons. It allows to complete the stages much more faster, saving an unexpected amount of time.

Also the prince runs much faster than most of the versions.


!!__About the 'Speed 1'__

Like the Sega CD version, this game has the option to adjust speed of move and battle mode. On move you can adjust between 1-5 and on battle you can adjust beween 1-9.

__The default speed is:__ [https://i.imgur.com/NmhDwyb.png]

Also the battles is much slower with the default speed.

In this run, both modes were adjusted to 1, speeding up too much. The other reason for this choice is because on this version, the clock timer __isn't__ affected no matter what speed you choose.


!!__General notes__

* As explained above, since the gameplay isn't the same, that skips on level 4, 5 & 12 can't work on this version.

* At the start of every level, I pause and unpause the game to avoid the 'Level X' and 'XX minutes left' message, saving some frames.

* Since the gameplay isn't the same as the original version, there are several paths of this run that I stop moving just to adjust position, because you can't skip the guards easily.

* On the 'exit' room of each stage, I opened the menu and I chose 'game end' option, allowing me not only to enter the closed gate but also stops the 'clock timer' (It costs some frames) while the screen fades out.

!!__Some level comments__

* On the level 2, at the third guard, on the 'speed 1 mode', it's faster killing him than waiting to skip later (Also, taking damage reduces 1 frame of slowdown, as well as the next 'unavoidable' guard).

* On the exit of level 4 and 10, I use the 'run' button to pause this game to avoid getting hit for the guard (because of 'game over' music. It wastes time), but pausing and unpausing costs a in-game frame (or a centisecond). Roughly 200 frames were saved on both levels, respectively.

* On the exit of level 5 (on in-game time), it's faster to press the exit switch than avoiding them. So, I used the 'run' button (lost another in-game frame) because when the door fully opens, the prince climbs the stairs one more time, delaying the fade out. About 50 frames were saved avoiding them.

* In order to skip the 'fat' guard of level 6, a careful position is required. Otherwise, it fails. Also this strategy saves a second (on the 'speed 1 mode').

* On this version, since it's possible to grab ledges if you fall too far, both levels 7 and 8 is skipped directly to the exit.

* On 'level 12c', I didn't use the pause because it results on some frame loss during the 'Jaffar room' (Maybe a global timer? I don't know exactly).

* Since the clock time only stops a bit later after defeats Jaffar, I take advantage to go to the closed gate of the previous room, skipping the need to reopen this (but unfortunately it costs 61 in-game frames, although the game only register the timer of 'level 12a'). 

* Also, the Jaffar battle is tough.

!!__RAM Watch__

||Addresses|||    Description    ||
|   008A    |Clock timer (seconds)|
|   00BE    |Clock timer (frames) |


!!__Timetable (Best time)__ [https://i.imgur.com/R62HbQr.png]

|| Stages |||      Seconds+frames       |||Conversion to seconds+centiseconds||
| Level 1  |          0:05.20            |              0:05.33               |
| Level 2  |          0:41.03            |              0:41.05               | 
| Level 3  |          0:07.11            |              0:07.18               |
| Level 4# |          0:21:52            |              0:21.87               |
| Level 5# |          0:21.21            |              0:21.35               |
| Level 6  |          0:10.26            |              0:10.43               |
| Level 7  |          0:04.43            |              0:04.72               |
| Level 8  |          0:01.15            |              0:01.25               |
| Level 9  |          0:06.55            |              0:06.92               |
| Level 10#|          0:06.17            |              0:06.28               |
| Level 11 |          0:27.41            |              0:27.68               |
| Level 12#|0:46.31 / 0:05.55 / 0:18.55##|    0:46.52 / 0:05.92 / 0:18.92**   |

1 - Because of use of 'run' button (to avoid losing time - see some level comments, above) on Level 4, 5 & 10 and the faster way to finish this game, I lost a in-game frame on these levels while on '12c', I lost roughly a in-game second. But these 'improvements' resulted on 532 frames faster, totally.

2 - Since the original version doesn't have 'Level 13' and 'Level 14', the jaffar path and the princess's rescue path (respectively) is still 'level 12'. Because of this, only the timer of 'level 12a' was registered on 'best time' option (from menu). But using RAM Watch, I registered the timers of 'Level 12b and 12c', respectively.

!!__Other comments__

I originally wanted to check this PCECD version after finished the SNES POP2 TAS, but due of some problems with the rom (was .bin, instead of .cue, at that time). So, I haven't checked this, until when I found recently a video that shows the level 8 skip. So, I decided to get the correct rom to finally have a chance to research. And with this, I found much more than I expected.

If someday I choose this game again, or I try to improve the NES version (this version sucks, but the published TAS is old) or I pick the SNES version (again) to TAS the 'Training Levels' (although is less entertaining than the 'normal levels').


!!__Special thanks__

* __zaphod77__, for the 'grab a ledge by falling too far' information.

* __ReyVGM__, for the 'easy exit glitch'. This was the motivation to TAS this version.
