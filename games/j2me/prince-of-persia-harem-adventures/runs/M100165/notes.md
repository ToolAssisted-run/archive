In my attempt to categorize Prince of Persia mobile games I came across this peculiar black-and-white Nokia version of Prince of Persia: Harem Adventures, so I decided to give it a go.

# Movement

### Basic movement

Movement in this game is controlled entirely by four buttons (notably, there is no combat in this version of the game):

- `2`: Jump
- `4`: Move left
- `6`: Move right
- `8`: Hang down from a ledge

There are three types of jumps:

1. Vertical jump: When the Prince is standing still directly below a ledge
2. Standing jump: When the Prince is standing still and is not directly below a ledge
3. Running jump: When the Prince has horizontal momentum

The speed values for basic movement are (internally, the game uses fixed-point coordinates, where 256 internal units equal one pixel):

| Property | Value |
|---|---|
| Starting to run | 2 px/update |
| Running | 4 px/update |
| Running jump (initial boost) | 5.78125 px/update |
| Standing jump (horizontal movement) | 3.75 px/update |

### Running jumps

Running jumps are 7-frames faster than ordinary running because initiating a jump with non-zero horizontal speed causes the game to skip the first three frames of the jump animation and temporarily assigns a horizontal speed of 5.78125 pixels per update (compared with the normal running speed of 4).

### Chaining running jumps

The most important movement technique is chaining running jumps together. Rather than completing a jump and returning to a standstill, the Prince can transition directly back into full-speed running. The crucial condition is the current jump animation frame: once the animation reaches index `7`, the game checks whether the Prince's facing direction is being held. If so, it changes directly from the jumping state (`E = 4`) to the running state (`E = 2`), bypassing the normal running-start animation. This allows the following sequence:

1. Run while holding, e.g., `6` (Right)
2. Initiate a running jump with `2` (Up)
3. Briefly release `6`, then hold it again before the jump finishes
4. When the jump animation reaches frame `7`, transition directly into running
5. Repeat

This works because there is no conventional jump cooldown in the movement code; the minimum time between running jumps is instead determined by animation progression and input timing.

# Other mechanics

### Fall damage

Fall damage is determined by a counter which increases during falling updates and is checked when the Prince lands.

| Fall counter `R` | Result |
|---|---|
| 0–9 | No damage |
| 10–13 | Lose 1 health point |
| 14 or higher | Lose 3 health points (fatal) |

### Cutscenes and dialogue

While cutscenes seem to be unskippable, dialogue has two ways to be skipped: either advance it one textbox at a time by pressing `2`, or press the phone's Send/Call button to skip all remaining textboxes at once.

# Scripts

### Finding the game's movement variables

To investigate the movement mechanics, I decompiled the game's JAR file using [CFR](https://www.benf.org/other/cfr/). While the classes are obfuscated, the relevant movement logic is found primarily in `a/b.java`, with input handling in `a/k.java` and animation handling in `a/o.java`. The most important variables I identified are:

| Variable | Meaning |
|---|---|
| `b.E` | Current movement state |
| `b.ab` | Horizontal movement |
| `b.Z` | Vertical movement |
| `b.R` | Fall-duration counter |
| `b.am.long` | X position |
| `b.am.goto` | Y position |
| `b.am.y` | Current animation frame |
| `b.am.p` | Counter within the animation frame |

The animation variables `y` and `p` were especially helpful for optimizing chained running jumps. During a running jump, the animation begins at frame `3` and progresses toward frame `7`, at which point it becomes possible to transition directly back into running.

### Memory addresses and Lua logging

One complication is that the Java Heap addresses are not guaranteed to remain constant; they can change when the game allocates objects or the garbage collector moves them, particularly when starting a new level. Fortunately, the relevant variables were found at consistent offsets from two base addresses: the address of movement state `E` and the address of the player's X position. This made it possible to create a simple CSV containing the starting frame, level, and the two base addresses for each level (attached to this submission). A Lua script -- also attached to this submission -- then calculates all the other watched addresses automatically and displays the player's movement state, X/Y coordinates, horizontal and vertical movement, current animation frame, animation counter, and fall counter directly on-screen. Moreover, it adds these values as custom columns in TAStudio.

# Level comments

| Level | In-game time |
|---|---|
| 1 | 0:08 |
| 2 | 0:14 |
| 3 | 0:37 |
| 4 | 0:40 |
| 5 | 0:46 |
| 6 | 0:49 |

### Level 3

Waiting before the chomper at 0:48 video time feels painful but I couldn't find a way to beat this cycle.

### Level 5

If you could get to the lower ledge at 2:00 video time you'd save roughly 12 seconds. However, I couldn't get any of the ways the game code exposes to grab ledges below you to work here.
