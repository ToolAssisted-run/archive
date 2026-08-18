> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6592M and entered this archive as a voluntary
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

Yet another of my childhood favourites. Although I played this on DOS, this port plays exactly the same as that one. This game is the official English league translation of [https://de.wikipedia.org/wiki/Bundesliga_Manager#Bundesliga_Manager_Professional|Bundesliga Manager Professional] (BMP), a soccer management game. 

BMP was way better than all other managers at the time thanks to its intuitive interface, engaging gameplay and hilarious animations. Funny fact, the version I actually used to play was a bootleg version of this game where player and team names were changed to fit the Argentinian league at the time. 

Although the game can be played on 'Continuous' mode, in this movie I decided play the single-season, hardest difficulty (5) game mode to provide a clear ending. The single-season mode restricts some decisions like sponsor management that tends to offer multi-year contracts. 

I decided to go for the 'win all games' goal to provide a more satisfying experience to the viewers. Although it is possible to reach the end of the season by losing the tournaments early (saving a lot of frames), that would be a questionable decision. Instead, I kept it simple and enjoyable by forcing myself to win everything.

The movie includes some following entertainment / speed tradeoffs. For example, I decided to leave animations on. Although this is a huge waste of frames, animations are the soul of the game and it would be a huge disservice not to provide them. By disabling animations you get a much quicker yet blander "Goal / No Goal" image.

Another e/s tradeoff is the match I had against Arsenal at 44:00. Although I could have manipulated it to end sooner, it was a thrilling event and didn't want to take it away from the viewers.

!! Strategy

Immediately after starting, I take a 1 millon quid loan from the bank that I never intend to repay. I also put some of my surplus players at sale to get even more quick money. I then use the money to pay the loan interests and continuously send my players to training camps (they last ~2 weeks) where their stats increase much faster than otherwise. By doing this I quickly become the best team in the league.

For training, I reduce intensity to prevent exhaustion and assign the most balls to goalkeeping and forward. This increases the chance of better outcomes for defending/attacking opportunities, respectively. By reducing midfield and defense balls I tend to reduce the number of overall opportunities, which saves frames.

During matches I manipulate luck by making timely substitutions. Although the main goal is to affect the final score, I sometimes make them to prevent red cars (multi-week suspensions), match injuries, and even ulterior training injuries. Besides substitutions, you can also manipulate RNG by changing the "Struggle" setting, which I guess indicates how rough the players will be in fighting for the ball.

!! Software + Hardware

! Rom Information

* Name: The Manager
* ROM: 

%%SRC_EMBED
  * Manager, The v2.0 (1992)(U.S. Gold)(Disk 1 of 3).adf - SHA1: 5183e75ba7466f1d93f109678633e7bb763964be
  * Manager, The v2.0 (1992)(U.S. Gold)(Disk 2 of 3).adf - SHA1: 8c4c2cade44c9eff35de9d308a7466443d9c1e94
  * Manager, The v2.0 (1992)(U.S. Gold)(Disk 3 of 3).adf - SHA1: 1ab7dc974d5eab899a6472bd86969ffbe31e7acb
%%END_EMBED

You will need a multi-disk xml like this one:

%%SRC_EMBED
<BizHawk-XMLGame System="Amiga" Name="manager">
  <LoadAssets>
    <Asset FileName=".\manager\Manager, The v2.0 (1992)(U.S. Gold)(Disk 1 of 3).adf" />
    <Asset FileName=".\manager\Manager, The v2.0 (1992)(U.S. Gold)(Disk 2 of 3).adf" />
    <Asset FileName=".\manager\Manager, The v2.0 (1992)(U.S. Gold)(Disk 3 of 3).adf" />
  </LoadAssets>
</BizHawk-XMLGame>
%%END_EMBED

! Emulator

* EmuHawk 2.10 (Core: UAE)
