> **Imported**
> This run was originally published at https://tasvideos.org/5893M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!The Frantic Fisherman (Compute's Gazette)
Idly floating in your boat, waiting for the fish to bite, is a fine way to relax. In this game, however, an angler's dream becomes a nightmare when sharks get the notion that you're the bait and thunderclouds threaten you with gargantuam raindrops. It's good you remembered to bring your shark swatter and an umbrella.

The article for this game can be found on page 58 of [https://archive.org/details/1984-06-computegazette/page/n61/mode/2up|Compute's Gazette Issue 12 (June 1984]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my __64__th TAS from this series. 

This was a packed magazine and I just can't remember what I went for first. I do know this...it was during the time before my C64 arrive, so I quickly started working on my Vic-20 instead. I really liked this game because it had really good graphics (Vic-20 version only). As for the others, in that issue, they were not as good...yet they had better game play.

As I played this game, I quickly got bored with it...as it became very monotonous and I discarded it very quickly.

!!Game Difficulty and Ending
There is only one kind of difficulty available here, and that is the speed of which the game plays. To change it, you just select one of the "Function" keys. I choose the fastest selection (F7), because it makes for the fastest TAS.

!!Effort In TASing (BOTed)
After I found out that a "Maximum Score" run was the only possibility, I decided to BOT this game. There was no way that I was going to put tons of time in crafting these inputs. Especially since I saw that it was going to be hours long. So...I modified my AI architectured BOT to sense when to apply inputs for a given situation. Every input of this game was created by this BOT, which took about 4 to 8 hours to run (I don't know, because I wasn't in front of it and I was too lazy to add a time stamp of completion). Many problems were detected, which meant I had to go back and re-run this a few times. Once I got this to a submit-able state...I noticed another detail that needed to be addressed.

This game started breaking, the longer it ran. The score started changing colors, the "Lives" indicator was pumping out PETSCII characters, and the screen started to disappear. Well, I realized that when the "Lives" indiator rolled over from 255 to 0 (being an 8-bit value)...the game ended, as if it detected no lives remaining. This was when I discovered that the maximum score can change, if I were to loose lives in preventing this glitch from occurring. [user:DrD2k9] and I talked about this and he had a statement that I think covers this situation. Please wait for his comments in the discussion thread.

!!Human Comparison
Please note that this run was done on normal speed.
[module:youtube|v=gAq51gfj5Jk]
