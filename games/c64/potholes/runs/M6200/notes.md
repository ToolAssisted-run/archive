> **Imported**
> This run was originally published at https://tasvideos.org/6200M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Potholes (Compute's Gazette)
A symmetrical city map provides the basic layout for the game. The streets are filled with potholes. Two cars, each a differentl color, are parked at opposite corners of the city. You, the player, a public-spirited citizen, are determined to fill the potholes by driving through the streets. For each pothole you fill, you gain five points. The score is displayed and constantly updated as you obliterated the potholes.

The article for this game can be found on page 64 of [https://archive.org/details/1983-09-computegazette/page/64/mode/2up|Compute's Gazette Issue 3 (September 1983)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 84th TAS from this series. 

When I first started getting this subscription, my uncle had back-ordered a number of issues. This was one of them. When I saw Potholes, I did get excited...mainly because this game looked like Pacman (You have to remember, my parents didn't buy me many things for it, just the magazine...so I was excited to try it). 

!!Bug Alert!
For the first time, I ran into a game which had a typo on the disk. The bug was a graphical issue, where the street cars looked like the letter "B". I was puzzled as to why the company left it this way, but I remembered that Compute's Gazette didn't have disks for the first few issues. I believe they started in January 1984. So...where did these first 6 disks come from? It appears that someone was dedicated to reproducing a "Psuedo" version of what Computes' Gazette would have released. Well, whoever did this...created a typo. 

In the program listing, page 117, you will see line 20030...which contains a data statement. 

On the disk, the line reads:
;20030 DATA -40, 27, 40, 28, -1, 2,1, 30

On the magazine release, it reads:
;20030 DATA -40, 27, 40, 28, -1, 29,1, 30

The difference of 2 vs 29, displays the wrong character for a car driving left. Instead of the "Left Facing" car, you will see a letter "B". So I proceeded to fix this by including a "Patch" in my inputs to type this line in correctly. I really didn't know what the problem was until I decided to scan the for the difference. Well, after a year of delaying this game...I just recently found the problem and proceeded to finishing this TAS up.

!!Game Difficulty and Ending
There is no selection of difficulty. After the completion one round, the game repeats over and over without any new content or increase of speed.

!!Effort In TASing (Not BOTed)
Upon correcting the game's code, I finally sat down to get another edition to the TAS Library of Compute's Gazette games. As usual, I played the game through so that I can discover how the game operated at a frame-by-frame level. After the first completion, I proceeded to re-do it 3 more times. Below are some tricks that I learned that helped to optimize this game:

*Don't hold an input: Because this is a B.A.S.I.C written game, the game's code is "Interpreted" as it runs. This means that you need to keep from loading up the CPU with nonsensical inputs. So, finding the right frame to press will help speed the game up tremendously. In fact, the difference of applying this technique helped to save 215 frames.
*Routing: This is an obvious tactic, but it wasn't easy to get a straight forward result. I say this because routing was interfered by the approach of the "Commissioners" car. For the first and second attempts...I was trying to get away and avoid the car. Eventually, I found a new tactic that helped to get around this problem. See below.
*Car Collision Glitch: Because the game moves each car one block at a time, you can time your "Pass-Through" at a specific moment and avoid being detected. This usually occurs when the cars are being moved to the next block at the same time. This occurrence is not always available, as two cars move at different speeds. It only happened to be in the right place at the right time...upon finding the correct route, where I was able to make use of it.

!!Human Comparison
Nobody seems to know this game or have played it. :(
