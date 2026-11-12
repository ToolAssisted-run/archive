# Yu-Gi-Oh! The Duelists of the Roses TAS

> "A TAS! A TAS! My kingdom for a TAS!" -- Richard Toolium Assistum III of York

## The game

Yu-Gi-Oh! The Duelists of the Roses is a PS2 games that serves as a spiritual sequel to the Forbidden Memories PS1 game. It's from the time where Konami was still experimenting with the rules of the YuGiOh TCG, and the game still retains the fusion system of Forbidden Memories.

What sets it apart is that Konami for some reason decided to ripoff Shakespeare and set all Yu-Gi-Oh! characters in 15th century England, during the War of the Roses. So, now, instead of the early 2000s tech Japan vibes, Yugi is Henry Tudor, trying to reclaim the throne of England, Heishin (who never made it to the anime) is Richard III, who enlists the help of Kaiba and his Rose Crusaders to help in the war. Why playing card games helps win wars? The world will never know.

About gameplay, it is like the card game mixed with chess. When you play a card, they behave like pieces in a chessboard, and can attack each other by moving into their squares. One special unit is the deck leader, which is like the king. Cards can only be summoned near the deck leader. If you attack the deck leader directly, you deal direct LP damage.

The board can also have various terrain squares, which can give advantages or disadvantages to your monsters. There's also a leveling system for the deck leader, where you gain experience points and unlock leader abilities, although these abilities are never used because all the useful ones take too much grinding to unlock.

There are two options for the campaign, the Lancastrians (Yugi side) and the Yorkists (Seto side). To unlock the custom duel option, you need to beat both, so the speedrun community of this game considers the game beaten when you finished both campaigns.


## About this run

I started working on this after taking a look at the [decomp](https://github.com/kira-502/dotr-decomp), reading the code and playing around with the PCSX2 debugger revealed a lot of information about the game that's very useful for a TAS, like the RNG algorithm, the seed location, and other addresses.

I started looking at [Yugipedia](https://yugipedia.com/wiki/Yu-Gi-Oh!_The_Duelists_of_the_Roses) for the list of cards and their effects, until I came up with a few strategies to finish all duels in two turns, then I quickly made up a route and started going. I had to course correct a few times, but in the end, I was successful, and managed to beat all duels in two turns.

The end result is what you see here. In standard TAS timing, it's Duelists of the Roses finished in 51:26.617. If measured according to SRC rules, it's approximately 46:57.017, around 13 minutes faster than gcah2019's [unassisted world record](https://www.speedrun.com/yugiohdotr/runs/y6ogd4jy) on emulator.

To people who are going to verify. THIS RUN ONLY WORKS IN MY CUSTOM PCSX2 CHIMERA CORE. DOWNLOAD IT [HERE](https://github.com/IzumiHsieh/chimera-core-pcsx2/actions/runs/42237274624). It has fixes for the text graphics that main branch pcsx2 has not merged yet.

## Technical stuff

For all relevant memory addresses, look at the main Lua script in my [Github repo](https://github.com/IzumiHsieh/yugioh_dotr_lua_scripts). I found them using PCSX2 debugger + RAM search and the offsets in the structs found on the decomp.

There are three structures important during the duel. The first is the board, stored in memory in a 7x7 matrix, which has stuff like which terrain is there, and a pointer to the unit there (null if there's none).

The second is two arrays (actually three, but I don't know what the third is used for) of 11 units. These units are the deck leader of each player, five monsters and five cards. Each unit has in the data a slot number. Slot 0 is the deck leader, slots 1-5 are monsters, slots 6-10 are magic/trap cards. If the slot number of a unit is set to 11, the game understands this as no unit.

The third structure are the decks themselves. They are an array of 40 16-bit little endian IDs representing the cards. When you draw from the deck, you always draw from position 0 of this array, and the game shifts all the remaining cards back 1 slot.

It's important to note that index 0 is the red rose player, and index 1 is the white rose player. So, when you are playing Lancastrians, you are player 0, and when you are playing Yorkists, you are player 1.

## Luck manipulation

The details of the RNG can be seen in the simulation C code attached to this write-up. It's the newlib 64-bit LCG:

``` c
struct Rng {
    u64 seed;
    Rng(u64 seed_): seed(seed_) { }
    i32 roll() {
        seed = seed * 6364136223846793005LL + 1;
        return (seed >> 32) & 0x7fffffff;
    }
};
```

The seed starts the game at 0, and is then set to 1. I don't know if it's seeded at 1 or it's just rolled once, but whatever, the result is the same. The simulation code and the Lua scripts have some code to find how many calls were made from 0 to reach the seed currently in the game.

Using it you can see a lot of stuff. The game runs at 30 fps, accepting inputs only every other frame. Normally, the RNG will advance by 2 every two frames. When there's a character speaking, it will advance by 5 every two frames (probably RNG calls for blinking).

The game uses that same RNG for everything, like weather and graphics effects. In the intro with the clouds it advances thousands of times.

### Deck shuffle

To shuffle the deck, the game uses the following algorithm, implemented in the simulation code:

```c
struct Perm {
    i8 perm[40];
};

void setCard(Rng* rng, int pos, Perm* p) {
    int index;
    do {
        index = (i32)floor(40.0f * ((float)rng->roll() / 2147483648.0f));
    } while (p->perm[index] != -1);
    p->perm[index] = pos;
}

Perm getPermForSeed(bool isWhiteRose, u64 seed) {
    Rng rng(seed);
    Perm player, opponent;
    for (int i=0; i<40; i++) {
        player.perm[i] = -1;
        opponent.perm[i] = -1;
    }
    for (int i=0; i<40; i++) {
        setCard(&rng, i, &player);
        setCard(&rng, i, &opponent);
    }
    if (isWhiteRose) {
        return opponent;
    }
    return player;
}
```

When you remove a card from the deck, the game sets its slot to no card. When you insert a card, the game finds the first empty slot, and fills it with the card.

Therefore, luck manipulation is all about simulating a given seed to figure out which slots will appear in the first positions and become your hand, and play around with the text timings so that you reach it when you start the duel.

To manipulate a duel, I start it with the Lua script showing the duel deck, and see which frame it got filled. Then, by looking at the previous frame, you can conclude it's always the seed shown there advanced by 2 calls. Then, you subtract that value from the seed you want, taking into account the 2 or 5 advances per two frame thing, delay the text accordingly, and profit!

One complication is that editing the deck brings up a loading screen, and loading times are inconsistent. However, after testing, it looks like that, if you stay in the edit screen for very little time, the loading takes longer, if you stay there more, the loading is shorter, so it evens out in the end. It's not exact, but the loading screen seems like an "approximate frame rule".

To make sure I could reach the seed, before a duel, I entered the edit screen, exited without doing anything, and took note of which seed I got. Then I forwarded it by 80, picked the ones I had to edit the least amount of cards to get the hand which were more towards the end, and targeted it.

In retrospect, I think the padding of 80 was too much, as I always had a lot of room, because of the weird loading screen behavior. So, if you are frame warring you can probably be much more aggressive with this.

### Earthshaker card

We will see later that the Earthshaker card is very important to get rid of opponents with labyrinth walls in the board, that don't allow you to get close to them.

Earthshaker rearranges all terrains on the board, converting labyrinth tiles that you can't pass through into normal ones, and also rearranges all monster and magic cards in the board.

It works like this. During the Earthshaker animation, the game starts swapping tiles, then when the white flash occurs, it runs [this code](https://github.com/kira-502/dotr-decomp/blob/c20968253eb58f46d85cb59c9ce6047bf54dfeba/src/rules/ta_effects_2.c#L1877). It changes all labyrinth tiles to normal, then rolls the RNG twice to get a tile on the board, rolls it again to decide the player, and rolls it again to decide which of the ten units of the player it will move to the tile it rolled. It repeats this 100 times.

The problem with this algorithm is, if you want to move a monster to a given tile, the game only picks it to move 1/20 of the time of the 100 times it rolls. This makes the seeds that move your monster to an adequate tile very rare, and you need to wait A LOT to manipulate that. I was lucky in one battle and got it fast, in the second I had terrible luck and had to wait a lot, and in the third it was average.

## The route

As I said, I kinda made this up as I was TASing it. Most of the cards in the game can be obtained by inputting a password in the edit screen. Meteor B. Dragon is an exception, and can only be obtained temporarily by fusion.

Most of the duels are won by using Dimensionhole to teleport your deck leader close to the opponent, then fuse Red Eyes Black Dragon + Meteor Dragon to form Meteor B. Dragon, combined with the 500 ATK power up from Dragon Treasure to kill the opponent in a single blow. If the opponent deck leader is standing in a Mountain tile, Meteor B. Dragon will gain 500 ATK from the terrain, so Dragon Treasure is not necessary.

Duels that are exceptions to this are:

* Rex - Labyrinth tiles block the way direct to him, so I use Metalzoa, who can move two tiles in wasteland terrain, plus a 500 ATK buff from Machine factory.
* Pegasus - Toon terrain debuffs all non-toon monsters by 500 ATK, and the labyrinth tiles make it necessary to have a monster that moves two tiles, so I use a Toon Summoned Skull I won from the slots (he doesn't have a password), and two 500 ATK buffs to kill him.
* Bakura - his deck leader paralyzes all Dragon monsters summoned next to him, so Meteor B. Dragon cannot attack him. He also gains 50 LP, which is annoying, because we deal exactly 4000 damage. I went with Metalzoa, which is Machine type, one 500 ATK buff, and two 300 ATK buffs to deal 4100 damage.
* Seto - his deck leader moves two squares, and depending on his opening hand you can bait him to move two squares forward, dropping Meteor B. Dragon in front of him without needing Dimensionhole.
* Labyrinth ruler, Grandpa - the labyrinth tiles block the way to them, so I used Earthshaker to put Meteor B. Dragon next to them on second turn and kill them.
* MFL Skull Knight - crush terrain in front of him will kill Meteor B. Dragon and any 1500+ ATK monster, so I used Earthshaker, just like in Grandpa and Lab ruler.

## Possible improvements

Well, a lot. Opening and closing the edit screen takes about 20 seconds, so it's probably faster to use a combined deck edit strategy to manipulate several duels, like I did in the Sacred Cards TAS. There were several battles where I manipulated cards I didn't need, because I figured out another strategy.

For labyrinth ruler, for example, I initially tried to use Earthshaker to remove the labyrinth tiles, and bait him to move forward in the second turn, so I could kill him with a monster that moved two tiles. Then, when I started the battle, I saw that Earthshaker moved the cards as well (as always, the problem with Yugioh players is that they don't read what the cards do...), so there was this obvious strategy. I decided to leave the scene where his monster dies to crush terrain even though it's slower because I didn't understand the Earthshaker manip yet, and also because it's funny.

For Darkness ruler, I went with him playing Yami in the first turn because when he set a card, it was usually a trap that stopped Meteor B. Dragon from attacking him. Now that I found some addresses, I can probably see the card he played, so this manip can be improved.

MFL Skull Knight is probably faster to do by turning the terrain into mountain, baiting him to move forward, and have MBD move two tiles to attack him, because you don't have the Earthshaker animation.

Also, I realized midrun that manipulating three cards in the hand + first draw is not that difficult, and I did Tea, Mai and Joey without going to the edit screen. It should be possible to redo the duels that only need three cards and I manipulated more stuff than I needed without going to the edit screen at all.

About starting deck, I picked Robotic Knight, because I thought he looked cool, and all decks had exactly one of the cards I wanted to use as a password. Looking back, Patrician of Darkness would probably be better, because you can get 2 Dimensionholes for editless manip.

Finally, there's also the possibility of burning cards, which lets you access cards beyond the sixth slot. I didn't do it, because burning cards on the first turn can reduce your summoning level in the second, and you need exactly 7 summoning level to play the fusion. It should be possible to do with some planning, though, like filling the deck with magic cards. But, for a first run of this game, in a new platform, I think this is good enough.

## Special thanks

* eien86 and toolassisted.run for developing Chimera and making this run possible;
* kira-502 for the decomp;
* gcah2019 and the yugioh speedrunning community for their realtime runs;
* pcsx2 team for continuing to improve emulation of this game, it looks much better than on console, I hope the final graphics glitches are resolved soon.

## Final words

The future is here! Playstation 2 TASes are among us!!!!!
