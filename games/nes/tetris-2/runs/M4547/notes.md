> **Imported**
> This run was originally published at https://tasvideos.org/4547M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

[module:youtube|v=AO9jNfUthxE]
[module:youtube|v=mheN6ZZzAhc]

!!!Tetris 2 (Game Description by Moby)
Unlike the original Tetris, Tetris 2 has you clearing the field of blocks in a different way. Each play field starts with different colored dots (in this case red, blue and yellow), with one of each color flashing. The blocks are made up of the same three colors, and by matching blocks of the same color over the top or to the side of the dot will clear the dot and those blocks from the screen. If you clear a flashing dot, all the corresponding dots of the same color will be cleared. To complete the round just clear the dots, not the blocks themselves.

!!!Tools Used
*Bizhawk 2.5.2
*Nametable Viewer (Identification of blocks on the playing area)
*Lua (BOT written to manage the RNG controlling inputs)

!!!Approach to TASing
In July 2019, I started manually TASing Tetris 2. After about 5 months and starting over multiple times, I realized that the level of optimization was nowhere near the level that I knew could be. During Thanksgiving, of the same year, I decide to BOT this game. After one week of writing, I got the first version of this BOT working and automating this painfully slow process. On Dec 2nd 2019, my life got a lot easier and way more exciting...as the BOT was finally being used. It didn't take long before I started seeing incredible cuts. Over the next few months, the BOT was rewritten for a number of reasons. Of those reasons...efficiency, accurracy, and increased functionality were necessary in order to make this TAS optimized to the fullest of my understanding. In the end, my BOT went through 4 more iterations to end up providing me everything that I needed. 

!!!RNG Manipulation
Before I present the BOTing effort, it is important to understand how RNG works in this game.
RNG is controlled by any input that is received before the board is cleared out. These include Left, Right, Down, A, and B. Notice that Up is not included, as it doesn't affect anything on the screen. Now, once the last flashing block starts to explode, you no longer can make any inputs to affect RNG...except for Left. So from my analaysis, you can only affect RNG up to 44 frames after the last block connects. 
The second RNG that you can control, is a delay when pressing "Start" at the beginning of each round. This only affects the drop provided. For any subsequential drop, you can alter it by pressing "Start" to pause (when it shows for one frame on the screen), only to unpause to get your new piece. The delay between the two presses will control the piece you get. Another way to change the drop, with this method, is to make input presses...which will further manipulate the drop seen on unpause.

!!!Re-record Count Explanation
As you have guessed, this TAS was BOTed and the only reason why the re-record count is so high. But this was not done on a single instance; however, the total was derived mathematically...according to the inputs applied. I want to make sure all my information is correct, so I calculated these to reflect the inputs that were applied to get the results that I was looking for. Anything past that, was ignored. So the count is extremely conservative, yet very reflective of the work done in order to produce this movie.

!!!BOT functionality (List of notable functions that were used to help produce this movie)
*Template Designing: Used to produce and save RNG altering inputs. Basically, I made use of TASStudio to help me design the inputs that were feasible for a given round that had already been solved. By storing the original inputs over to the Player 2 side, the difference between "Solving" and "RNG" inputs could be determined for resetting inputs for continued testing.

*Input Reproduction: The BOT is fitted with a number of functions that apply the inputs, from these templates, in a binary application. Whether it was done manually or automated, this was the most time consuming part of the entire TAS.

*Pattern Detection: A lengthy routine was written to check for specific layouts that would allow for fast solving. As it turned out, a number of checks were needed to determine if the pattern fell within my search criteria. For one, the layout of flashing blocks needed to be in an arrangement that allowed for the quickest solves. Another determination, on any good pattern, was to check if the blocks were locked from good solving drops. There was a high percentage of patterns that had good flashing block layouts, but were blocked from making a fast solve. Coding out a "Wall-Follower" routine, eliminated a ton of these unusable patterns and allowed the BOT to continue on finding anything that required my attention.

*Pattern Storage: An external file was built as a storage area to provide information for the BOT to ignore occurances of unwanted patterns. Basically, once I had established a best attempt with a pattern, other patterns would often show up from time to time that would out perform my attempts, up to that point. When this would occur, I didn't want the BOT to pull up obsoleted patterns again...so it was fitted with an exclusion routine to prevent it from showing up again on future detections.

*Starting Point: Sometimes problems occurred, deep within RNG application, that would force me to stop and restart. Instead of running the BOT through the tested inputs again, I wrote a routine to determine where it left off. Of course, this would only work if the project file was being saved (which was done after the clearing of Left/Right inputs).

*Key Commands: Set up, storage, initiation, and exclusion commands were fixed for easy and quick access to keep the BOT running with little interaction.

!!!Multiple Instances
As I learned more and more about RNG, I discovered ways to delegate the work so that I could find patterns faster. After having purchased a new machine to handle even more processing, I ended up running 16 instances...which were identifed by certain inputs. Below is a list of terminology that I used to denote what inputs applied for use:
!!Templated Inputs
*Left/Right Inputs: these were the least siginificant input. This would be the equivalent of bit 0 of the binary application of these templated inputs.
*A/B Inputs: A and B rotate the pieces. If I apply one, I have to have the other to balance out the solve so that it would continue on uninterrupted. This would be the equivalent of bit 1 of the binary applications of these templated inputs.
*Down Inputs: The input that is used to speed up the fall of a piece. This is the least destructive input, yet provides even more help in combination with the previous mentioned inputs. This is the equivalent of bit 2 of the binary application of these templated inputs.
!!Instance Identifying Inputs
To help differentiate each instance running, inputs were added at the bottom of each solve...which would be separated by a number of frame from the "Templated Inputs". This made it possible to have patterns show up, that wouldn't show up in other instances. For example, Instance A would not have any extra inputs at the end; however, Instance B would have either a "A" or "B" to start off with at the last frame of input. For the 16th instance, there would 15 alternating A/B inputs at the end.
!!Cycling Inputs
After the last input of a round can be made, only "Left" can made further changes. Since this was not a normal situation, it was used to boost the RNG even further...providing a substantial range of combinations to apply. This would be the equivalent of Bit 3...for a total of 4 bits of binary application.

!!!Round 34
I had a concept to only use one drop for sovling each round. Well, that hope ended around 34...where I left a long delay to gain access to a drop that would do so. Starting with Round 35, things started looking better again for a long time. Eventually, this situation would vanish from ever being seen again. Well after 34, I found the second fastest pattern and drops that would keep my run maintaining high optimization. By this time, months has already gone by and it was very painful to think of redoing again for about 100 frames lost.

!!!Special Thanks
*DrD2k9 for the talks on how to speed this up. Basically, he helped me to understand my CPU...which was a 4 core processor, at the time. When I bought it in 2011...I didn't fully understand what I had bought. Now that I do, he opened up my understand with a term called "Affinity". After designating a core for each instance (2 threads for bizhawk), I noticed the speed increased slightly by about 10 to 15 frames each.
*Worsel for talking me into buying a new machine, that we called the "Beast". This new machine helped me to run 16 instances and speed through finding these patterns much faster. It was purchased in March of 2020 and used all the way through to October 23, 2021. For those of you who are wanting to know...it was bought from NZXT and contains a water cooled Ryzen 3950X, which has a base clock speed of 3.5 GHz. Instead of overclocking it, I did some tweaks to pull it up to about 4 Ghz, which ended up giving me about 170 to 180 fps.
*feos for options on how to speed this up as well...even though his idea didn't pan out, it was worth a try.
*Nach...yes Nach! Sometimes those posts in our forums actually influence others to buy needed equipment. So yes Nach, I did break down to buy a good UPS, which kept my BOT running during multiple power outages. There is no telling how much time this saved. Maybe around 15 days of being down without knowing.
