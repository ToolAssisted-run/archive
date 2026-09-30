!! Yu-Gi-Oh! The Sacred Cards TAS

The idea to do this run came after I saw a few videos explaining how realtime speedruns are done, with a lot of RNG manipulation. I had played this game before, it's a very easy game. After understanding how luck manipulation works in RTA, and seeing the current world record, I knew it could be done much faster, so I dug through the game assembly to figure out how the RNG works, and then took luck manipulation to the next level.

If timed according to SRC rules, this run would be  23:53.28, approximately 5 minutes and 30 seconds faster than the current unassisted [https://www.speedrun.com/yugioh_the_sacred_cards/runs/zg60d10m|world record] by X1stence.

The japanese version is standard for RTA, as it has much less text, and does not have the censorship of the western version. For example, Destiny Board spells the word DEATH, which was changed to FINAL in the western release.

Also, I simply cannot resist this pun. This run uses DEATH as a shortcut.

! The game

You take the role of a friend of Yugi in a story loosely based on the Battle City arc of the anime. If you are familiar with the Yu-Gi-Oh! card game, the rules in this game differ a bit, because it's from a time when they were still deciding on the rules. There are no phases in the turns, your hand is capped to five cards, and monsters have an elemental affinity that makes them strong or weak to one another. A monster with an elemental advantage against another will always kill it in battle, no matter the attack or defense points. Also, you tribute a monster, and then summon another, which opens up strategies like tributing monsters on your side, using dark hole to wipe out the board, and then summoning your monster. You always have to activate a trap card, and some cards like Monster Reborn, have different effects, always reviving the last monster you killed from your opponent, not allowing you to choose.

! The run

Instead of building a powerful deck of cards, our protagonist instead uses the Heart of the Cards (and by heart of the cards, I mean stacking the deck to win everything). Destiny Board is completely broken in this game. It's like Exodia, but you have to play all 5 of them in the magic slots of the board to win. Unlike Exodia, you can have 3 copies of each card in your deck, and their cost is much lower, you can put them all in your deck right at the beginning of the game.

This run goes to the shop as soon as possible, using the password system to make the Destiny Board cards available, and just manipulates all duels to have you going first turn with all five Destiny Board cards in your hand.

The current world record run already does this. We will see that the RNG is easy to manipulate in real time. However, if you look at the run, you'll see that the player sometimes goes second, at other times he has other cards in the hand, and draws the rest of the Destiny Board cards in the next turn. The objective of this run is to do the luck manipulation much cleaner, and save much more time.

! The RNG

The RNG seed address in memory can be seen in the Lua script. It is 0x020213CC. The RNG update sequence is in the supplementary python script. It is

%%SRC_EMBED 
def next_seed(seed):
    aux = (seed & 0x80000000) >> 15
    seed ^= aux
    seed = (seed << 1)
    seed |= (aux >> 16)
    return (seed & 0xffffffff)
%%END_EMBED

Nerds will recognize this as a [https://en.wikipedia.org/wiki/Linear-feedback_shift_register#Galois_LFSRs|Galois LFSR]. The seed is initialized to 1 at the beginning of the game. There's quite a lot of theory behind this. The short story is that you can get how many times the RNG was called just by looking at the seed. At the end of the game, the number of calls was in the order of 200000, so this needs to be done efficiently. If you want to know how it's done, look at my [https://github.com/IzumiHsieh/yugioh_rng|GitHub repo]. I had to write it in plain C because it's a bit intensive, and could not run inside a script, it would lag the emulator a lot.

Using that tool, you can find some neat stuff. When starting the duel, the RNG always advances by 6408. If you win the duel immediately, with DEATH, it will move a further 816 advances. This means that duels in this run, except the first two, advance the RNG by 7224.

Notice that all values are multiples of 8. That's because each call to the RNG only gives a bit, and the game always fetches bytes. This is also in the python script:

%%SRC_EMBED 
def get_byte(seed):
    ans = 0
    for i in range(8):
        ans = (ans << 1)
        seed = next_seed(seed)
        ans |= (seed & 1)
    return ans, seed
%%END_EMBED

I could completely reverse engineer the duel start sequence. It uses 6408 / 8 = 801 bytes. These are 400 bytes to shuffle your deck, 400 bytes to shuffle the opponent's deck, and one final byte to decide who goes first. Each deck is shuffled by laying out the deck of 40 cards in order and performing 200 swaps, each taking two bytes. To decide what gets swapped, the game simply picks the unsigned byte and takes the remainder by 40. The positions obtained from these two bytes are swapped. If they are the same, nothing happens. This algorithm is also in the python script (we don't care about the opponent deck, it's never used):

%%SRC_EMBED 
def get_duel_start(seed):
    perm = list(range(40))
    for i in range(200):
        a, seed = get_byte(seed)
        b, seed = get_byte(seed)
        a %= 40
        b %= 40
        perm[a], perm[b] = perm[b], perm[a]
    for i in range(3200):
        seed = next_seed(seed)
    byte, _ = get_byte(seed)
    return byte % 2 == 0, perm
%%END_EMBED

From this, it's very easy to find, for a given seed, if you start the duel and which permutation you get. Your hand is made up of the last 5 positions of the permutation.

! Luck manipulation

There are only two things that call the RNG, duels and the random movement of NPCs. In maps where no NPCs are moving, the RNG is always fixed, and it's not possible to manipulate luck there, meaning you have to manipulate it all beforehand. Manipulation is done by simply testing which seeds are favorable, and then exiting the last map with moving NPCs when you see the seed you want. When you have a sequence of duels where no NPCs are moving, I use my tool from the Github repo. I get the position of the seed, add 7224 and obtain the seed for the next duel. Then all duels need to be good for the seed to be valid.

If you look at RTA runs, their luck manipulation is not perfect. I think this is because RTA runners need consistency, and only use the seeds where the NPCs stopped thinking/moving, as they remain in memory for a long time, instead of those that appear in a single frame. TAS, of course, is not bothered by this.

An obvious improvement from RTA that inspired me to start this run is that, most of the extra time is spent on time-wasting deck edits to put the Destiny Board cards in the positions you need. Because you can have three sets of these cards, you can manipulate three duels with a single deck edit, and RTA does not do this.

Well, when I started TASing this, I was surprised to see that I could extend this even further, and it's in fact possible to manipulate four duels with a single deck edit! We can take a look at the sequence of hands for the Joey, Mako, and two ghouls duel:

%%SRC_EMBED
hands
20, 29, 22, 24, 27
D    H    E   T  A
39, 34, 3, 22, 12
D    A   T   E  H
17, 36, 27, 39, 33
H    E   A   D  T
17, 24, 2, 14, 23
H    T  A   E  D

in order: 2, 3, 12, 14, 17, 20, 22, 23, 24, 27, 29, 33, 34, 36, 39

X X A T X X X X X X X X H X E X X H X X D X E D T X X A X H X X X T A X E X X D
%%END_EMBED
The thing is, if you draw four hands, it's very likely you won't get the full 20 positions, and there will be overlaps. If you get 15 different positions for four hands, it's possible that you can place the cards so that all four hands have DEATH. I'm not really sure how all this math works out, but what I did that worked was:

1 - manipulate the first and second hands to have one overlapping position
2 - manipulate the third hand to have two overlapping positions with the previous two combined. if possible, try to avoid the situation where one position appears in the three hands, as that can cause problems.
3 - now you have 12 positions in three hands, so three cards are free. If the final hand overlaps in two positions with the previous three (huge chance, because of 12 cards), you can have 15 positions.
4 - solve the sudoku-like puzzle and profit.

There are 30 duels in the game after you get the Destiny Board cards, so the optimal sequence is to get 6 four-duel edits and 2 three-duel edits. Also, you cannot edit your deck before fighting Kaiba close to the end of the game, so you're forced to use a three-duel edit as the last one. I chose to place the other three-duel edit so that a sequence where I have to manipulate a string of four consecutive firsts splits the manips into two sets of two.

! Possible improvements

The way forward to improve this run is definitely in the deck edits. I tried searching for different seeds waiting less, but it didn't matter, because depending on how your deck ends up the edit takes longer, and it was very random how things turn out. I simply did not bother to look into how to optimize deck edit time, but since it's much longer to edit than to manipulate the seeds, I think you could search for seeds to make edits quicker.

! Conclusion

Have fun with this run. I hope this inspires RTA runners to improve their routing for this game. Also, as a bonus easter egg, there's exactly one duel in this run where DEATH is spelled correctly in the board. Try to find which one! Anyway, have fun and keep winning (with DEATH).
