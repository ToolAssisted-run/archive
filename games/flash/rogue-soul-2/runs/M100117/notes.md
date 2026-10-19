|| Field || Details ||
| Game | ''Rogue Soul 2'' (2014) |
| Developer | Soulgame Studio |
| Category | Any% |
| Time | 10:34 |

!! Game Overview
The game consists of 10 main campaign stages played strictly from left to right, culminating in boss encounters. Aside from standard auto-runner platforming mechanics like running and double-jumping, your character has a few primary actions: melee slashing, a slide, a parachute glide, and throwing daggers.

!! Mechanics and Glitches
Normally, sliding is used to duck under low hazards, the parachute preserves hang time over wide pits, and daggers dispatch guards from a distance. In a TAS, the entire movement model falls apart thanks to the interaction between sliding and dagger throws:

* __Dagger-Slide Cancels:__ Activating a slide interrupts the recovery animation of a dagger throw, and throwing a dagger instantly cancels out of a slide. By chaining these two inputs alternately on alternating frames, momentum stacks exponentially rather than capping at top running speed.
* __Collision Clipping:__ At peak velocity, sub-pixel displacement per frame exceeds the width of standard collision bounding boxes, letting the character phase straight through closed gates, barrier obstacles, and enemy hitboxes without stopping.

!! Future
If someone looked hard enough, tighter sub-pixel alignment and even more aggressive clip setups could easily optimize this further, but for me it was just a fun little project. A 100% category (clearing all 90 stage objectives) or an all-boss arena run would be a lot of fun as well.
