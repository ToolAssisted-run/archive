# Yu-Gi-Oh! The Sacred Cards TAS

## GCAH's Comments

This run is directly influenced and completed following the previous run submitted by Izumi on 30th September 2026.

I have a range of experience manipulating the PRNG in Sacred Cards and Reshef of Destruction, so a TAS always intrigued me. However, I just felt I didn't have the necessary skillset to do it justice.

After watching Izumi’s previous TAS, we got into a conversation about it and I discussed with him some improvements to the run that he hadn’t done or suggested in his write-up. Some of these minor improvements - such as using R to speak to Marik in the Game Shop; others were much bigger chances to save frames in the run. It was at this point that Izumi suggested working on a run together and that’s where we started.

The run features a major change to the route - most notably that every duel is won using either DEATH or Exodia. By using the 50,000 DP code (62626514) at the beginning of the game, we can buy and use both FTKs to chain through multiple duels at a time. The passwords for Exodia and extra deck capacity meant an additional 910 frames at the beginning of the game, but this is negated through one less deck edit (~800 frames) and the moderately faster Exodia duels (~235 frames) compared with DEATH (~275 frames).

We had many discussions about the number of consecutive duels we could achieve using DEATH and Exodia together, but anything more than 5 resulted in significant waiting times. This run improves on waiting times between screens by utilising screens where NPCs are moving.

The PRNG is called by NPCs when they are searching for a movement - and once a movement is found, it makes two additional PRNG calls on the same frame for direction and movement distance. When NPCs are moving, the PRNG state is static. This is used in RTA speedruns to help keep consistency; however, this means that there can be up to 80 frames of waiting before reaching the next PRNG state. The run uses precise movement to skip those waiting times and allow the next screen to continue progressing the PRNG state. There are a number of times where we wait on multiple screens between duels as this reduces the overall amount of frames lost.

## Izumi's Comments

When I made the previous TAS, my knowledge of this game's mechanics was, admittedly, superficial. I mostly like manipulating RNGs and I picked this game because it looked like it had potential to be crushed by precise manipulation, so I went through and did the run. I mainly followed what the RTA world record run did and replaced it with my strategy of overlapping hands to manipulate chains of duels.

I was very surprised when GCAH very quickly showed interest in the run. I started figuring something out about how NPCs moved as I made the TAS, but his previous experience speedrunning this game, finding out how to optimize the waits, and all other optimizations, was completely new to me.

When we started talking, the discussion was mainly about if the idea made sense, given that the edits in the previous run often took more than 20 seconds, wasting a lot of time. However, GCAH eventually found a way to perform them extremely fast, reducing the time to 700-800 frames, which made the strategy much more powerful. A lot of the time saved in this new version happens because of these faster edits.

Most of the TASing was done by GCAH. My main contribution here was to automate a lot of the stuff I did in the previous run to manipulate chains of duels. In the previous movie, I manipulated the hands one after the other, not letting the amount of distinct card slots grow too much, and ignoring NPC movement behavior to get the required seed, and then filled the DEATH cards manually to manip the duels.

Here, almost all of this was botted. We simply had to run through the maps as fast as possible to get the earliest seeds, and a program brute forced all possible seed combinations to find which ones were viable. It did so by checking that the starting hand for the duel that used Exodia did not overlap with the DEATH ones, and that the DEATH ones had 15 slots, and then ran a backtracking algorithm to verify that it was really possible to place the DEATH cards so you win all of them.

The result of the bot blew all my expectations. While in the previous run there were waits of 4 or 5 seconds, in a single duel, the program managed to find lots of possibilities that worked with very short waits, and GCAH filtered them by which seeds were possible to reach considering the NPC movements.

Overall, this new run manipulates a much harder result, 4 duels won with DEATH and another with Exodia, who was not in the previous run, while being faster not only in the manipulation, but in the edit times, and in the route as well. So, we had big improvements on pretty much everything.

## Run Improvements

Below are notes on the progression through the run.

### Codes

We optimised some of the codes by using start and up/down to reach 2 or 8 quicker. Also used R to skip a number in place of moving and selecting 0. Buying cards in the shop saves frames over the previous TAS due to being the only cards available to buy.

### Duels

Frames are saved from duels through optimal movement of selecting the right-most card first when setting DEATH.

#### Chain 1

This sequence has 62 cumulated wait frames.

#### Chain 2

This sequence has ~70-80 wait frames. We utilise some of the wait frames to get closer to screen edges so movement after the duels is shorter. We also had to take a longer path after the YCG duel to avoid advancing the PRNG too quickly.

#### Chain 3

This sequence has 7 wait frames. I utilise some walking frames in the park area as it allows me to save frames when backtracking. I also ‘corner glide’ on this screen - this causes diagonal movement that saves frames throughout the run. In the shop, you can enter the stairs via moving up into them.

#### Chain 4

This sequence has 54 wait frames. By attempting to duel Marik (with R) in the Game Shop, this saved frames over the previous TAS that uses A to talk. The Bridge sequence utilises a significant amount of corner gliding to save frames. Both the Boy and Joey duels are started from a position that ultimately allows the earliest Mako seed that we end up using. This is the first chain of 5 consecutive duels that also uses Exodia as a win condition.

#### Chain 5

This sequence has 17 wait frames. We utilise a walk frame to every Ghoul as it allows me to save one frame running back to exit the screen each time.

#### Chain 6

This sequence has 34 wait frames.

#### Chain 7

This sequence has 123 wait frames. These are mostly utilised in screen transitions to initiate movements and it is an unfortunate final chain. Many of the potential chains we found were impossible due to movements skipping them and the wait on the final screen is inevitable. If I was to enter the screen one movement later, we wouldn’t be able to reach the desired frame. I do feel there could be an improvement found, but it might require a small deck edit - but even editing one card takes a minimum of 80 frames. Moving to the right before starting the duel with Yugi saves 12 frames.

### Deck Edits

The initial deck edit saves ~200 frames by using Deck in the menu to remove all 40 cards. This saves time over looking for some hard to reach cards in Trunk.

Upon finalising the run, we sought to optimise deck edits by working out which cards could remain in the deck and only moving the required cards. Further to this, I planned out the filler cards around the edits to be close to each other (in terms of inputs/frames) to minimise the edits. This ended up further saving approximately 2500 frames.

Also, I initially left Spear Cretin as my only card of the first edit, but this was difficult to find for the last edit - so I replaced it with Saber Slasher to save 34 frames.
