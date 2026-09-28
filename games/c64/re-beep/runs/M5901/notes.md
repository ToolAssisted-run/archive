> **Imported**
> This run was originally published at https://tasvideos.org/5901M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Re-Beep (Compute's Gazette)
"Re-Beep" is a Simon-Type game. If you are not familiar with it, the the following descritpion will help you understand.

;Simon is an electronic game of short-term memory skill invented by Ralph H. Baer and Howard J. Morrison, working for toy design firm Marvin Glass and Associates,[[1] with software programming by Lenny Cope. The device creates a series of tones and lights and requires a user to repeat the sequence. If the user succeeds, the series becomes progressively longer and more complex. Once the user fails or the time limit runs out, the game is over. The original version was manufactured and distributed by Milton Bradley and later by Hasbro after it took over Milton Bradley. Much of the assembly language code was written by Charles Kapps,[[citation needed] who taught computer science at Temple University and also wrote one of the first books on the theory of computer programming. Simon was launched in 1978 at Studio 54 in New York City and was an immediate success, becoming a pop culture symbol of the 1970s and 1980s. -Wikipedia

The article for this game can be found on page 58 of [https://archive.org/details/1983-10-computegazette/page/n59/mode/2up|Compute's Gazette Issue 4 (October 1983)]

!!Why TAS This Game?
The continuation of TASing games from my all-time favorite magazine, Compute's Gazette. This makes my 63rd TAS from this series. 

I don't think I ever played this one. I was aware of it, but wasn't interested in it. The early games had a certan attraction, but my attention was being grabbed more by the newer magazines.

I like the concept of this game, but i would never sit down to play it. The only reason I am even touching this game is to complete the library of this magazine series.

!!Game Difficulty and Ending
The only difficulty here, is the selection of speed. I have chosen the fastest speed, not because it makes it harder, but to help speed up the game.

The ending is a bit odd. Remember [8764S|The Viper]? Well, the same thing happens here, where the game breaks due to the use of a signed 8-bit value being used. So this means you can only score a maximum of 127 points, which afterwards...the game displays "?STRING TOO LONG ERROR". This occurs because the variable used for the play back, it set up as a signed 8-bit value....giving us a max value of 127.

!!Effort In TASing (BOTed)
Originally, I was manually working on this game. After about 20 rounds, I started seeing that this was going to be a waste of my time. So I wrote an AI BOT that would scan memory for certain conditions to play it automatically. AFter about 30 minutes, I had a BOT written specifically written for this game...based off the architecture of my AI lua script. I think this had to be the most satisfying thing to watch, as I only spent 10 minutes cleaning up any errors that I ran across. Once I fixed the last problem...the game ran for about 2 hours to produce this TAS.

For the final round of inputs, I manually adjusted them to be buffered, saving 362 frames. This affected the last 11 responses to complete the final pattern. How this was accomplished was simply cutting back all the frames, between inputs, until the game no longer completed the round. You might be asking..."Why didn't you buffer the entire game?". Buffering, for this game only, will only work on the last round...since it doesn't make the game play faster. So letting my BOT detect when the game was ready to accept inputs, was the safe thing to do, until the end where it doesn't matter.

When writing my BOT, I had to study the game to find a memory address that will help me understand what is going on in the game. Well, that address end up being 0x49. Below are the values that I found that I used to program my BOT to perform the work:
*Value = 0x83: Computer was displaying one of the 4 position on the screen, for watching. Each time this value was presented, I would record the "lit" item for playback later...when the CPU was ready to accept inputs.
*Value = 0x8A: Computer turned off the current position being displayed, during the watching segment. This was important for me to capture so that i will know when to get ready for the next step.
*Value = 0x91: Computer was ready to accept a non-buffer input. Basically, it's ready for user input where the pattern must be reproduced. When i see this value, I play back one position at a time.
*Value = 0x98: After I apply a position from the computer generated sequence, this value will tell me when that display is not longer lit up as white. At this point, I know when to get ready to play back the next position. This is when I start scanning for 0x91 (the previous value) to know when to apply the next position in the sequence.

The other details, were identifying which position was lit up. This was easily accomplished by scanning the screen color addresses, for the color white. When location 0x49 was populated with 0x8A, that was the moment the CPU was playing back a position. At that time, I scanned the 4 positions to identify which one was being displayed.

Until I decided to BOT this, I had spent days...accomplishing a few rounds each day. This became tiresome and prompted me to stop until I can figure out how to do this with a script. It was until [user:DrD2k9] TASed [5860M], I started to think that this game should be treated the same way.

!!Human Comparison
None to be found. Are you serious? Nobody played this game? LOL
