Did a full analysis of the game and the route. In the end, confirmed that the Arc & Chardcore route is indeed optimal. Nevertheless, using both agentic AI, jaffarPlus, and some brain power, I was able to find many small polishings to the execution througout the game, so here is it. 

AI Summary:

This movie improves [6029M](https://tasvideos.org/6029M) by Arc & ShesChardcore by [357]{.frames fps="60.0988"} (5.94 seconds): the last input comes at 05:13.534 instead of 05:19.474.

It keeps 6029M's route, the same rooms in the same order, and its tricks. 6029M does not sync on quickerNES, and the same play costs more frames there than on FCEUX: its route, as first fitted to quickerNES, took [19417]{.frames fps="60.0988"}. What brought that down to [18843]{.frames fps="60.0988"}:

## What is new

- **The music is off** (228 frames). Syd and Dave turn their CD players off early on. The music routine runs on every frame; without it the game has more time left in each frame, and room loads, menus and walks are shorter all through the run. The idea comes from the real-time runs.
- **No hand-over, and an earlier last click** (75). 6029M gives the silver key from Syd to Dave to tidy the inventory; here Syd keeps it. A click on an inventory cell is stored and acted on at the game's next input tick, so the last click is made as early as the game still takes it.
- **Weird Ed and Purple Tentacle** (102). Syd waits where Ed appears and is caught at once. After the breakers the New Kid menu no longer freezes Ed on his way. The last clicks in the garage were placed again.
- **The first half re-timed** (126). Every click placed again for the shorter frames; Syd's CD player goes off during his first walk in the front yard.
- **The lab's card slot** (6). Syd keeps walking on edge clicks while the cursor climbs to the slot, and the second Select press takes it.
- **Dr. Fred's cutscene** (23). When a timer runs out in the same tick as a room load, the room is drawn twice. Three Select presses, which only cycle the verb, shift the ticks while Syd walks to the meteor and keep Weird Ed's door out of the cutscene's tick.
- **The kid picked inside the menu's tick** (14), at the switch back to Syd after Purple Tentacle catches Dave.

## Timings against 6029M

The frame on which each movie enters a room, counted from its own power-on.

| | 6029M | This movie | Ahead by |
| --- | ---: | ---: | ---: |
| Front yard | 964 | 971 | -7 |
| Hallway behind the steel security door | 2386 | 2419 | -33 |
| Dead Cousin Ted's room | 6001 | 5966 | 35 |
| Kitchen | 8800 | 8736 | 64 |
| Front yard, out of the crawl space | 9758 | 9664 | 94 |
| Bottom of the pool | 11308 | 11195 | 113 |
| Front hall, after the breakers | 14933 | 14704 | 229 |
| Dungeon | 15920 | 15660 | 260 |
| Inner lab | 17745 | 17450 | 295 |
| The Meteor's room | 18326 | 18023 | 303 |
| Garage | 18902 | 18567 | 335 |
| **Last input** | **19200** | **18843** | **357** |

The movie is behind 6029M for the first minute and a half and ahead from about frame 5700 on.

Made with a disassembly of the game, a simulator of its engine to plan the clicks, a tool that fits them to the emulator, and Claude AI.
