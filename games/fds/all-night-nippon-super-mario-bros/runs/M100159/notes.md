This is the fastest ACE TAS of All Night Nippon Super Mario Bros., beating the previous run by 8BitPlumber and others by 88 frames (about 1.46 seconds).

Released by Nintendo in 1986, All Night Nippon Super Mario Bros. is a special edition celebrating the 20th anniversary of the Japanese late-night radio show All Night Nippon. Some enemies and the characters you rescue were redesigned to resemble personalities from the show.

The earlier levels in this run are similar to SMB1, while the final level, 8-4, is similar to SMB2J. The same looping maze corridor allows the long Firebar to be loaded twice, making ACE possible just as in SMB2J. However, there are some differences: the enemy ID used for ACE in this game is #$83, so it needs to be loaded into a different enemy slot. Also, the ending does not feature a long Firebar with glitched hitboxes.

The main improvement comes from skipping the Fire Flower. After extensive testing, I developed a fast game-ending payload that works with small Mario. Without fireball X coordinates to use as a pointer, I instead used $08 and $09 (the frame counters), triggering ACE with a single frame of controller input as Mario dies from touching a Firebar.

Finding this was also rather lucky, since constructing a one-frame game-ending payload is very difficult. I initially developed a three-frame payload, then created a two-frame payload by manipulating Mario's Y position. However, both required manipulating the screen position, so neither was as fast as this one-frame payload.

This is also the first official SMB TAS to beat the game while dying.

Thanks to TomasPlays for helping me test 8-4 and working on 4-1, 8-2, and 8-3, and to Asumeh for adding entertainment to 1-1, 1-2, 4-2, and 8-1.

Authors: HappyLee, TomasPlays, Asumeh
Rerecords: 10200
TAS time: 05:08.23
