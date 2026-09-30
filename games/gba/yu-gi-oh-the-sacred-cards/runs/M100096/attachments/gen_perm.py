def next_seed(seed):
    aux = (seed & 0x80000000) >> 15;
    seed ^= aux;
    seed = (seed << 1);
    seed |= (aux >> 16);
    return (seed & 0xffffffff);

def get_byte(seed):
    ans = 0
    for i in range(8):
        ans = (ans << 1)
        seed = next_seed(seed)
        ans |= (seed & 1)
    return ans, seed

def get_duel_start(seed):
    perm = list(range(40))
    for i in range(200):
        a, seed = get_byte(seed)
        b, seed = get_byte(seed)
        a %= 40
        b %= 40
        perm[a], perm[b] = perm[b], perm[a]
    for i in range(3200):
        seed = next_seed(seed)
    byte, _ = get_byte(seed)
    return byte % 2 == 0, perm

seed = 0x2eb365ea
seed2 = 0xb206d18f
seed3 = 0xd1e8c81d

for i in range(100):
    goes_first, perm = get_duel_start(seed)
    two_first, two_perm = get_duel_start(seed2)
    three_first, three_perm = get_duel_start(seed3)
    #four_first, four_perm = get_duel_start(seed4)
    print(str(i)+','+hex(seed)+':', end= ' ')
    if goes_first and two_first and three_first:
        print('HIT')
    else:
        print('')
    print(str(goes_first)+' '+str(perm[-5:]))
    print(str(two_first)+' '+str(two_perm[-5:]))
    print(str(three_first)+' '+str(three_perm[-5:]))
    #print(str(four_first)+' '+str(four_perm[-5:]))
    for j in range(8):
        seed = next_seed(seed)
        seed2 = next_seed(seed2)
        seed3 = next_seed(seed3)
        #seed4 = next_seed(seed4)
