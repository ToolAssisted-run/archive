> **Imported from TASVideos**
> This run was originally published at https://tasvideos.org/6924M and entered this archive as a voluntary
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

Street Rod, a.k.a. "How to sell your car for negative money", a.k.a, "How to Steal a Girlfriend on a Single Gas Tank", a.k.a. "I am definitely NOT a undercover cop"

[https://i.ibb.co/RGyw4PPM/faf.png]

The game goes around street racing and betting (don't do that boys, this TAS was made under controlled conditions), starting with a cheapo beater car and upgrading or winning opponents' cars until you get to race and beat "The King", the head honcho, and steal his girlfriend. In this movie, I manage to do this on a single gas tank

Oh boy, this one took a lot of patience and research. Turns out The King doesn't want to race you until you've met a set of conditions. Nobody, even the current [https://www.speedrun.com/street_rod/guides/lxjqd|RTA runners] knew exactly these conditions were, other than having to win a bunch of road and drag races, with some hypothesis even pointing towards RNG.

So at first I started TASing the game, winning race after race but the king would never accept a challenge. After spending a couple dozen hours on this, I thought I really needed to do some RAM digging and finding the exact conditions under which he would accept a race. So in the end, [https://www.speedrun.com/street_rod/guides/50n8t|I determined] you need to win exactly 6 drag races and 6 road races for him to accept.

This movie is a bunch of minutes faster than the current [https://www.speedrun.com/street_rod/runs/m3k3g64y|RTA WR], by virtue of perfect execution and RNG manipulation. But also with an infinite money glitch, which is not acceptable under RTA rules in SRC. Some actions (painting the car and placing a sticker) are not strictly required, but I do it because it makes the movie much cooler.

!! Strategy

! Infinite Moneyzzzzzz

In this game you can buy and sell cars. Whenever you sell them, you can propose the price for it. If the price is below some internal game calculation, then it is sold. The internal sale price goes down the more worn the parts are, with missing parts being the least valuable. 

For a very specific car (Ford worth 475$ on purchase), though, if you remove the engine and transmission, the internal calculation goes so low that the 16-bit integer overflows, getting to 65000$ valuation. So you can sell it for as much as you want, and so I do. With the proceedings I buy the fastest car available in the game. As a result, I end up with a hilarious amount of money.

! Opponents

Every time you meet an opponent, he/she has a "willingness" to race you, which is entirely RNG based. Here I try to manipulate the game as much as possible by skipping or selecting opponents as to maximize them accepting my challenges. 

Whenever they are willing, I prioritize road racing, as those have bigger stakes and requires more willingness. Whenever that challenge is not accepted (or I already reached 6 road races won), I go for drag racing (needs to have a bet; friendly drag races do not count towards the counter). Furthermore, I manip RNG to prevent the server girl from skating back and forth to the customers, wasting around 10 seconds each way.

!! Software + Hardware
! Emulator
* EmuHawk 2.11 (Core: DOSBox-X)
! ROM
https://www.goodolddays.net/en/diskimages/?id=1593
