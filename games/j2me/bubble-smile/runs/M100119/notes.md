Bubble Smile is a puzzle game where you match 3 emoji faces in a honeycomb-structured field. This game was bundled in old Samsung cellphones, like SGH-X100.

! Framerate choice
The limit of 3 frames per second (FPS) was picked up, because I found it the most authentic. The real phones operated at around 4 FPS, with slow-downs to 2 FPS when the game had to calculate where bubbles should fall, especially when a massive smiling effect happens. In a J2ME emulator, such slow-downs are not emulated.
Like most old J2ME games, it's sensitive to the framerate. If it runs at around 10 FPS, it skips most of the played sounds and it may freeze at some point because of race conditions happening in FreeJ2ME+.

! Difficulty level
The game is configured for a skilled play for both Timed and Skill modes. Having TAS tools, you can keep playing until you get bored. You need to avoid combos to lose, which is not easy to do, as well as to manipulate long combos.

! Game mechanics
There is not much random in the game to manipulate. The way bubbles fall down is predictable to some degree. I can't tell what makes a massive smiling effect.
Of course, you can unpack a .jar and pass all .class files to AI to get more information on how the game runs under the hood, but I didn't have any intention to make like WOW-sort of TAS, because the game isn't very variative and gets boring because of the slow pace. I think 15 minutes is enough.

! TAS verification
In case it matters, the game JAR was taken from a large archive you'll probably spend a lot of time downloading and searching through.
