#include <stdio.h>
#include <inttypes.h>
#include <math.h>

typedef int8_t i8;
typedef uint64_t u64;
typedef int32_t i32;

u64 nextSeed(u64 seed) {
    return seed * 6364136223846793005LL + 1;
}

struct Rng {
    u64 seed;
    Rng(u64 seed_): seed(seed_) { }
    i32 roll() {
        seed = seed * 6364136223846793005LL + 1;
        return (seed >> 32) & 0x7fffffff;
    }
};

struct Perm {
    i8 perm[40];
};

struct Finder {
    u64 a[64], c[64];
    Finder() {
        a[0] = 6364136223846793005LL;
        c[0] = 1;
        for (int i=1; i<64; i++) {
            a[i] = a[i-1] * a[i-1];
            c[i] = a[i-1] * c[i-1] + c[i-1];
        }
    }
    u64 getPos(u64 seed) {
        u64 val = 0;
        u64 pos = 0;
        for (int i=1; i<64; i++) {
            u64 mask = (1ULL << i) - 1;
            if ((val & mask) != (seed & mask)) {
                val = a[i-1]*val + c[i-1];
                pos |= (1ULL << (i-1));
            }
        }
        if (val != seed) {
            pos |= (1ULL << 63);
        }
        return pos;
    }
    u64 getSeed(u64 pos) {
        u64 val = 0;
        for (int i=0; i<64; i++) {
            if (pos & 1) {
                val = a[i]*val + c[i];
            }
            pos = (pos >> 1);
        }
        return val;
    }
};

void setCard(Rng* rng, int pos, Perm* p) {
    int index;
    do {
        index = (i32)floor(40.0f * ((float)rng->roll() / 2147483648.0f));
    } while (p->perm[index] != -1);
    p->perm[index] = pos;
}

Perm getPermForSeed(bool isWhiteRose, u64 seed) {
    Rng rng(seed);
    Perm player, opponent;
    for (int i=0; i<40; i++) {
        player.perm[i] = -1;
        opponent.perm[i] = -1;
    }
    for (int i=0; i<40; i++) {
        setCard(&rng, i, &player);
        setCard(&rng, i, &opponent);
    }
    if (isWhiteRose) {
        return opponent;
    }
    return player;
}

void printPerm(bool isWhiteRose, u64 seed) {
    Perm p = getPermForSeed(isWhiteRose, seed);
    int score = 0;
    for (int i=0; i<40; i++) {
        printf("%d ",p.perm[i]);
    }
    printf("\n");
}

int abs(int x) {
    return x > 0 ? x : -x;
}

bool checkPoints(int x, int y) {
    return abs(x-3)+abs(y-5) <=1;
}

int main() {
    Finder finder;
    u64 duelPos = 1305702;
    u64 seed = finder.getSeed(duelPos);
    for (int i=0; i<2000; i++) {
        Rng rng(seed);
        int x = rng.roll() % 7;
        int y = rng.roll() % 7;
        int player = rng.roll() % 2;
        int slot = rng.roll() % 10;
        if (player == 1 && slot == 0) {
            printf("%d: (%d, %d)",duelPos+i,x,y);
            if (checkPoints(x, y)) {
                printf(" hit");
            }
            printf("\n");
        }
        seed = nextSeed(seed);
    }
    for (int i=0; i<80; i++) {
        printf("%lld\n",duelPos+i);
        printPerm(true, finder.getSeed(duelPos+i));
    }
    return 0;
}