> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6859M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

%%TOC%%

!! Introduction

Speed Racer in The Challenge of Racer X is a neat racing game for the DOS that offers some unique mechanics inspired in the homonymous anime. You can activate the jump springs, afterburners, guns, tree-cutting saws, underwater scuba-driving, etc. In this movie I finish the first level (of many) that involves going all circuits once. An all-level movie would be too long and repetitive to do without getting horribly bored.

I also go for success in all the missions assigned to each race. These missions give you extra money, which is relatively useful at the beginning. However, by the last level I just do them for completion purposes.

I created an additional installation movie because the installation in this game takes unreasonably long. I manually defeat the copy protection by checking the Mach Y specs documentation.

!! Software + Hardware

! Emulator

* EmuHawk 2.11 (Core: DOSBox-X)

! ROM

https://www.goodolddays.net/en/diskimages/?id=371

Steps:
* Download the 3 disk images and put them in a folder
* Put the following in an speed_racer.xml file in the same folder
%%SRC_EMBED
<BizHawk-XMLGame System="DOS" Name="speed_racer">
  <LoadAssets>
    <Asset FileName="./disk1.img" />
    <Asset FileName="./disk2.img" />
    <Asset FileName="./disk3.img" />
  </LoadAssets>
</BizHawk-XMLGame>
%%END_EMBED
* Run this [https://tasvideos.org/UserFiles/Info/638953640887512906|movie] to install the game, and click DOS > Export Hard Disk Drive to generate a .hdd hard disk drive image
* Load the HDD image and run this movie
