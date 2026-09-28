> **Imported**
> This run was originally published at https://tasvideos.org/5750M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Bagger (Compute's Gazette)
A new sport has just been added to the Summer Olympics: Bagging. Inspired by the millions of baggers in supermarkets across the country, the new event will test the skills of bag boys and girls around the world. You've been chosen to represent your country and bring back the bagging gold!

The article for this game can be found on page 36 of [https://archive.org/details/1988-07-computegazette/page/n37/mode/2up|Compute's Gazette Issue 61 (July 1988)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 51st TAS from this series. 

I think this around the time that I started wane a bit on this magazine. By this point, I had started to miss magazines. This was during the time when I would get my issue from the Tobacco store, which was a fond memory. I do remember this one very well, as I only typed in Bagger, and not the other game. My reason was very simple...it looked like "Tapper", only a cheaper version.

Previous Compute's Gazette submissions include (In order of submission):
|1|[4449M|Astro-Panic!]|2|[4805M|Royal Rescue]|
|3|[5046M|Miami Ice]|4|[5179M|Chopper 1]|
|5|[5235M|Spike]|6|[5314M|Heat Seeker]|
|7|[5317M|Omicron]|8|[5320M|Alien Armada]|
|9|[5319M|Star Dragon]|10|[5326M|White Water]|
|11|[8332S|Space Gallery]|12|[8340S|Bagdad]|
|13|[8361S|Race Ace]|14|[8379S|Quolerus]|
|15|[8385S|Trap]|16|[8407S|Maze-Mania]|
|17|[8410S|Balloon Blitz]|18|[8416S|Bowling Champ]|
|19|[8418S|Circuits]|20|[8421S|Going Up?]|
|21|[8433S|Space Dock]|22|[8450S|Saloon Shootout]|
|23|[8451S|Sno-Cat]|24|[8455S|Queens' Quarrel]|
|25|[8458S|Stronghold]|26|[8472S|Lincoln Green]|
|27|[8480S|Disc Blitz]|28|[8485S|SuperSprite|]|
|29|[8538S|Dunk]|30|[8579S|Basketball Sam & Ed]|
|31|[8580S|Bee Zone]|32|[8583S|Q-Bird]|
|33|[8597S|Space Worms]|34|[8599S|Powerball]|
|35|[8604S|Castle Dungeon]|36|[8613S|Pool]|
|37|[8620S|Snake Pit]|38|[8644S|RADs]|
|39|[8649S|Spy Defense]|40|[8658S|The Forbidden Crypt]|
|41|[8684S|Cosmic Combat]|42|[8686S|Canyon Cruiser]|
|43|[8706S|Cell Runner]|44|[8742S|Sky Diver]|
|45|[8743S|Snake Escape]|46|[8764S|The Viper]|
|47|[8765S|Root Race]|48|[8766S|Cypher]|
|49|[8770S|Revenge of Cyon]|50|[8773S|Maze Master]|

!!Game Difficulty and Ending
This game is a bit weird. I have found that It loops over 3 different levels, over and over...with no speed increase. Basically, it acts as follows:
*Level 1: Serve 10 Customers
*Level 2: Serve 30 Customers
*Level 3: Serve 50 Customers
*Level 4: Serve 10 Customers...

I found two addresses that helped me to determine this.
*0x02E4 Number of customers served
*0002D9 Level

After altering these addresses, I saw variations of speed...which turned out to be faster when less things were on the screen. Nothing ever changed after Level 3, since it repeats the same 10/30/50 customer service over and over.


!!Effort In TASing
As with other games, I gave this a rest so that I could come back and see if I could figure something out. Well, it appears to be more simple than I thought. I was hoping it would have gotten faster and faster, but no. So...the only real effort that I needed to perform was to clear customers off as soon as possible so that spawning will occur. Now in this game, spawning was a bit different. If you are aware that the Commodore 64 could only display 8 sprites at a time, then you probably were caught off guard when you saw more movement than was possible. Here, this game uses a "Raster" interrupt to give the appearance of more. So, the screen was divided 4 times which will help to display up to 32 sprites...only 28 will be seen. Why 28? Because of the way the game works to control the ability to have enough bags to supply customers, only with the conveyor brings you tips. So...to make the game "fair", it would have a max number of 3 customers, 3 bags to counter those customers, and the ability to have tips/money being laid down for collection. Any more customers would mean that you would have to give up the money collection, which is a nice touch.

In this game, there is RNG...but it not controllable in the normal sense for a machine language written game. It acts more like a BASIC written game.

!!Human Comparison
[module:youtube|v=7gD6-wMEHlI]
