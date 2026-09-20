def move_seed(seed):
    return (5*seed+1) & 0xFFFF
    
def prev_seed(seed):
    return 52429*(seed-1) & 0xFFFF

def get_ball(seed, mask):
    num = mask.bit_count()
    val = seed >> 1
    val = ((val >> 8) | (val << 8)) & 0xFFFF
    val = (val ^ seed) >> 2
    pick = val % num
    match = 0
    for i in reversed(range(1,9)):
        if (mask & (1 <<(8-i))) > 0:
            if match == pick:
                return i
            else:
                match += 1 
color = [
    'null',
    'black',
    'red',
    'yellow',
    'green',
    'purple',
    'orange',
    'blue',
    'white'
]

pos = [None] * 65536

def setup_pos():
    x = 0
    p = 0
    while (pos[x] == None):
        pos[x] = p
        x = move_seed(x)
        p = p + 1
       
setup_pos()

def level15(seed):
    picked_balls = 0
    print(pos[seed], end=': ')
    target_ball = 0
    for i in range(6):
        ball = get_ball(seed, 118)
        if i != 0 and i != 1:
            picked_balls = picked_balls | (1<<(8-ball))
        seed = move_seed(seed)
    mask = 129 | picked_balls
    first_ball = get_ball(seed, mask)
    print(color[first_ball], end=' ')
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[second_ball], end=' ')
    if first_ball == 1 and second_ball == 1:
        print('HIT')
    else:
        print('')

def level21(seed):
    picked_balls = 0
    print(pos[seed], end=': ')
    target_ball = 0
    for i in range(7):
        ball = get_ball(seed, 169)
        if i != 0 and i != 2:
            picked_balls = picked_balls | (1<<(8-ball))
        if i == 5:
            target_ball = ball
            print(color[ball], end=' ')
        seed = move_seed(seed)
    mask = 84 | picked_balls
    first_ball = get_ball(seed, mask)
    print(color[first_ball], end=' ')
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[second_ball], end=' ')
    if target_ball == first_ball and first_ball == second_ball:
        print('HIT')
    elif first_ball == 6 and second_ball == 6:
        print('HIT')
    else:
        print('')
        
def level25(seed):
    picked_balls = 0
    print(pos[seed], end=': ')
    target_ball = 0
    for i in range(9):
        ball = get_ball(seed, 106)
        if i != 0 and i != 2 and i != 7:
            picked_balls = picked_balls | (1<<(8-ball))
        seed = move_seed(seed)
    mask = 21 | picked_balls
    first_ball = get_ball(seed, mask)
    print(color[first_ball], end=' ')
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[second_ball], end=' ')
    if target_ball == first_ball and first_ball == second_ball:
        print('HIT')
    elif first_ball == 4 and second_ball == 4:
        print('HIT')
    else:
        print('')
        
letter = ['', 'K', 'R', 'Y', 'G', 'P', 'O', 'B', 'W']
        
def level27(seed):
    picked_balls = 0
    print(pos[seed], end=': ')
    v = []
    for i in range(12):
        ball = get_ball(seed, 123)
        v.append(letter[ball])
        if i == 10 or i == 11:
            picked_balls = picked_balls | (1<<(8-ball))
        seed = move_seed(seed)
    print(f"\nG {v[0]} B {v[1]} P {v[2]} R {v[3]}\n R   W   B   W\n  {v[4]} Y {v[5]} G {v[6]} P\n   P   W   Y\n  {v[7]} G {v[8]} R {v[9]} G\n W   B   Y   B\nR Y Y {v[10]} {v[11]} P P W")
    mask = 105 | picked_balls
    first_ball = get_ball(seed, mask)
    print(color[first_ball], end=' ')
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[second_ball])
    
def level28(seed):
    picked_balls = 0
    print(pos[seed], end=': ')
    for i in range(15):
        ball = get_ball(seed, 103)
        if i > 8:
            picked_balls = picked_balls | (1<<(8-ball))
        seed = move_seed(seed)
    mask = 24 | picked_balls
    first_ball = get_ball(seed, mask)
    print(color[first_ball], end=' ')
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[second_ball])
    
def level30(seed):
    picked_balls = 0
    print(pos[seed], end=': ')
    for i in range(6):
        ball = get_ball(seed, 118)
        picked_balls = picked_balls | (1<<(8-ball))
        seed = move_seed(seed)
    mask = 137 | picked_balls
    first_ball = get_ball(seed, mask)
    print(color[first_ball], end=' ')
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[second_ball])
    
def level37(seed):
    seed = move_seed(seed)
    if get_ball(seed, 122) == 4:
        for i in range(4):
            seed = move_seed(seed)
        if get_ball(seed, 122) == 4:
            print('HIT')
            
def level50(seed):
    picked_balls = 0
    print(pos[seed], end=': ')
    for i in range(12):
        ball = get_ball(seed, 12)
        if i>7:
            picked_balls = picked_balls | (1<<(8-ball))
        seed = move_seed(seed)
    mask = 225 | picked_balls
    first_ball = get_ball(seed, mask)
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[first_ball], end=' ')
    print(color[second_ball], end=' ')
    if first_ball == 2 and second_ball == 2:
        print('HIT')
    elif first_ball == 3 and second_ball == 3:
        print('HIT')
    else:
        print()
        
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
        
def level54(seed):
    print(pos[seed], end=': ')
    top_ball = get_ball(seed, 123)
    for i in range(5):
        seed = move_seed(seed)
    first_ball = get_ball(seed, 123)
    seed = move_seed(seed)
    second_ball = get_ball(seed, 123)
    print(color[top_ball], end=' ')
    print(color[first_ball], end=' ')
    print(color[second_ball], end=' ')
    if top_ball == 2 and first_ball == 2 and second_ball == 5:
        print('HIT')
    elif top_ball == 2 and first_ball == 5 and second_ball == 5:
        print('HIT')
    elif top_ball == 5 and first_ball == 5 and second_ball == 2:
        print('HIT')
    elif top_ball == 5 and first_ball == 2 and second_ball == 2:
        print('HIT')
    else:
        print('')
        
def level56(seed):
    picked_balls = 0
    balls = []
    print(pos[seed], end=': ')
    for i in range(12):
        ball = get_ball(seed, 56)
        balls.append(ball)
        picked_balls = picked_balls | (1<<(8-ball))
        seed = move_seed(seed)
    mask = 71 | picked_balls
    first_ball = get_ball(seed, mask)
    seed = move_seed(seed)
    second_ball = get_ball(seed, mask)
    print(color[balls[3]], end=' ')
    print(color[balls[6]], end=' ')
    print(color[first_ball], end=' ')
    print(color[second_ball], end=' ')
    if balls[3] == balls[6] and balls[3] == first_ball and (second_ball == 6 or second_ball == 7):
        print('HIT')
    else:
        print('')
    
seed = 37322
mask = 127

for i in range(10):
    seed = prev_seed(seed)

"""
for i in range(200):
    level56(seed)
    seed = move_seed(seed)   
"""

for i in range(40):
    print(str(pos[seed])+' '+color[get_ball(seed,mask)])
    seed = move_seed(seed)

