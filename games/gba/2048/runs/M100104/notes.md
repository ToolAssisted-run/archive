! Introduction

I've been wanting to do a TAS of 2048 for a long time, but the issue is the many versions it has.

2048 is originally a web game by Gabriele Cirulli. Web games don't have stable TAS frameworks. There is an official version for the Nintendo 3DS, but I don't like it very much, with all its mobile gaming notifications every time you merge a tile, and it's also not free.

! This port

I decided to do a TAS of a homebrew version for GBA, which is very easy to TAS, made by Basil Termini. It's free, open source and public domain. This movie uses version 1.3.1, and I used VBA, because it allows recording and playing movies without the official Nintendo BIOS, making the whole run 100% free. You can download the ROM for free [https://basil-termini.itch.io/2048-advance|here].

The final time for a TAS of this game obviously depends on which version you run. For this particular port, every move on the board takes the same amount of time, it doesn't matter if the tiles slide only 1 column or 3 columns, so minimizing the time is the same as minimizing the moves.

! Getting fewer moves

You can see the mathematical analysis for fewest moves [https://jdlm.info/articles/2017/08/05/markov-chain-2048.html|here]. The idea is, the sum of all tiles in the board always rises by 2 or 4, depending on which tile spawns. You can only finish the game a few moves after a sum of 2048 is obtained, because it takes moves to merge the tiles. As long as you don't make mistakes in the board, separating tiles, you should be able to merge them all at the end. Thus, the final time is almost entirely dependent on getting as many 4's as you can to spawn, to make the sum go up higher.

! The RNG

The game rolls the RNG in the title screen to create randomness, and seeds it based on the values on the board when you start a new game. After the game has already started, it only calls the RNG when it needs to, so time based luck manipulation is impossible. For every move, it calls the RNG to decide where to place the tile and again to check if it's a 4, with 10% probability, or a 2, with 90%.

That means the sequence of 2's and 4's is set in stone the moment you start the game. If you look at 2048 advance code, it just uses the libc rand() function for everything. Since it builds with devkitpro, the RNG comes from its newlib fork, it's a 64-bit Linear Congruential Generator. The parameters are available [https://github.com/devkitPro/newlib/blob/b14e2e7d15a8f4ef4829d797692b42541c61e0ed/newlib/libc/stdlib/random.c#L69|here].

Luck manipulation for this game is as simple as mimicking the starting sequence of the game to obtain all possible RNG's starting seeds, and simulate the RNG to see which seeds gives you a sum that grows to around 2066 faster. I found that waiting 18 frames is optimal, giving a run that finishes in 918 moves (around 2.5 standard deviations below the average calculated in the blog post). Other seeds that gave fewer moves required waiting hundreds of frames. Since a move takes 6 frames in this game (more on that later), it wasn't worth it.

! The run

After getting a good seed, all I needed to do was not mess up the tiles so that they could not be merged. I thought it was easier to just use one of the many AI's available. I found this very simple [https://github.com/nneonneo/2048-ai|bot], which allowed me to place the board and get move suggestions, and also indicate where the next tile spawned. All the moves in the run, except the last ones, were made by this bot. I just coded a Lua script that inspected the board, sent to the bot, got back the moves and played the game. I only adjusted the input later.

The script is quite messy, the most important information is that the RNG is a 64-bit number stored in address 0x03002F50, while the board is stored in 16 bytes, starting at address 0x03001611. The value of the tile is encoded in the upper 4 bits of the byte, 0 means empty, 1 means 2, 2 means 4, and so on, until 11, which represents the 2048 tile.

Also, there's a glitch where, if you make a move exactly 5 frames after another, (the minimum possible) the extra tile will not spawn. It's mostly useless, because you want tiles to spawn to make the sum rise, so I only used it at the end, where I have to merge all tiles, since waiting 5 frames is obviously faster than waiting 6, and also because I find the glitch hilarious.

! Conclusion

Let me know if you have any suggestions on what port of this game I should TAS, or what the goals should be. This port does not give the option to go beyond the 2048 tile. I could try to fork the code, since it's public domain, but then I would be the TASer and creator of the game, so not sure if it's appropriate.
