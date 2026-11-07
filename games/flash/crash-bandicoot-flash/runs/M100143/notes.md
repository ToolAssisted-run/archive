This is a small project that I started because I wanted to debug Chimera's new frontend, so here we are. Shoutouts to 7eraser7, whose [run of this game from 2017](https://www.youtube.com/watch?v=3iwzX9QAR7U) is probably the whole reason this exists now.

# About the game

This is exactly what it sounds like: a Crash Bandicoot-themed Flash platformer from 2004 featuring five levels, a boss fight against Ripper Roo, and Crash’s usual moves of jumping, spinning, and sliding.

# Movement

### Basic movement

The speed values of basic movement are:

| Property | Value |
|---|---|
| Maximum running speed | 8 px/frame |
| Horizontal acceleration | 8 px/frame² |
| Gravity | 2 px/frame² |
| Normal jump impulse | −18 px/frame |
| Ice acceleration | 0.15 px/frame² |

Internally, Crash's horizontal velocity is stored in a variable called `speed`, while vertical velocity is stored in `grav`. An important detail is that horizontal movement is applied before the game updates horizontal velocity. Vertical movement works somewhat differently: gravity is added to vertical velocity before vertical displacement is applied. Collisions can also adjust Crash's position separately -- more on this later.

### Sliding

Sliding is significantly faster than ordinary running during its initial phase. The game uses a timer called `skidtime`, which normally starts at 8. The slide's horizontal speed changes depending on the remaining timer:

- `skidtime > 4`: Fast sliding, 18 px/frame
- `skidtime ≤ 4`: Slow sliding, 3 px/frame

### Slide-jumping

The main movement technique in this game is to cancel the slow phase of a slide by jumping. With the correct timing, this allows Crash to benefit from the initial fast-sliding phase without suffering from the slower phase that follows. To be clear, slide-jumping does not preserve the faster 18 px/frame movement speed indefinitely: once the transition to jumping is complete, Crash returns to the usual 8 px/frame speed. However, the frame on which Jump is pressed makes a considerable difference. The following table compares the horizontal distance traveled over 15 frames for different inputs, starting from the same conditions:

| Movement | Moved distance within 15 frames (in px) |
|---|---|
| Running | 120 |
| Sliding | 116 |
| Slide + jump 1 or 2 frames after | 122 |
| Slide + jump 3 frames after | 132 |
| Slide + jump 4 frames after | 142 |
| Slide + jump 5 frames after | 152 |
| Slide + jump 6 frames after | 147 |

In practice, the jump timing also depends on the surrounding terrain: for example, sometimes a jump has to be cut short because else, Crash would fall down a pit (jumping while over a pit does not work).

### Spinning

Spinning does not inherently reduce Crash's horizontal speed, making it possible to spin while maintaining normal running speed. What spinning mostly does in terms of movement is, if done in midair, to affect vertical speed: it caps downward speed at 3. One downside of spinning is that it introduces a rather long action cooldown which, in turns, delays subsequent movement such as slides.

# Other mechanics

### Level and obstacle cycles

Moving obstacles such as stompers have cycles that begin relative to when the level is loaded. The most relevant cycle in this run are the stompers in level 3 which have a 33-frame cycle (at 24 fps that’s 1.375s).

### Nitro crates

For some nitro crates there exists a one-frame window in which it can be destroyed by spinning it **without dying**. The game handles spin collisions and explosion damage through separate collision checks, which may explain why the crate can be destroyed without Crash being hit by its explosion. However, it does not work everywhere and I suspect the angle at which the crate is approached matters.

# Scripts

### Finding the game's movement variables

Chimera's Ruffle core exposes ActionScript game properties through Lua, which proved to be extremely helpful. I opened the swf file in [JPEXS Free Flash Decompiler](https://github.com/jindrapetrik/jpexs-decompiler/) and found a movie clip named “crash”, whose properties could be accessed directly through Lua even though they weren't listed in the property browser:

| Property | Meaning |
|---|---|
| `_root.crash._x` | Crash's X position |
| `_root.crash._y` | Crash's Y position |
| `_root.crash.speed` | Horizontal speed |
| `_root.crash.grav` | Vertical speed |
| `_root.crash.accel` | Horizontal acceleration |
| `_root.crash.maxspeed` | Maximum horizontal speed |
| `_root.crash.lag` | Action cooldown |
| `_root.crash.sliding` | Sliding state |
| `_root.crash._currentframe` | Current animation frame |

The `_x` and `_y` properties use Flash's internal coordinate unit, *twips*, where 20 twips equal one pixel. The other velocity values are already expressed in pixels per update.

### TAStudio custom logging

For TASing, I used a modified version of the fantastic [**TAStudio Logger Framework v0.95**, originally created for BizHawk 2.11](https://tasvideos.org/Forum/Topics/26848). The modified scripts I used read the game properties through Chimera's `game.get()` function and display the collected values as custom columns in TAStudio. This made it possible to see exactly how much distance each input produced and helped identify several of the movement behaviors described above. The three Lua scripts used during TASing are included as supplementary files:
- CrashColumns.lua: Logs movement properties directly into TAStudio.
- overlay_pos_speed_etc.lua: Displays Crash's movement variables on-screen.
- roo.lua: Monitors Ripper Roo's attack and health variables.

# Level comments

Finally, let us get into the actual TAS and what I found, things to note at each stage, etc. As an overview, the following table compares this TAS against the current RTA world record (cf. also the alternative “level-by-level comparison” encode above):

| Section | TAS (frames @ 24fps) | RTA | Timesave |
|---|---|---|---|
| Entering level 1 | 81 | 81 | 0 |
| Level 1 | 529 | 541 | 12 |
| Entering level 2 | 185 | 187 | 2 |
| Level 2 | 586 | 596 | 10 |
| Entering level 3 | 186 | 188 | 2 |
| Level 3 | 836 | 850 | 14 |
| Entering level 4 | 209 | 211 | 2 |
| Level 4 | 804 | 822 | 18 |
| Entering level 5 | 187 | 188 | 1 |
| Level 5 | 632 | 654 | 22 |
| Entering Ripper Roo | 187 | 189 | 2 |
| Ripper Roo | 1358 | 1358 | 0 |
| Total | 5780 | 5865 | 85 |

Total timesave:85 frames = 3.54s

### Level 1: Peaceful Walk

[tbd]

### Level 2: The 51st crate

[tbd]

### Level 3: Snow Joke

[tbd]

### Level 4: Crash Smash

[tbd]

### Level 5: Final Cutter

[tbd]

### Boss: Ripper Roo

Ripper Roo's boss fight is almost entirely controlled by internal countdowns and predetermined attack sequences. The boss uses a variable called “kicker” to determine when the metal crate will appear, while “count” controls when the next attack begins. As Roo loses health, the pattern changes, requiring more dangerous crates to be thrown before the next metal crate.

I investigated whether positioning, earlier spins, or manipulating the thrown crates could cause Roo to take damage sooner. But despite various experiments his HP always decreased on the same frames. A comparison with the RTA world record showed that the fight matched exactly, frame-for-frame.

# Final comments

## Possible improvements

There may still be room to optimize individual slide-jumps, especially their initiation and cancellation frames. Since some jump timings cause backward displacement during the transition, comparing alternative timings could reveal small improvements.

More generally, further improvements may be possible by optimizing movement and obstacle timing within individual levels.

## Open questions

- **Slide cooldown:** What is the exact earliest possible second slide after a normal slide compared with a slide-jump? The interaction between `lag`, `sliding`, `dhold`, and animation state could be investigated further.
- **Nitro interaction:** Is the one-frame safe Nitro spin reproducible in other positions or situations, and can it lead to further shortcuts?
