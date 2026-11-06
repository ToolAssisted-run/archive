This movie is 1 frame faster than [NES Super Mario Bros. 2 "warps" by Aglar & andrewg in 07:41.157](https://tasvideos.org/1724M).

Although the Aglar & andrewg movie is excellent, there is a tiny mistake in the 7-1 Birdo fight, allowing the 1-frame improvement.

**AI-written explanation:**

**Stage 7-1: Detailed Breakdown of the 1-Frame Improvement**

In the previous TAS, Stage 7-1 concluded at frame 22,426. In this TAS, Stage 7-1 completes at frame 22,425, saving 1 full frame. This stage contains the only gameplay-shortening breakthrough in the entire run. To understand how this frame was saved, one must examine the entity interaction routines in Area 4 (Boss Room, Subsegment S44) across Bank 0 and Bank 1:

**1. The Boss Room Geometry and Hawkmouth Countdown Mechanic:**
In Area 4, Red Birdo spawns at Column 12, Row 8 (X = 1.183, Y = 0.080) with 3 hit points (ram[$0465 + 5] = 3). A single Mushroom Block sits at Column 11, Row 6 (X = 1.176, Y = 0.096). Crucially, unlike earlier stages where Hawkmouth spawns off-screen and must be scrolled into view after the Crystal Orb is plucked, Area 4's Hawkmouth (Slot 4: id = $43 at X = 1.144, Y = 0.158) is already resident in active object memory. The game engine's boss-cleared routine at Bank 0 $B540 initiates the 143-frame Hawkmouth opening countdown on the exact frame Luigi finishes lifting the Crystal Orb (Slot 2: id = $44), setting ram[$04C4] = $8F. Luigi reaches the Hawkmouth entrance coordinates (X = 1.147.00, Y = 0.176.80) several frames before Hawkmouth finishes opening, waiting at vx = 0 for the mouth to unlock. Therefore, the stage exit frame is directly and strictly determined by the exact frame on which the Crystal Orb lift completes. Saving a frame on the Crystal Orb lift saves a frame on the entire stage.

**2. The Mechanics of the 3-Hit Birdo Defeat:**
To pluck the Crystal Orb, Birdo must be defeated. Defeating Birdo requires 3 hits using the lone Mushroom Block (Slot 6: id = $39).
- Hit #1: Luigi throws the block rightward at frame 21,901. The block strikes Birdo on frame 21,934 (hp: 3 -> 2) and rebounds, coming to rest at Column 11, Row 6 (X = 1.176, Y = 0.096) on frame 21,935.
- Hit #2: Luigi must lift the settled block a second time (Lift #2), throw or drop it onto Birdo for Hit #2 (hp: 2 -> 1), and trigger damage-shrink invulnerability (mode 50 = 8) to overlap Birdo.
- Hit #3: Luigi must lift the block a third time (Lift #3) and throw it to kill Birdo (hp: 1 -> 0), which spawns the Crystal Orb.

**3. Why the Previous TAS Lost 1 Frame on Lift #2 and Drop #2:**
In the previous TAS, Luigi landed on the Mushroom Block at frame 21,934 with position X = 1.172.C0, vx = 24. Due to horizontal momentum and subpixel positioning, the previous TAS could not initiate Lift #2 until frame 21,938 (X = 1.179.E0, vx = 12).
A block lift in SMB2 requires exactly 25 frames ($0050 = 2). Starting at frame 21,938, Lift #2 concluded on frame 21,963 at Y = 0.064.90. Luigi then fell under standard gravity for 6 frames (frames 21,964 through 21,969).
On frame 21,969, Luigi's vertical coordinate was Y = 0.065.80, while Birdo's top coordinate was Birdo_Y = 0.073.
When player vertical coordinate touches an enemy, the collision resolution routine at Bank 0 $BAD5 evaluates the relative Y distance:
If Luigi touches Birdo when Luigi's feet are within the upper head-collision window, the engine branches to the head-landing handler (LBB2E), snapping Luigi's vertical position directly to Birdo's top: Y = Birdo_Y - 13 = 73 - 13 = 60 (Y = 0.060.80).
When the 30-frame damage-shrink timer ($0050 = 8) expires, Birdo has settled onto the floor at Birdo_Y = 0.080. If Luigi was snapped to Y = 60, the difference (80 - 60 = 20) satisfies the head-contact threshold again, snapping Small Luigi upward to Y = 0.052.50—suspending him 12 pixels above the settled Mushroom Block at Y = 0.064.20 and making it physically impossible to lift the block for Hit #3.
To avoid this fatal head-snap, the previous TAS was forced to delay dropping the block until frame 21,970 (when Birdo had descended to Birdo_Y = 0.074), pushing the start of the damage-shrink to frame 21,971, Lift #3 to frame 22,009, the Birdo kill to frame 22,035, the Crystal Orb pluck to frame 22,037, and the stage completion to frame 22,426.

**4. How This TAS Solves the Collision Geometry:**
This TAS completely bypasses the head-snap limitation through a four-part mathematical sequence:
- Frame 21,904 Air-Tap (Neutral + B): While the Mushroom Block is in flight toward Hit #1, Luigi executes a 1-frame neutral-direction air tap (0x02 instead of 0x82). This move delays horizontal acceleration by 1 frame, shifting Luigi's landing position at frame 21,934 by exactly 2 subpixels to the left (X = 1.172.A0 vs. 1.172.C0).
- Early Lift #2 Initiation (Frame 21,936): With this subpixel alignment, Luigi's bounding box satisfies the block-lift overlap condition two frames earlier. Luigi presses Left + B (0x42) on frame 21,936 (versus frame 21,938), beginning Lift #2 two frames ahead of the previous TAS.
- Seven-Frame Fall and Lateral Deceleration: Because Lift #2 begins at frame 21,936, it finishes at frame 21,961 (Y = 0.064.90, vx = 18). Luigi now has 7 full frames of falling and braking (holding Left, 0x40, across frames 21,962 through 21,968). This movement decelerates horizontal speed from 18 down to 4 (vx: 18 -> 16 -> 14 -> 12 -> 10 -> 8 -> 6 -> 4) while extending Luigi's vertical fall, bringing him to X = 1.182.A0, Y = 0.068.10, vx = 4, vy = 14 at the end of frame 21,968—exactly 2.3 pixels lower than the previous TAS.
- Side-Collision Damage on Frame 21,969: On frame 21,969, Luigi presses Right + B (0x82). Because vx = 4, dropping the block imparts a horizontal velocity of 4 + 2 = 6, which is below the threshold of 8 required to throw; the block drops purely vertically at X = 1.198, dealing Hit #2 on frame 21,969 on the exact first frame Birdo satisfies the floor-fall condition (Birdo_Y = 0.073 + 24 = 97 > 96). Simultaneously, Luigi advances to X = 1.183.00, Y = 0.069.10. Because Y = 0.069.10 is only 3.9 pixels above Birdo_Y (0.073), the collision routine at $BAD5 does not take the head-landing branch; instead, it registers a direct side collision. Luigi takes damage without snapping to Y = 60.

**5. Downstream Execution to the Hawkmouth Exit:**
Because damage-shrink starts 1 frame earlier on frame 21,970, mode 50 finishes on frame 21,999. Small Luigi lands directly on top of the settled Mushroom Block at Y = 0.064.80. Accelerating rightward across frames 22,000..22,007 reaches X = 1.186.80, allowing Lift #3 to begin on frame 22,008 (1 frame earlier than the previous TAS's frame 22,009). Luigi throws the block on frame 22,034 to kill Birdo, plucks the Crystal Orb across frames 22,036..22,060 (1 frame earlier), and Hawkmouth opens on frame 22,203 (1 frame earlier). Luigi enters Hawkmouth at frame 22,204, initializing Stage 7-2 at frame 22,425 (versus 22,426)—locking in the 1-frame improvement.
