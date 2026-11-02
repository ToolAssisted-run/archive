> **Imported**
> This run was originally published at https://tasvideos.org/4102M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

* Heavy luck manipulation
* Notable improvement

I became interested in this game because the [2180M|currently published movie] by Tool23 is one of the oldest movies on the site that hasn't been obsoleted. The movie is not officially one of [Forum/Topics/16687|The First 500] because it was rejected and sat in cold storage for seven years before it was reevaluated for inclusion in the Vault. But Tool23 submitted it on 5 October 2005, and so it would have been publication number 420 or so if it had been published back then. I figured that it would be easy to obsolete such an old and flawed movie (improved by 4788 frames / 79.7 seconds). But I didn't expect that trying to make a perfect version required nightmare-level luck manipulation.

The hardware speedrun record is listed as [https://www.speedrun.com/who_framed_roger_rabbit_nes/run/zx4jvk8y|3:56.50] by Chambers. But hardware speedrun timing goes from when the player gains control of Valiant to when Judge Doom explodes. Thus, converting to TAS timing requires adding over 13 seconds. And so the speedrun time is about 4:09 after conversion to TAS timing. There is also a TAS on YouTube that is labeled as [https://www.youtube.com/watch?v=vt1OKpKasGY|3:53] by threecreepio, but that TAS also uses speedrun timing rules, and so it would be about 4:06 using TAS timing. Here’s a summary table:

||Player||Type||Date||Speedrun timing||TAS timing||
|Tool23|TAS|5 Oct 2005|4:55|5:08|
|Chambers|Speedrun|3 Feb 2019|3:56|4:09|
|threecreepio|TAS|4 Aug 2017|3:53|4:06|
|__Arc__|__TAS__|__8 Jan 2020__|__3:35__|__3:48__|

There are eight essential items that the hero, Eddie Valiant, needs to collect in order to beat the game. The locations of these eight items are all “randomly” determined before the player gains control of the character. But the memory values can be manipulated using inputs during startup in order to place the items in the best possible locations. Each different input generates a new “random” memory value combination. In theory, there are 36864 potential combinations. But the ideal combination is even more difficult to get than just winning a 1/36864 lottery, because the values do not come up with equal probability.

In FCEUX, it’s possible to press Start as early as frame 534. But two of the ideal memory values (009 and 013) never appear together unless the Start press is delayed until frame 540. From there, the memory values can be manipulated using different input combinations up until frame 728. On frames 730-733, the memory values are established. A very large portion of the work on this TAS went into searching for a combination of inputs that resulted in getting all eight memory addresses to show the ideal values simultaneously.

To make it more difficult, I didn’t program a bot to search for the ideal combination. I manually went through possible combinations in a systematic manner. I started with single input options on the latest possible frame and worked backward in order to maximize search speed. When none of the singles worked, I started testing double input options. Eventually, after many thousands of input variations, I found the perfect combination: pressing Up on frame 714 and A on frame 724 yielded all eight memory values that I wanted simultaneously. And those eight memory values are:

__040 018 005 009 029 016 053 013__

Let's examine what each of these eight values represent. I recommend opening this image in another tab in order to understand where these locations are on the world map and see the route I used: https://i.imgur.com/4HVxhJB.png

!! 040 Spring Shoes (Address 0657)
The Spring Shoes can appear at 040, 041, 042, or 043. The Spring Shoes are required in order to jump over animals that are guarding other essential items (primarily the dog guarding the Whistle). They are also used to jump over the pits in the caves, but it should be noted that it is technically possible to get through the caves without the Spring Shoes. 040 is the most difficult manipulation of the eight. It does not come up 25% of the time; it felt more like 10-12%. It is essential to use the 040 rare spawn because 040 is also the location at which Valiant buys the Dynamite. The Dynamite is another essential item, but it always is available in building 040 right at the start. 

042 is on the optimal route line too, but the Spring Shoes are guarded by an animal at that location. (I would need the Spring Shoes to get the Spring Shoes.)

!! 018 Whistle (Address 0631)
The Whistle can appear at 018, 019, 020, or 021. It is used to summon Benny the Cab to Valiant’s location. Driving in Benny is faster than walking, and Benny is needed to get through tunnels. 018 seems to appear as often as the other options, about 25% of the time. 018 is the only Whistle location in the north part of Los Angeles, and so it is the only option. The Spring Shoes must be acquired before the Whistle because a dog is guarding the Whistle at 018.

Benny the Cab comes to Valiant’s location whenever the Whistle is used, but Benny doesn’t get there instantly. If Benny is at a far away location, it will take a while for Benny to arrive. A trick to avoid the waiting time is to blow the Whistle near a building and then quickly enter and exit the building. When Valiant comes back out onto the world map, Benny is waiting at the spot the Whistle blew.

The Whistle is limited to five uses total, and so all of the uses have to be pre-planned. The five uses in this movie are: (1) using the building trick to call Benny immediately after getting the Whistle; (2) cutting across the grass on the way to the northern tunnel; (3) cutting across the grass on the way back from the northern tunnel; (4) cutting across the grass along the winding road in Toon Town; and (5) cutting across the grass on the way to Victory Road.

!! 005 Will Piece #1 (Address 065D)
Will Piece #1 can appear at 002, 004, or 005. (Not at 003.) All four pieces of Marvin Acme's will need to be collected in order to make Judge Doom appear. This piece is in the forest area north of LA. 005 seems to appear as often as the other options, about 33% of the time. 002 and 005 are almost equally good options. Both caves are guarded by a snake. It takes less time to get to the 002 cave, but there is more time spent walking inside the 002 cave than in the 005 cave. 

I noticed that the consequence of pressing Start on frame 540 instead of 534 is that the values 002 and 013 never appear together. I tested delaying Start more, but the consequence of that was just a rebreaking of the essential 009 and 013 combination. It seems that 002, 009, and 013 cannot all appear together. It's a curiosity but not a big deal.

!! 009 Will Piece #2 (Address 0661)
Will Piece #2 can appear at 006, 007, 008, or 009. All four pieces of Marvin Acme's will need to be collected in order to make Judge Doom appear. This piece is in the main city area of LA. 009 seems to appear as often as the other options, about 25% of the time. 009 is the only option that puts the Will Piece in a building instead of a cave. The next-best option (007) would be about 18 seconds slower.

While driving to 009, I slow down to manipulate both a random car and the Weasels’ car to appear behind Benny. Whenever the Weasels’ car appears, Benny gets a massive speed boost. (But the Weasels catch Roger if their car appears in front of Benny.)

!! 029 Detonator (Address 0639)
The Detonator can appear at 022, 025, 028, or 029. It is used in combination with the Dynamite to blow up the brick wall that blocks the tunnel to Toon Town. 029 seems to appear as often as the other options, about 25% of the time. 022 is on the route but is guarded by an animal, and so time would be lost for a death. At 029, it's on the route, it's unguarded, and it's right in the front of the building.

On the brief drive between 009 and 029, I manipulate a clever bump boost from a random car. I needed a few frames to set up the random car’s position and timing, but the frames saved from the boost are a great net benefit.

!! 016 Will Piece #3 (Address 0663)
Will Piece #3 can appear at 014, 016, or 017. (Not at 015.) All four pieces of Marvin Acme's will need to be collected in order to make Judge Doom appear. This piece is in the main part of Toon Town. 016 seems to appear as often as the other options, about 33% of the time. 016 and 017 are almost equally good. 017 is directly on the route (heading northwest), whereas 016 requires minor backtracking. There is a shorter distance to travel in the 016 building than the 017 building, however. In the end, 016 is better because its route allows direct access to the Baseball at 053 instead of 052.

I manipulate a random car to bump Benny upward about one car length after I hop out of the car while walking into 016. It saves 12 frames or so.

!! 053 Baseball (Address 0645)
The Baseball can appear at 047, 052, 053, or 054. The Baseball is required to distract the guard in the Doom Factory in order to gain access to Judge Doom. 053 seems to appear as often as the other options, about 25% of the time. 052 is along the route when using the 017 Will Piece spawn. But using the 016 spawn offers a better line to the superior 053 Baseball spawn. At 053, the Baseball appears on the right side of the building instead of the left, and so the ‘downslide’ item grab is possible. 053 also allows quicker access to the narrow gap in the road than 052, and so less time is wasted waiting for Benny to catch up and more time is spent in the car.

Note that in Toon Town there's no curb, and so it's possible to go around random cars without hitting them. The lack of curb also makes it possible to jump directly into a building entrance from Benny.

!! 013 Will Piece #4 (Address 065F)
Will Piece #4 can appear at 010, 011, 012, or 013. All four pieces of Marvin Acme's will need to be collected in order to make Judge Doom appear. This piece is near the Doom Factory in Toon Town. 013 seems to appear as often as the other options, about 25% of the time. 013 is the only possible value to use, because it is the only building in front of the Doom Factory. The other three buildings are behind the Doom Factory.

After collecting all of the items, it’s time for the final boss fight against Judge Doom. 00BF is the memory address for the Punch power meter. It starts at 096 and maxes out at 252, incrementing by four units with each tap of the B button. All 72 punches hit Judge Doom at full power. The fight looks easy because Doom is stunlocked the whole time, but setting up a perfect stunlock is difficult. In the second phase, it takes 16 hits from the Dip Cannon to finish him off.

!! Credits
Alyosha discovered that the 009 and 013 memory values appear together if the initial Start press is delayed by a few frames. This information was essential to the success of the run, and I am very grateful that he shared this knowledge.

Chambers shared the memory addresses of the essential items. He also holds the speedrun record, and his video was helpful for planning the TAS.

Tool23 created the TAS that initially sparked my interest in this game.

!! Suggested Screenshot
[https://i.imgur.com/m57Z5mZ.png]

!! Real Suggested Screenshot
[https://i.imgur.com/U71EgSd.png]
