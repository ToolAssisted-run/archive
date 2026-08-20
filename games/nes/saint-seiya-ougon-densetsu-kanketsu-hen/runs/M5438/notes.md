> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/5438M and entered this archive as a voluntary
> import by its author. A collaborative work can only be imported with the
> authorization of every author credited on it, which is why only single-author
> works come across this way. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> by TASVideos staff, a trustworthy TASing source; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from tasvideos.org and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!! Introduction

Saint Seiya is a Japanese manga first aired as anime in 1986. The anime was an unlikely success outside Japan, in many countries in Europe, but especially Latin America, where it became a cult series. Saint Seiya: Ougon Densetsu Kanketsu Hen is the second official Saint Seiya game for the Famicom, which represents the Sanctuary saga -- arguably the best part of the entire series. The game, like the series, follows the Damsel in Distress trope where you have to rescue Athena, your goddess, from different predicaments. In this case, she is in the brink of death after having been pierced by a golden arrow to her heart. You have 12 hours to traverse the 12 Gold Saint temples and reach the Pope -- the only person who can remove the arrow.

In general, this is a rather shallow RPG with basic mechanics. The gameplay is divided in two stages: (1) reaching each temple where you fight generic guards, and (2) the Temple itself where you interact or fight the Gold Saint therein. The game is so deep in lore, that you would never be able to beat it (at least not 100%) if you haven't read the manga or watched the anime. The worst offender is the fight dynamics, where you get a frame window to parry incoming attacks (with a 50% odds). You'd never know about this if you don't read the Japanese manual. 

As a child, I was a fan of the series and got to own a (bootleged) version of this game that I would play on my (bootlegged) version of my Famicom. I would play the game entirely in Japanese, aided by the fact that I watched the anime. I even got to decrypt the password system to give me extra power and HP. However, even so, I used to get frustrated by the fact that Gold Saints would parry my attacks but I never knew how. But this is TAS, so we get to totally destroy everyone.

! Explanation Video

[module:youtube|v=SyORA4TyHh8]

! Romhack

For an English translation of the game, use the following romhack [https://www.romhacking.net/translations/1487/]

! Previous Work

There is plenty of precedence of this game being TASed. In this site, the previous submission [1601S] got mixed feedback then accepted to Vault, but ultimately cancelled because other TASers had already improved it. This led me to the Chinese rabbit hole...

It seems there is a strong TASing scene in China with very talented people and excellent works, especially for Famicom. The problems are that they are practically isolated -- I couldn't contact anyone without a QQ or bilibili account (I couldn't open or use either to communicate with) and that they do not publish their movie scripts.

In particular, I found [https://gong-lue.com/|Gong Lue], who has many interesting TASes. His work includes a movie for this game [https://www.bilibili.com/video/BV1xP4y187sH/]. I got my mind blown away by the new skips and crazy routing used here and wanted to replicate (and improve) it. Two problems though: the movie uses a Chinese translation hack, which makes it difficult to compare timings and, as said before, I had no access to his movie script. So I had to replicate it by eye and with the help of my bot.

! Improvements

Compared to Gong Lue's movie, I implemented the following improvements:

* Faster skips by using Jaffar to refine their execution
* In most instances, I modified the Cosmo and HP upon arrival at the Temple (Athena appears) which is 3/2 faster than doing it at character selection, which Gong Lue's movie does.

In spite of these improvements, the resulting movie is longer than his when measured in clock time. This can be attributed to the fact that his movie uses the Chinese translation romhack, which makes dialogues faster; or due to a bad framerate encoding by the author or by Bilibili. For example, just the Aries temple (dialogue only) takes 100 frames more in my movie than in his. 

!! Software + Hardware

! Rom Information

* Rom: Saint Seiya - Ougon Densetsu Kanketsu Hen (J) [!]
* SHA1:F871D9B3DAFDDCDAD5F2ACD71044292E5169064E
* MD5:3B0F17C2B6EFC928B3D3FE9B1A389680

! Emulator

* EmuHawk 2.8.0 (Core: QuickNES)

! Routing Bot
* Bot: [https://github.com/SergioMartin86/jaffarPlus|JaffarPlus]
* Routing Core: QuickNES
* Platform: 'The Jaffanator' - AMD Ryzen Threadripper 3990X (64 cores, 128 threads) + 256Gb RAM (Average Exploration Performance: 1.2M States/s)
