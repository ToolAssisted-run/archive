!! Puzzle Bobble

Puzzle Bobble is a famous puzzle game, originally from Arcade. It got a port for the SNES containing 100 levels. The plot is never mentioned in the game, but it is in the manual. Bub (the green dragon) and Bob (the blue one) live in the rainbow village, until one day monsters start attacking using the power of bubbles. Then, Bub and Bob realize the Book of Bubble is missing, look for it and see it was stolen by Super Drunk. They defeat Super Drunk, get back the Book of Bubble and everyone is happy.

In this run, they are aided by the power of TAS. They can get any ball they want and have perfect aim, but have to go fast. Their secret weapon to go fast now, is the pause button. Oh, wait, really? The pause button?

! The run

This game has an old run by josh_l lasting 92647 frames (25:44.117 at 60 fps). After watching the run, I knew there were some strategies that could be improved, but most required a lot more luck, so I didn't know if it would be feasible. I used some debug tools to reverse engineer the game, and while playing with them found out even more stuff. Then, I started a TAS hoping to save around 10 seconds. To my surprise, the things I found proved the game to be much more complicated to TAS than it seems, and josh_l's run had a lot more room to be improved.

After some huge improvements in the Gears rounds, I was starting to think sub-25 was possible. And then came the last 20 stages, where there are lots of shots, and the improved luck manipulation saved a lot of time. Overall, I saved 3148 frames (52.467 s), much more than I thought was possible.

! How this game works

The game has eight colors of balls. Internally, they are represented by numbers:
* Black: 1
* Red: 2
* Yellow: 3
* Green: 4
* Purple: 5
* Orange: 6
* Blue: 7
* White: 8

The current ball you are about to shoot is on address 0x7E0862, the next ball you will shoot is on address 0x7E086E.

To generate balls, the game uses a bit mask, located on address 0x7E08AE. That mask represents which balls you can get to shoot. Each ball available corresponds to a 1 in the bit mask, and each unavailable ball is a 0. The digits corresponding to each ball are just their numbers, where 1 is the most significant bit, and 8 is the least significant. In other words, the mask is calculated by ORing the following values for each color:

* Black: 0x80
* Red: 0x40
* Yellow: 0x20
* Green: 0x10
* Purple: 0x08
* Orange: 0x04
* Blue: 0x02
* White: 0x01

It's important to know that the mask does not necessarily contain all colors on the stage. Roughly, it contains colors __you can shoot__. So, in stages with water balls, for example, sometimes there's only one ball of a given color, and it is surrounded by balls of other colors. It does not appear on the mask, because you can't shoot a ball at it. However, after you hit the water ball and it morphs other balls into that color, it appears in the mask and you can get balls of that color.

The routine that decides the color of the ball you get is inside a function starting at 0x80DBCF and ending at 0x80DC80. It uses the 16-bit RNG seed, located at 0x7E0332 (little endian), and the mentioned ball mask. It performs some bit operations in the seed, takes the remainder by the number of balls in the mask, and then uses the remainder to determine the ball. It's easier to look at the code in the Lua script:

%%SRC_EMBED
function get_ball(seed, mask)
    local num = bit_count(mask)
    local val = SHIFT(seed, 1)
    val = AND(OR(SHIFT(val,8),SHIFT(val,-8)),0xFFFF)
    val = SHIFT(XOR(val, seed), 2)
    local pick = val % num
    local aux = 0
    for i=8,1,-1 do
        if AND(mask, SHIFT(1,i-8)) > 0 then
            if aux == pick then
                return i
            else
                aux = aux + 1
            end
        end
    end
end 
%%END_EMBED

The routine that advances the RNG seed is located at 0x85893D-0x85894D. It's a simple LCG. We have x <- (5*x+1) mod 65536. In the Lua script:

%%SRC_EMBED
function next_seed(seed)
    return AND(5*seed+1, 0xFFFF)
end
%%END_EMBED

! Luck manipulation and pause nudging

With this knowledge, we can manipulate the game. The math of the LCG makes it run through all possible 65536 values, and we can order them by the position they occur. We can actually forget about the seed entirely and just look at its position. Here's a snippet of an output of the python simulation script:

%%SRC_EMBED
11073 blue
11074 purple
11075 red
11076 green
11077 white
11078 white
11079 orange
11080 red
11081 orange
11082 green
11083 blue
11084 red
11085 yellow
11086 white
%%END_EMBED

During a level, the RNG usually advances 2 positions per frame, but rarely it advances by 3. However, when the game is paused, it only advances once per frame. Pausing the game sometimes messes up the RNG calls. It can make the RNG advance much faster or much slower, but there are some "safe" sections where the game is not doing much, that you can pause the game. These safe sections are usually at the end of the level and immediately before the game rolls the ball for you. Pausing consumes at least two frames and two RNG calls, but since the RNG is slow, it gives more precision.

In the example above, say you fired a ball, got position 11077, but need a green ball. You can see green occurs at position 11082, but if the game computes normally that seed is not reachable, because you are at an odd seed and the green seed is even. However, you can do the following: wait one frame before shooting the ball, and the seed ends up at 11079, then in the frame before the ball is chosen, you pause, wait two frames, and pause again. This will move the RNG by 3 positions, and end it at 11082, exactly where you need.

That's why I call this technique "pause nudging", because you wanna let the game get as fast as possible to the seed and only "nudge" it towards the right value at the end, because the pause screen is very slow. Another thing that I sometimes do, when the next seed is very far away, but there's a valid one just before. Suppose you are again at 11077, but want to hit the green at 11076. One desperation tactic that sometimes works is to pause while the ball is flying and hope the game calls the RNG less so you end up at an earlier position. You can even combine the two techniques. Pause midflight to roll it back a lot, and then pause nudge it to the right value.

Pauses at the end of the level are done mostly to manipulate the two starting balls for the next level. The game always generates the first ball and then the second in the seed right after. So, if you hit position 11083 in the example, you start the level with blue as first ball, and red as second. So, manipulating the starting balls at the next level 90% of the time is just finding the right two-ball pattern. Sometimes, though, it's not worth it, as some shots that are very close to the floor waste only 20 and a few frames, and you might lose more by waiting for the right seed.

The levels where manipulating is more difficult are randomly generated levels. It is easy if you look at an example from Round 51 on the python script:

%%SRC_EMBED
def level51(seed):
    picked_balls = 0
    print(pos[seed], end=': ')
    balls = []
    for i in range(10):
        ball = get_ball(seed, 27)
        balls.append(ball)
        if i>7:
            picked_balls = picked_balls | (1<<(8-ball))
        seed = move_seed(seed)
    good_side = False
    if balls[4] == balls[6] or balls[5] == balls[7]:
        good_side = True
    mask = 100 | picked_balls
    first_ball = get_ball(seed, mask)
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[first_ball], end=' ')
    print(color[second_ball], end=' ')
    if good_side and first_ball == 6 and second_ball == 6:
        print('HIT')
    else:
        print('')
%%END_EMBED

Randomly generated levels work like this. The colors of the balls at certain positions are not fixed. What the game does is: it picks a mask that determines all possible colors for the balls in that position, then it generates them at consecutive seeds scanning left to right, up to down, filling them. Then, it generates the first and second ball for you to shoot. For these levels, the technique of looking at the seed values for a given mask does not work, because the mask might change depending on what the game generates for the level.

For the example of level 51. The game generates 10 balls from mask 27, meaning the possible colors are green, purple, blue, and white. The level already has balls of colors red, yellow, and orange, corresponding to a mask of 100. However, out of all 10 balls it generates, only the last two, which are at bottom, you can actually shoot, so only these contribute to your starting mask. For the optimal strategy of this level to work, you need two of the randomly generated balls in either side to have the same color, so that you can remove them with a single shot. You also need two orange balls to remove a ball before you can shoot this. That's what the script checks to determine which seed works.

Finally, it's also worth mentioning that levels with the gears background are much more difficult to manipulate the start. That's because they have an approximate "frame rule" every 30 frames, so waiting on the last shot is meaningless. In these levels, only the pause trick works to advance the RNG, and since it's much slower, it wastes more frames.

! Miscellaneous stuff

The direction you're pointing at is a byte on address 0x7E08BA. When it's centered, it's 64. The number 4 means all the way left and 124 means all the way right. The game is not symmetrical, the ball tends to stick more to balls on the right. So, if you have a symmetrical level where you need a ball to travel far shooting at angle X, it might be that it will stick to another ball if you shoot at the right at angle 128-X, and the strategy might not work.

Most of the improvement from josh_l's comes from manipulating the luck better and using more vertical shots, where the ball travels faster, allowing you to shoot the next one earlier. However, there are levels with genuinely new strategies from knowing the game better. Here are some highlights:

* Round 11 - The thunder ball goes to the opposite side that your arrow is pointing when you hit it. josh_l probably did not know this. You can hit the thunder ball and not have it kill the other one. You shoot it, move the arrow to the other side and move it back. It's only possible to hit the thunder ball and not the ceiling if you shoot the left side.
* Round 27 - At the top row, the first, third, fifth, and seventh balls have fixed colors, while the second, fourth, sixth, eighth, are all randomly generated. The optimal setup is when the randomly generated balls match the color to the left, so you can remove them with less shots. I was very lucky to find a seed that did this, and had a massive improvement.
* Round 38 - Saved a lot of time by avoiding hitting thunder balls, they are slow.
* Round 51 - josh_l uses a strategy eliminating balls at both sides to make the middle fall, and then hit the top. Knowing how the level is generated, you can make two balls in a given side match colors, so you hit only one side, pop these matching balls, and do a banked shot at the top, saving time. This is the level I used as example for manipulation.
* Round 52 - josh_l first hits the water bubble, pops the blue balls created, then clears the top. That's suboptimal, because you can't have blue balls when you hit the top, since the blue ball is hidden, wasting a shot. By switching the order, busting the top first, and then clearing the blue, you don't waste shots.
* Round 56 - Another round where you can save a shot by manipulating two random balls to have the same color.
* Round 84 - A level where the game behavior of sticking balls to the right actually helps. By removing balls in the middle, shooting at a certain angle will make the game stick the ball to the right where it looks like it won't. That saves a lot of time.
* Round 99 - Managed to save 150 frames by just using improved luck manipulation and vertical shots. My strategy is the same as josh, I also did not manipulate the right ball colors because it was faster to take the extra shot. Putting this here just to show how luck manipulation matters to save time.
* Round 100 (Super Drunk) - I don't have any idea how randomness works in the final boss fight. It doesn't use the ball generation algorithm here. Nevertheless, it's easy to manipulate. He has 12 health, you can shoot 3 balls to the ceiling before he pulls more balls to protect it, then you can shoot 3 balls again. You just have to always hit the ceiling. Managed to save 10 frames.

! Conclusion

After all, this game is much more complex than it looks, and I'm happy I could improve the time by so much. It was very fun doing this as Puzzle Bobble becomes a completely different game when you have to search for the optimal solution. I might keep looking at it to see if I can do ROM hacks of this. If anyone has any questions about all I wrote here, feel free to ask.
