> **Imported**
> This run was originally published at https://tasvideos.org/5225M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Uridium
The solar system is under attack! Enemy Super-Dreadnoughts have been placed in orbit around each of the fifteen planets in this galactic sector. They are draining mineral resources from the planetary cores for use in their interstellar power units. Each Super-Dreadnought seeks out a different metal for its metal converter.
Your Manta class Space Fighter will be transported to each planet in turn and it is your task to destroy each Dreadnought. First you must attack the defensive screen of enemy fighters, then you must neutralize the majority of surface deference before you land on the Super-Dreadnought's master runway. Once on board you must pull as many fuel rods as possible from the metal converters before you take off for a final strafing run as the Dreadnought vaporizes into the ether.

!!!Manual
https://ia601902.us.archive.org/4/items/Uridium_1986_Hewson/Uridium_1986_Hewson.pdf

!!!Tools Used
*BizHawk 2.8.0
*Ram Watch

!!!ROM Choice
I don't like using tape versions, but I refused to accept "Cracked" disk versions. I tried to get a clean disk image, but was unsuccessful. So this version was chosen to bring you a pure encode that doesn't carry all the annoying signatures of the person who discovered how to get past the built in copy-protection.

!!!Effort In TASing
I have waited a long time to see this game finished. I have BK2 files that date back to September 2020 (Bizhawk 2.5). Alas, here is my finished work.

One of the problems, that kept me from moving on, was the fact that I didn't understand how to optimize each ship. At first, I thought the clearing of all stationary ships, needed to be destroyed. After accomplishing this, on the first ship, I was surprised to find out that I could land on the Dreadnought. Eventually, I discovered it was the attack waves that needed to be dealt with. After enough searching, I found an address that correlated to each wave. The final step was to find the most optimal way to eliminate these waves. One way, is to eliminate the entire fleet and causing it to de-spawn, which forces the next wave to emerge. Another way is to fly by them very fast and cause the same de-spawning behavior. With enough experimentation, I found a good balance to hold each wave attack to approximately 2 seconds...which is the shortest I was ever able to get. Applying this knowledge, I was able to destroy all 15 ships in record time.

!!!Technical Notes
*Game consists of 15 Dreadnought ships
*Wave attacks
**Monitored Address
***WRAM 0x24
***Value changes roughly every 65 frames (Depending on how much actions is occurring)
**Controlling RNG (Timing of appearance, Wave Type, Direction of attack)
***Shooting
***Any Direction
**Number Of Waves
***Ship 1: 8 Waves
***Ship 2: 8 Waves
***Ship 3: 9 Waves
***Ship 4: 9 Waves
***Ship 5: 10 Waves
***Ship 6: 10 Waves
***Ship 7: 11 Waves
***Ship 8: 11 Waves
***Ship 9: 12 Waves
***Ship 10: 12 Waves
***Ship 11: 13 Waves
***Ship 12: 13 Waves
***Ship 13: 14 Waves
***Ship 14: 14 Waves
***Ship 15: 15 Waves
*Landing Sequence
**Available on last wave attack.
**Landing out further
***Must fly as fast as possible, before the check point area of the landing strip.
***Position is held and causes the ship destruction scene to start faster
**Can only be done going right
*Other Time Saves
**Not destroying all ships in a wave attack (Sometimes necessary to manipulate RNG).
**Not going through the full bonus round, by controlling RNG to show "Quit" first.

!!!Theory TAS
I found this video, which appears to have been recorded as a Theory TAS. If you aren't familiar with this, its basically an effort to reproduce the best possible run that a human can do. I thought this run would be a good comparison, since my TAS is about half the time of this effort. Watching humans play this, is almost unbearable...since most players die constantly.
[module:youtube|v=xfmJdD9EM6c]
