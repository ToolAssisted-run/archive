> **Imported**
> This run was originally published at https://tasvideos.org/3254M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

[http://i.imgur.com/D9eUvvt.png]

__Arc__: This submission is an update to the [3225M|"warpless" movie] that I submitted last month. It saves an additional 560 frames. The chart above shows this new improvement combined with the previous 407 frames for a total improvement of 967 frames compared to the [2582M|old obsoleted warpless run]. You can view my [https://goo.gl/wKZV9i|spreadsheet] for exact details on where the improvements occurred.

This run now qualifies for the "heavy luck manipulation" category. These new 560 frames saved are mostly because of FatRatKnight's brilliant efforts to understand the enemy overworld RNG in order to manipulate optimal fairy encounters at trap tiles. ("The fairies that dreams are made of.") We now have fairies at 4 of the 7 relevant traps, and it appears to be impossible to get fairies at the other 3. I didn't do a video encode because I made gifs of the 4 fairy traps below. I am going to copy/paste some of FatRatKnight's explanations from [/Forum/Topics/98&start=675|the Zelda II thread].

__FatRatKnight__: It looks like two things affect RNG: frames passed, and the moment you enter a side-scrolling screen (world -> side or side -> side both trigger it). 

RNG is a standard shift RNG. It takes an XOR of bit #$02 in addresses $051A and $051B, and the result is shifted into $051A. The RNG is then extended to take up 9 bytes (051A - 0522), with each bit shifted out of the previous address going into the next. This happens once per frame in most cases. The nine bytes are for separate enemies and overworld monster pathing. 

The other time the RNG is affected is when entering any side scrolling screen. Theoretically, this means you can affect the RNG by adjusting which frame you enter the last side scrolling area. You can, of course, delay your exit to the world map, but you can also delay the moment you've last entered the side scrolling screen. Or last two times, as the effects of that time should still be present in $051B when overwriting $051A with #$A5. Basically any combination of screen delays might help. 

RNG is not adjusted when enemies "think", which is another usual thing games tend to do (no breakpoint trigger).

Two timers are used, each independently triggering a spawn. One is based on a global timer at $0500, and ticks down $0516 every time it hits zero. Once $0516 is zero, it will remain there until you're over spawning terrain, at which point stuff spawns and $0516 resets based on the terrain. The other timer is at $0026, which will always increment. When it overflows and returns to zero, a spawn may trigger. If you're not over terrain where a spawn will occur, $0026 just keeps running without triggering anything.

There are effectively 128 possibilities with the RNG every time it resets. And it resets every time you get into a side scrolling screen. The interaction with the global timer messes things up, however, bringing the total possibilities to 2688 upon screen entry.

There are four possible groups, and four possible directions to omit an encounter. It is clear that not only do you need a fairy spawn, but it needs to fly in directions that will ultimately get it to the trap you want to skip at the right time. They fly randomly without respect of Link's position, unlike the other encounters, which makes them more difficult to time appropriately. 

We do have one problem with predicting movement: It's not the RNG alone that determines it, but also what slot the important fairy is generated in. There are eight slots, and the bottom slots are filled first. Regardless of which direction is omitted, the west position occupies the third available slot from the bottom. The groups that go off-screen before the next spawns will affect which slots are available when the fairy spawns, and therefore the directions it will go.

There is an additional detailed attempt to explain the RNG in [Forum/Posts/442177|the Zelda II thread].

__Fairy 1 (Trap 1/4 at Darunia):__

[http://i.imgur.com/LYe1dPJ.gif]

Appropriate adjective: Awesome

__Arc__: The manipulation for the fairy at this trap begins nearly 5000 frames before we actually run into the fairy. There is a minor manipulation when we first arrive in Eastern Hyrule, and a longer delay right before rescuing the child. 

__Fairy 2 (Trap 3/4 at Darunia):__

[http://i.imgur.com/0qzqwzO.gif]

Appropriate adjective: Amazing

__FatRatKnight__: I took 1 2 0 0 0 0 2, delaying town entry by 1 frame, its first screen exit by 2 frames, and delaying exiting the Reflect building by 2 frames. I was left with a gTimer of 10 and R2 of 34. Sure enough, the run matched my memory edit, and I got a lovely fairy spawn. 

__Fairy 3 (Trap 1/3 in the Valley of Death):__

[http://i.imgur.com/CPkmFRW.gif]

Appropriate adjective: Marvelous

__Arc__: Getting a fairy here is the __Holy Grail__ of Zelda II RNG manipulation. I [Forum/Posts/440026|lament] that this screen is the most dreaded and notorious part of the game to TAS. Fairy spawns are extremely rare in the Valley of Death. We need not only the spawn, but the spawn in the correct place and with correct movement.

__FatRatKnight__: What I did this time was to generate a list of possible starting RNGs that would get me R2=15 after no fewer than 905 RNG rolls, the theoretical fastest time. Now, with a target gTimer of either 18 or 20, this gives two possible gTimers for any given RNG count, meaning two possible spawns where I hope the west group is omitted. I found a target I like at 933 RNG calls, which works out to an initial R2 of 46 and gTimer of either 6 or 8. I got a decent group spawn at gTimer=8. From there, I just ran my recursive function to find R2=46 and gTimer=8 from the numerous transitions after P6.

__Fairy 4 (Trap 3/3 in the Valley of Death):__

[http://i.imgur.com/LmDEDVZ.gif]

Appropriate adjective: Wonderful

__FatRatKnight__: Fairies have 1/256 chance to spawn in the Valley of Death, 3/4 chance the west group spawns, and 1/4 chance of any particular direction in their random pathing. The last fairy has approximately 1-in-1365 chance of appearing in the west spot and subsequently moving east as its first step.

Screenshot:

[http://i.imgur.com/rvg103e.png]
