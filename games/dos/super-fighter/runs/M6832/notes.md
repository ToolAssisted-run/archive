> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6832M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

---------------------------------------------------
%%TOC%%

!! Introduction

Super Fighter is a Street Fighter clone developed in Taiwan with its own somewhat charming rooster and not-so-spastic gameplay. Ok, yeah, the gameplay is very clunky, but it's charming nevertheless. I used to play this game back in the day and, since I never understood the concept of charging (holding a button for a few seconds to launch a superpower), never got too far anyway. 

The game itself has a very interesting history, with the rights of its Australian release (named Fatal Encounter) having [https://www.diskman.com/presents/supersango/|been acquired] and released for free by a game fan called Brandon Cobb. I used the disks and crack he distributed to play the game. The copy protection crashes the game so it cannot be TASed away.

Here I use Lan (the Chinese martial artist) to spam his whirlwind attack that is massively overpowered. Here and there I insert some different attacks and throws to add some spice to the movie.

Note: I end the movie at the very last screen before a lewd version of the final image is shown. I believe this image is shown when you beat the game in the hardest difficulty without using continues.

!! Software + Hardware

! Emulator

* EmuHawk 2.11 (Core: DOSBox-X)

! ROM

https://www.vogons.org/viewtopic.php?t=90877 

Steps:
* Download the 4 disk images in WinImage format and place them in a folder
* Get the crack and place it in its own folder. Then follow [https://tasvideos.org/EmulatorResources/PCem#UsingPreInstalledVersion|these steps] to produce a reproducible CD containing the crack alone.
* Rename the .iso file to fatalEncounter.iso and place it in the same folder as the rest of the disk images.
* Put the following in an fatalEncounter.xml file in the same folder

%%SRC_EMBED
<BizHawk-XMLGame System="DOS" Name="fatalEncounter">
  <LoadAssets>
    <Asset FileName="./FATALEN1.img" />
    <Asset FileName="./FATALEN2.img" />
    <Asset FileName="./FATALEN3.img" />
    <Asset FileName="./FATALEN4.img" />
    <Asset FileName="./fatalEncounter.iso" />
  </LoadAssets>
</BizHawk-XMLGame>
%%END_EMBED
