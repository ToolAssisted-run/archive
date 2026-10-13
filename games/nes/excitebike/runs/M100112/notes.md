Here it is, history in the making, and a toolAsissted.run exclusive. This is the culmination of a years-long attempt at dethroning Lord Tom and his amazing 17-year old Excitebike record. I was finally able to thanks to the holy trinity:

* Human Ingenuity (mine)
* Artificial Intelligence (Claude Fable 5.1)
* Exploration Bots ([https://github.com/ToolAssisted-run/jaffarPlus|JaffarPlus])

The 0.56s in-game improvement came as a combination of (a) finding out you can start a track at a precise frame, so that the first acceleration is counted at the first in-game time frame, and (b) a better ramp-touching strategy, found through extensive hybrid depth+breadth-first exploration.

%%SRC_EMBED
  ┌──────┬──────────┬──────────┬───────────────┐
  │ Race │   Mine   │ Lord Tom │    Result     │
  ├──────┼──────────┼──────────┼───────────────┤
  │ 1    │ 36.17 s  │ 36.19 s  │ ahead by 0.02 │
  ├──────┼──────────┼──────────┼───────────────┤
  │ 2    │ 37.80 s  │ 37.84 s  │ ahead by 0.04 │
  ├──────┼──────────┼──────────┼───────────────┤
  │ 3    │ 38.19 s  │ 38.67 s  │ ahead by 0.48 │
  ├──────┼──────────┼──────────┼───────────────┤
  │ 4    │ 41.96 s  │ 41.96 s  │ tie           │
  ├──────┼──────────┼──────────┼───────────────┤
  │ 5    │ 41.00 s  │ 41.00 s  │ tie           │
  ├──────┼──────────┼──────────┼───────────────┤
  │ 6    │ 31.32 s  │ 31.34 s  │ ahead by 0.02 │
  ├──────┼──────────┼──────────┼───────────────┤
  │ Sum  │ 226.44 s │ 227.00 s │ ahead by 0.56 │
  └──────┴──────────┴──────────┴───────────────┘

  Track 1. Race clock starts one frame, not two, before movement.
  Track 2. Race clock starts exactly when the bike can move.
  Track 3. Ramp pair caught with three hits instead of four.
  Track 4. No gain: tie, every ramp already caught without loss.
  Track 5. No gain: tie, every ramp already caught without loss.
  Track 6. One A-press dip makes three ramps fire earlier.
%%END_EMBED

Enjoy!
