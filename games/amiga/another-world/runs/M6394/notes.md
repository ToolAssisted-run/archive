> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6394M and entered this archive as a voluntary
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

The very first version of this masterpiece of a game. For extra purity points, I use the french language release.

The main difference with other versions is the lack of the "outside courts" level. Trivia says that critics of the game complained that, although very fun, the game was too short. Therefore, Eric Chahi (the author) added these levels for following releases.

Another notable property of this version is that the introduction cannot be skipped (I tried everything), so this means viewers of this movie will enjoy the entire secuence.

For this movie, I mostly manually routed the levels, but used JaffarPlus' QuickerRAWGL core to solve some of the spicy parts. In particular the fight against the green lamp guard.

!! Software + Hardware

! Rom Information

* Name: Another World (1991)(Delphine)(FR)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: [https://github.com/SergioMartin86/quickerRAWGL|QuickerRAWGL]
* Platform: 
** 2 x AMD Epyc 7742 (128 cores, 256 threads) + 384Gb RAM

* ROM Files: 

I was able to find an uncracked version of the game with the code whell and all!

%%SRC_EMBED
  * Another World (1991)(Delphine)(FR)(Disk 1 of 2)[cp code wheel].adf - SHA1: d5993c7b998cf764b484b9ed4f5845754b70c814
  * Another World (1991)(Delphine)(FR)(Disk 2 of 2).adf - SHA1: 1824246125a9a34c0e7da0d45f79b447c8aed66a
%%END_EMBED

You will need a multi-disk xml like this one:

%%SRC_EMBED
<BizHawk-XMLGame System="Amiga" Name="anotherWorld">
  <LoadAssets>
    <Asset FileName=".\anotherWorld\Another World (1991)(Delphine)(FR)(Disk 1 of 2)[cp code wheel].adf" />
    <Asset FileName=".\anotherWorld\Another World (1991)(Delphine)(FR)(Disk 2 of 2).adf" />
  </LoadAssets>
</BizHawk-XMLGame>
%%END_EMBED

! Emulator

* EmuHawk 2.10 (Core: UAE)
