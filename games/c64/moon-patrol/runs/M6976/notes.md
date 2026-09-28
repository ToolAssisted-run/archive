> **Imported**
> This run was originally published at https://tasvideos.org/6976M and entered this archive as a voluntary
> import by one of its authors, who takes the responsibility for importing a
> collaborative work. The notes below are the author's own, reproduced under their
> Creative Commons license; text not written by the authors (judging feedback, staff
> annotations) has been removed. The original publication was verified and reproduced
> at its source, a trusted site; it is marked fully verified here
> without passing through this site's standard procedure. The movie file and these
> notes were obtained freely from the source and are redistributed in observance
> of the Creative Commons Attribution 2.0 license under which they were published there.

!!!Moon Patrol
The game Moon Patrol is about a patrol drive on the moon with the help of a corresponding vehicle that can jump and shoot. On the way to the checkpoints (A to Z) there are not only holes and stones disturbing the patrol path, but also UFOs and spaceships, that in addition drop missiles and bombs. If the drive to the next checkpoint (E, J, O, T, Z) is done within a certain time, you get awarded bonus points. --C64 Wiki

!!Tools Used
*BizHawk 2.11

!!Effort In TASing
I originally tried to submit this game in 2023, but I quickly discovered that it was a nightmare to optimize. Any changes I made to the movie, ended up causing confusion for me to deal with. After picking at this for a year or two, I finally figured out the details on how to optimize it.

Optimizing was done on several fronts. They are listed below:
*Jumping: Not sure why this works, but you need to constantly be jumping. By performing this, you cause the scrolling of the ground to move faster. If you look closely, you'll notice how the game slows a bit, when you are crawling on the surface. My guess is, that a "Collision Check" is avoided for positing the vehicle vertically to follow the conture of the ground.

*AI/RNG Manipulation: This game behaves a lot like other Nintendo games, where you can shoot or jump on different frames. Doing so, will cause different reactions of the game. One particular reaction, is the appearance of enemy ships. A lot of times, they will appear and perform different flying patterns...which most of them are slow at getting in scope for shooting. So effort is performed to get them to show early and to fly quickly over my "roof gun".

*Enemy Ships: When ever there is movement on the screen, the game runs slower. I wouldn't call this true lag, but the way it is coded causes it to run more slowly, when more action is on the screen. So, to get the game to run faster...kill all enemies as quick as possible.

*Shooting: One of the biggest problems, in slowing down the game, is firing the "forward gun". This missile tracks the ground and causes more slowness than the "Roof gun", which shoots lasers. Since you have to shoot in this game, you can take advantage of this situation by firing multiple lasers, while the front missile is still in sight. This saves a bit on optimization.

*Ending Time: The coding of this game really affects the In-Game Timer. You can do everything perfectly, throughout this game, and yet you will obtain different times for the same distance, at full speed. At the end of each segment, you will notice a slow tallying of bonus points. Because of this slow bonus speed, you can try and time the ending of each segment to knock one more second off, to prevent this slowness. Each bonus tick, is 25 frames...so if you can manipulate the timer within 25 frames, you will cause the next round of play to appear sooner.

*Sprite Collision: Throughout this run, you will see that I'm not fully cleared of some craters. It is during these times, you will see that I'm shooting a missile. This missile affects the sprite collision detection and can sometimes allow me to avoid catastrophe.

*Static Objects: Anything that scrolls "statically" from right to left, is going to travel the same speed...whether you shoot it or not. You can examine the addresses that "shift" the graphical data from byte to byte and quickly realize that any object that is placed on the ground (IE: Boulders, Tanks, Craters), will not affect the speed of the game. This the reason why I jump as many of them as I can, as shooting them only slows down the game.

!!Ending Choice
Just like my Arcade TAS, this version completes two loops of the game, representing the "Beginners Course" and finally the "Champion Course". All courses thereafter, will be a repeat of the "Champion Course", as there is no new content.

!!Human Comparison
Speedrun.com doesn't have a WR for this, so I found this to demonstrate the human ability of this game.
[module:youtube|v=of0mhEU3TEM]
