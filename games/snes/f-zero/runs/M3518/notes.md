> **Imported**
> This run was originally published at https://tasvideos.org/3518M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!! F-Zero Queen-Grand Prix (Expert Level)

Building off of the knowledge from the first circuit I did, roughly 2 months ago, I now have the Queen's League Circuit available. The learning curve was much less this time and allowed for me to focus on the techniques not previously used in the last TAS.
It is my pleasure to now present you with my newest movie. Once again, thanks to EdwardFourZero6 and Psicoh for their help of understanding this game. Additional thanks goes to Sniq and EternisedDragon (Aran;Jaeger) because of their push for me to cut frames til something was found.

https://www.twitch.tv/videos/166053091


!! Goal

After making the Knight League TAS, it occurred to me that there are 3 ways to time this game. They are as follows:
*In-Game Time (IGT)
*Real-Time (Fastest Credits)
*Fewest Inputs (TAS Timing)

Here, a combination of all the methods where used. IGT for laps 1 through 4, Real-Time for lap 5...which cuts out bonus recognition time, and the last lap of the last track...where I let off the accelerator until I can no longer hold the IGT for that lap.

!! Terminology
* Golden Fox - The fastest accelerating vehicle on the circuit.
* Blue Falcon - The second fastest accelerating vehicle on the circuit, with a little more top speed than the Golden Fox.
* Wild Goose - The third fastest accelerating vehicle, with higher top speed than the blue Falcon.
* Fire Stingray (Car of Choice for this TAS) - The slowest accelerating vehicle, with the highest top speed of the available cars for racing.
* Brown Cars - Also known as CPU RNG obstacles. These cars can be of massive aggravation and costly of lap times. Usually, they cost anywhere from 1/4 of frame to 2 frames to avoid them. In one situation, 6 frames were lost... but recovered by re-TASing earlier parts to avoid RNG for that terrible situation.
* Super Jet - On the completion of each lap, the driver is reward a super jet, which when used...moves the car from its capped speed to 562 as the highest. It cycles from 562 to 478 for 4.25 seconds.
* Brake Tapping - Refers to a technique, for when super jets are used, to gain greater speed by manually cycling the speed back up to 562 as fast as possible. This is done by braking at a certain speed to eliminate the lower part of the super jet speed cycle so that your car is running at speeds on the top end more. The result, is about 4 frames cut per lap.
* Blast Tapping - Refers to when the accelerator is released to allow your car to make tighter turns. This coincides with a slippage value and prevents it from reaching the maximum value. Basically, it keeps your car stuck to the ground and prevents you from loosing traction and thus keeping your speed up.
* Wall Tapping - This is a term that I came up with, that is used to help cycle the super jet speed correctly so that the timing is fixed to maximize the use for when traversing dirt of borders.
* Practice Mode - The game offers a player the ability to race a single track. This usually is accompanied by the selection of an opponent. The choice of your opponent can determine greater speeds...in most cases, Golden Fox is used to get the highest speed boost and used most often.
* Grand Prix Mode - The game is normally played with through one of three leagues...known as Knight, Queen, and King leagues. This TAS features the second league.

!! Tools Used
* Lua Script (For determining optimized inputs on turns and super jet usage during brake tapping, creating car placement values for determining if changes were moving me ahead of behind, and vectoring...since it was near impossible to determine with precision where you are headed)
* RAM Watch (The need for super jet timing, subpixel placement, and speed changes)
* LSNES Emulator

!! F-Zero TASing
Again...I have to say, that I believe the reason why no TAS has ever been produced of this game in a full league, is the extreme dedication that it takes in order to produce high quality times. So far, the only  full Grand Prix TAS available was submission 5576. During the making of this, I still can see the reason why this never happened before. During the past 2 months of TASing, there were times again that I wanted to give up. The idea of cleaning up and optimizing was so painful that I had to walk away...only this time, it was easier to deal with.
It is worth noting that the WR found on http://fzerocentral.org are all IGT related. Some are from practice rounds, while some are from Grand Prix runs. Understand that practice mode runs, where the Golden Fox is used for speed bumping, it impossible to beat on the first lap with and Grand Prix.

!! Track Details

! Mute City 2 (1st Track of the Queen Grand Prix circuit)
__1st Lap__: Best effort is to use Blue Falcon for a double speed boost, since a Blue Falcon/Wild Goose boost is about 15 frames slower at the finish line. It is also worth noting that it is impossible to use the Golden Fox for speed boost here, as it is too far to the right to reach. Lastly, the two ramps are used to get my speed up to 478.

__2nd Lap__: Right after the finish line, the Fire Stingray cuts a corner where it gets hit. The drop of speed is acceptable, since the space it cut is easily made up before the next turn and worth the effort. Here also starts the use of my first super jet where we cut the dirt to quickly get going again at high speed...taking advantage of a larger part of the track being cut without the effect of losing speed.

__3rd Lap__: Same as 2nd

__4th Lap__: Same as 3rd

__5th Lap__: Changes up a bit on where the super jet is used. Basically, it is used as in the same manner as Legend's RTA Practice run...called dirt cutting. Mainly, because it would be a waste to be speeding across the finish line with extra speed. So, we take it back a bit and use it through the dirt.

__Finish Line strategy__: Since this TAS was designed for Real-Time, coming in 2nd place allows us to cut time from the celebration cut scene. In this case, it was about 50 frames eliminated.

__End Results__:
|| TAS || Legend's (IGT-Grand Prix) ||
| 0'26”25 | 0'26”34 |
| 0'23”50 | 0'23”61 |
| 0'23”43 | 0'23”58 |
| 0'23”43 | 0'23”56 |
| 0'24”02 | 0'23”52 |
|| Total ||
| 2'00”63 | 2'00”61 |

! Port Town 1 (2nd Track of the Queen Grand Prix circuit)
__1st Lap__: Because of the quick approaching double ramps, a double speed bump was required of the Blue Falcon / Wild Goose. This was the track that I eventually figured out some information over the slight advantage that Master Level has over Expert Level. According to the WR of EdwardFourZero6, the second speed bump occurs much quicker than is possible for Expert Level. So here, the first lap does not have the run away time as the following laps will show.

__2nd Lap__: Super jet usage starts, but is held off until the "BIG" jump across the track. Super Jet usage starts the frame of first movement, after the game resets the car's position. This retraction occurs because you missed a checked point. According to EdwardFourZero6, this cut saves about 1.5 seconds RTA, but seems to be a bit more with this TAS.

__3rd Lap__: Same as 2nd lap

__4th Lap__: Same as 3rd lap, except cars finally show up.

__5th Lap__: Cars show up in abundance finally.

__Finish Line Strategy__: Same concept is used to come in 2nd place, although the cut was around 68 frames. The Wild Goose was stuck extremely close in this case.

__End Results__:
|| TAS || EdwardFourZero6 (IGT-Grand Prix) ||
| 0'21'55 | 0'21”63 |
| 0'18”23 | 0'18”42 |
| 0'18”22 | 0'18”40 |
| 0'18”23 | 0'18”41 |
| 0'18”57 | 0'18”42 |
|| Total ||
| 1'34”80 | 1'35”28 |

*Note: The frame count was the same for laps 2,3, and 4...but because of the game timer, it alternates between 1/100 and 2/100...giving a alternation of time.

! Red Canyon I (3rd Track of the Queen Grand Prix circuit)
__1st Lap__: Same situation applies here as 1st track. The need of double speed boosting from the Blue Falcon. First lap shows to be quite difficult, as super tight cornering throws off the optimal route. As with this lap and the remaining ones, a large jump over the track is made.

__2nd Lap__: Early in the lap, car avoidance presents itself,but dedicated TASing prevails to keep from loosing time. Super jet usage starts, and is able to cut corners at high speed while not loosing that speed.

__3rd Lap__: Freedom to perform the optimal route finally occurs in the first part of the track. Because of recovery hardships in the past two laps...you'll notice that corners are being clipped to save time. This was due to the angle of my approach to some places.

__4th Lap__: Perfect RNG provides the best route.

__5th Lap__: Same as lap 4, except the ending allowed 2 frames more than normal to keep from loosing 6+...due to different car RNG placements near the last turn.

__Finish Line Strategy__: Same concept is used to come in 2nd place. The cut was around 52 frames.

__End Results__:
|| TAS || EdwardFourZero6 (IGT-Grand Prix) ||
| 0'22”57 | 0'22”70 |
| 0'19”76 | 0'19”96 |
| 0'19”75 | 0'19”98 |
| 0'19”76 | 0'19”95 |
| 0'20”35 | 0'19”97 |
|| Total ||
| 1'42”19 | 1'42”56 |

*Note: The frame count was also the same for laps 2,3, and 4 (as in track 2)...but because of the game timer, the same situation applied to the differences of times.

! White Land I (4th Track of the Queen Grand Prix circuit)
__1st Lap__: A very unique situation occurs in the first lap that gave me a very good route change...due to a 3 car speed bump. It occurred in the following order: Blue Falcon / Wild Goose / Golden Fox. Basically, the CPU takes the long route around a corner and this TAS takes advantage of cutting through the undesirable track surface. This diminishes the speed, but is quickly recovered by the high accelerating sped of the Golden Fox.

__2nd Lap__: A TAS only trick is now demonstrated here where our car taps the wall to avoid the ramps, while traversing the dirt bars. This helps to maintain our super jet speed, which is initiated right after cutting through the speed slowing track surface and border. After all this, precise jumping delivers a large jump across the inside part of the track.

__3rd Lap__: Same as 2nd lap

__4th Lap__: Same as 3rd lap

__5th Lap__: Same as 4th lap...finishes out with no RNG problems for re-routing.

__Finish Line Strategy__: The same type of "Rubber-Banding" is done to cut 36 frames.

__End Results__:
|| TAS || EdwardFourZero6 (IGT-Practice Mode) ||
| 0'24”98 | 0'24”76 |
| 0'22”29 | 0'22”53 |
| 0'22”29 | 0'22”56 |
| 0'22”29 | 0'22”50 |
| 0'23”11 | 0'22”49 |
|| Total ||
| 1'54”96 | 1'54”84 |

*Note: The frame count was also the same for laps 2,3, and 4 (as in track 3)...but because of the game timer, the same situation applied to the differences of times. Edwards TAS was shown for comparison on the optimization level of my inputs.

! White Land II (5th and final track of the Queen Grand Prix circuit)
__1st Lap__: Same speed boosting as used in tracks 1, and 3.

__2nd Lap__: Super jet usage starts, and is able to cut borders at high speed while not loosing that speed. Car avoidance costed two frames here.

__3rd Lap__: Same as 2nd lap

__4th Lap__: Same as 3rd lap

__5th Lap__: Same as 4th lap

__Finish Line Strategy__: Nothing special here...just needing to finish the TAS by crossing the finish line at the highest in-game time possible....meaning that I cut off frames until I could hold the same time when crossing the finish line.

__End Results__:
|| TAS || EdwardFourZero6 (IGT-Grand Prix) ||
| 0'28”25 | 0'28”47 |
| 0'24”18 | 0'24”60 |
| 0'24”19 | 0'24”52 |
| 0'24”17 | 0'24”42 |
| 0'24”19 | 0'24”51 |
|| Total ||
| 2'04”98 | 2'06”52 |
