> **Imported**
> This run was originally published at https://tasvideos.org/3479M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! F-Zero Knight-Grand Prix (Expert Level)

I want to start off by first thanking EdwardFourZero6 and Psicoh for their input on the game mechanics. Although this was one of my top games I played growing up, there were still many things that weren't apparent and was required to produce a movie of this scope. As many people are aware, EdwardFourZero6 is the WR holder of this game in every category and track...except for Mute City I Practice Mode. Psicoh is a top tier runner of this game and was able to provide his views and confirmation on my progress.

https://www.twitch.tv/videos/155908609

!! Terminology
* Golden Fox - The fastest accelerating vehicle on the circuit.
* Blue Falcon - The second fastest accelerating vehicle on the circuit, with a little more top speed than the Golden Fox.
* Wild Goose - The third fastest accelerating vehicle, with higher top speed than the blue Falcon.
* Fire Stingray (Car of Choice for this TAS) - The slowest accelerating vehicle, with the highest top speed of the available cars for racing.
* Brown Cars - Also known as CPU RNG obstacles. These cars can be of massive aggrivation and costly of lap times. Usally, they cost anywhere from 1/4 of frame to 2 frames to avoid them. In one situation, 6 frames were lost... but recovered by reTASing earlier parts to avoid RNG for that terrible situation.
* Super Jet - On the completion of each lap, the driver is reward a super jet, which when used...moves the car from its capped speed to 562 as the highest. It cycles from 562 to 478 for 4.25 seconds.
* Brake Tapping - Refers to a technique, for when super jets are used, to gain greater speed by manually cycling the speed back up to 562 as fast as possible. This is done by braking at a certain speed to eliminate the lower part of the super jet speed cycle so that your car is running at speeds on the top end more. The result, is about 4 frames cut per lap.
* Blast Tapping - Refers to when the accelerator is released to allow your car to make tighter turns. This coincides with a slippage value and prevents it from reaching the maximum value. Basically, it keeps your car stuck to the ground and prevents you from loosing traction and thus keeping your speed up.
* Wall Tapping - This is a term that I came up with, that is used to help cycle the super jet speed correctly so that the timing is fixed to maximize the use for when traversing dirt of borders.
* Practice Mode - The game offers a player the ability to race a single track. This usually is accompanied by the selection of an opponent. The choice of your opponent can determine greater speeds...in most cases, Golden Fox is used to get the highest speed boost and used most often.
* Grand Prix Mode - The game is normally played with through one of three leagues...known as Knight, Queen, and King leagues. This TAS features the first league.

!! Tools Used
* Lua Script (For determining optimized inputs on turns and super jet usage during brake tapping, creating car placement values for determining if changes were moving me ahead of behind, and vectoring...since it was near impossible to determine with precision where you are headed)
* RAM Watch (The need for super jet timing, subpixel placement, and speed changes)
* LSNES Emulator

!! F-Zero TASing
I have to say, that I believe the reason why no TAS has ever been produced of this game yet...is the extreme dedication that it takes in order to produce high quality times. So far, we have never seen a full Grand Prix TAS yet...until now. During the making of this, I can completely understand the reason now why this never happened before. During the 5 months of TASing, there were times that I wanted to give up. The idea of cleaning up and optimizing was so painful that I had to walk away from it at times and do something else...perhaps for days. After a number of months, where I did nothing but lua script and ram searching...I finally figured out what it took in order to make this TAS beyond human capability.

!! Track Details

! Mute City 1 (1st Track of the Knight Grand Prix circuit)
__1st Lap__: Best effort is to use Blue Falcon for a double speed boost, since a Blue Falcon/Wild Goose boost is about 15 frames slower at the finish line. It is also worth noting that it is impossible to use the Golden Fox for speed boost here, as it is too far to the right to reach. Lastly, the ramp is used to get my speed up to 478. By the time we reach the finish line, we cross so close to the checkpoint that my frame count is 1 less than I had hoped for...which causes the next lap to be 1 frame longer...but the end result is the same.

__2nd Lap__: Right after the finish line, the Fire Stingray cuts a corner where it gets hit. The drop of speed is acceptable, since the space it cut is easily made up before the next turn and worth the effort. Here also starts the use of my first super jet where we cut the dirt to quickly get going again at high speed...taking advantage of a larger part of the track being cut without the effect of losing speed.

__3rd Lap__: Same as 2nd

__4th Lap__: Same as 3rd

__5th Lap__: Changes up a bit on where the super jet is used. Basically, it is used as in the same manner as Legend's RTA Practice run...called cutting the dirt. Mainly, because it would be a waste to be speeding across the finish line with extra speed. So, we take it back a bit and use it through the dirt.

__Finish Line strategy__: Since this TAS was designed for Real-Time, coming in 2nd place allows us to cut time from the celebration cut scene. In this case, it was about 60 frames eliminated.

__End Results__:
|| TAS || EdwardFourZero6 ||
| 0'25”86 | 0'26”30 |
| 0'23”12 | 0'23”25 |
| 0'23”04 | 0'23”26 |
| 0'23”04 | 0'23”24 |
| 0'23”58 | 0'24”12 |
|| Total ||
| 1'58”64 | 2'00”17 |

! Big Blue (2nd Track of the Knight Grand Prix circuit)
__1st Lap__: Same situation applies here at 1st track. The need of double speed boosting from the Blue Falcon.

__2nd Lap__: Super jet usage starts, and is able to cut borders at high speed while not loosing that speed.

__3rd Lap__: Same as 2nd lap

__4th Lap__: Same as 3rd lap

__5th Lap__: Same as 4th lap

__Finish Line Strategy__: Same concept is used to come in 2nd place, although the cut was around 40 frames...probably because of the straight away being longer to deal with waiting on the 2nd place driver.

__End Results__:
|| TAS || EdwardFourZero6 ||
| 0'27"61 | 0'28"53 |
| 0'24"77 | 0'25"01 |
| 0'24"76 | 0'24"97 |
| 0'24"77 | 0'24"96 |
| 0'25"42 | 0'25"91 |
|| Total ||
| 2'07"33 | 2'09"38 |

*Note: The frame count was the same for laps 2,3, and 4...but because of the game timer, it alternates between 1/100 and 2/100...giving a alternation of time.

! Sand Ocean (3rd Track of the Knight Grand Prix circuit)
__1st Lap__: Same situation applies here at 1st track. The need of double speed boosting from the Blue Falcon.

__2nd Lap__: Super jet usage starts, and is able to cut borders at high speed while not loosing that speed. Wall tapping is used through the dirt to cycle the speed of the super jet to time the capped speed from being slowed as the car traverses through the dirt.

__3rd Lap__: Same as 2nd lap

__4th Lap__: Probably showed up where car avoidance costed 1 frame.

__5th Lap__: Same as 4th lap

__Finish Line Strategy__: Same concept is used to come in 2nd place, although the cut was around 35 frames...probably because of the straight away being longer to deal with waiting on the 2nd place driver.

__End Results__:
|| TAS || EdwardFourZero6 ||
| 0'30”51 | 0'31”20 |
| 0'27”44 | 0'28”11 |
| 0'27”43 | 0'27”72 |
| 0'27”45 | 0'27”82 |
| 0'27”45 | 0'29”36 |
|| Total ||
| 2'20”28 | 2'24”21 |

*Note: The frame count was also the same for laps 2,3, and 4 (as in track 3)...but because of the game timer, the same situation applied to the differences of times.

! Death Wind I (4th Track of the Knight Grand Prix circuit)
__1st Lap__: Death Wind has a strong right crossing wind, which aids for the use of the Golden Fox for speed boosting. This led to a second boost by the Blue Falcon, and to be followed up with by the Wild Goose.

__2nd Lap__: Super jet usage starts, and is able to cut borders at high speed while not loosing that speed.      

__3rd Lap__: Same as 2nd lap

__4th Lap__: Same as 3rd lap

__5th Lap__: Same as 4th lap

__Finish Line Strategy__: Most speed runners don't take 2nd in this track, because the cpu is too far behind to catch up for forcing a 2nd place finish. However, because we are able to predict the CPU's behavior...I was able to cut 7 frame off initially, but figured out that slamming into a brown car would keep the CPU closer to me and provided 15 frames cut! My speed was so dramatic on this track, that the Wild Goose was almost overlapped.

__End Results__:
|| TAS || EdwardFourZero6 || Edwards TAS ||
| 0'22”66 | 0'23”32 | 0'22”78 |
| 0'20”15 | 0'20”24 | 0'20”16 |
| 0'20”14 | 0'20”23 | 0'20”16 |
| 0'20”15 | 0'20”37 | 0'20”16 |
| 0'21”27 | 0'21”45 | 0'20”16 |
|| Total ||
| 1'44”37 | 1'45”61 | 1'43”42 |

*Note: The frame count was also the same for laps 2,3, and 4 (as in track 3)...but because of the game timer, the same situation applied to the differences of times. Edwards TAS was shown for comparison on the optimization level of my inputs.

! Silence (5th and final track of the Knight Grand Prix circuit)
__1st Lap__: Same speed boosting as used in tracks 1,2, and 3.

__2nd Lap__: Super jet usage starts, and is able to cut borders at high speed while not loosing that speed. Car avoidance costed two frames here.

__3rd Lap__: Same as 2nd lap

__4th Lap__: Same as 3rd lap

__5th Lap__: Same as 4th lap

__Finish Line Strategy__: Nothing special here...just needing to finish the TAS by crossing the finish line at the high in-game time possible.

__End Results__:
|| TAS || EdwardFourZero6 ||
| 0'24”49 | 0'25”27 |
| 0'21”57 | 0'22”43 |
| 0'21”54 | 0'21”91 |
| 0'21”54 | 0'21”75 |
| 0'21”56 | 0'22”11 |
|| Total ||
| 1'50”70 | 1'53”47 |
