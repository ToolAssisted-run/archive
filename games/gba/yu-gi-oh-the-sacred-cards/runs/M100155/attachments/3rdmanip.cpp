#include <stdio.h>
#include <set>
#include <algorithm>
#include <vector>
#include <inttypes.h>

#define N 4

typedef uint32_t u32;
typedef uint8_t u8;

u8 v[N][5];
int d[40];

int np[5];

using namespace std;

set<int> p;

bool bt(set<int>::iterator it) {
    if (it == p.end()) {
        return true;
    }
    for (int k=0; k<5; k++) {
        if (np[k] < 3) {
            np[k]++;
            d[*it] = k;
            bool works = true;
            for (int i=0; i<N; i++) {
                int ct[5] = {0, 0, 0, 0, 0};
                for (int j=0; j<5; j++) {
                    if(d[v[i][j]] != -1) {
                        ct[d[v[i][j]]]++;
                    }
                }
                for (int j=0; j<5; j++) {
                    if (ct[j] > 1) {
                        works = false;
                        break;
                    }
                }
            }
            if (works && bt(next(it))) {
                return true;
            }
            d[*it] = -1;
            np[k]--;
        }
    }
    return false;
}

u32 next_seed(u32 seed) {
    u32 aux = (seed & 0x80000000) >> 15;
    seed ^= aux;
    seed = (seed << 1);
    seed |= (aux >> 16);
    return seed & 0xffffffff;
}

struct ByteRet {
    u8 byte;
    u32 seed;
};

ByteRet get_byte(u32 seed) {
    ByteRet ans;
    ans.byte = 0;
    for (int i=0; i<8; i++) {
        ans.byte = (ans.byte << 1);
        seed = next_seed(seed);
        ans.byte |= (seed & 1);
    }
    ans.seed = seed;
    return ans;
}

struct DuelRet {
    bool first;
    u8 perm[40];
};

DuelRet get_duel_start(u32 seed) {
    DuelRet ans;
    for (int i=0; i<40; i++) {
        ans.perm[i] = i;
    }
    for (int i=0; i<200; i++) {
        ByteRet a = get_byte(seed);
        seed = a.seed;
        ByteRet b = get_byte(seed);
        seed = b.seed;
        swap(ans.perm[a.byte % 40], ans.perm[b.byte % 40]);
    }
    for (int i=0; i<3200; i++) {
        seed = next_seed(seed);
    }
    ByteRet c = get_byte(seed);
    ans.first = (c.byte % 2 == 0);
    return ans;
}

bool solve(u8 v[4][5], char* deck) {
    char c[5] = {'D', 'E', 'A', 'T', 'H'};
    p.clear();
    for (int i=0; i<N; i++) {
        for (int j=0; j<5; j++) {
            p.insert(v[i][j]);
        }
    }
    for (int i=0; i<40; i++) {
        d[i] = -1;
    }
    for (int i=0; i<5; i++) {
        np[i] = 0;
    }
    if (bt(p.begin())) {
        for (int i=0; i<40; i++) {
            if (d[i]==-1) {
                deck[i] = 'X';
            } else {
                deck[i] = c[d[i]];
            }
        }
        return true;
    }
    return false;
}

void printHand(const DuelRet& d) {
    for (int i=35; i<40; i++) {
        printf("%d ",d.perm[i]);
    }
    printf("\n");
}

void fillHand(const DuelRet& d, u8* arr) {
    for (int i=35; i<40; i++) {
        arr[i-35] = d.perm[i];
    }
}

u32 advance_eight(u32 seed) {
    for (int k=0; k<8; k++) {
        seed = next_seed(seed);
    }
    return seed;
}

void check_set(DuelRet* d, u32 sseed, u32 cseed, u32 bseed, u32 jseed) {
    for (int exodia = 0; exodia < 5; exodia++) {
        set<u8> slots;
        for (int k=0; k<5; k++) {
            if (k != exodia) {
                for (int l=0; l<5; l++) {
                    slots.insert(d[k].perm[35+l]);
                }
            }
        }
        if (slots.size() <= 15) {
            bool works = true;
            for (int k=0; k<5; k++) {
                if (slots.find(d[exodia].perm[35+k]) != slots.end()) {
                    works = false;
                }
            }
            if (works) {
                int vid = 0;
                for (int i=0; i<5; i++) {
                    if (i!=exodia) {
                        fillHand(d[i], v[vid]);
                        vid++;
                    }
                }
                char deck[40];
                if (solve(v, deck)) {
                    printf("strings %08x, couple %08x, boy %08x, joey %08x: %d slots, exodia %d\n", sseed, cseed, bseed, jseed, slots.size(), exodia);
                    for (int i=0; i<5; i++) {
                        printHand(d[i]);
                    }
                    set<u8> exodia_slots;
                    for (int i=0; i<5; i++) {
                        exodia_slots.insert(d[exodia].perm[35+i]);
                    }
                    for (int i=0; i<40; i++) {
                        if (exodia_slots.find(i) != exodia_slots.end()) {
                            printf("F ");
                        } else {
                            printf("%c ",deck[i]);
                        }
                    }
                    printf("\n");
                }
            }
        }
    }
}

int main() {
    u32 strings_seed = 0x03CC0498;

    u32 aquarium1_seed = 0x0D57A262;

    u32 aquarium2_seed = 0x2773a716;

    u32 aquarium3_seed = 0xfa7016e8;

    u32 joey_seed = 0x32ab1217;

    DuelRet d[5];

    for (int i=0; i<50; i++) {
        d[4] = get_duel_start(joey_seed);
        if (d[4].first) {
            u32 lseed = strings_seed;
            u32 lseed2 = aquarium1_seed;
            u32 lseed3 = aquarium2_seed;
            u32 lseed4 = aquarium3_seed;

            for (int j=0; j<i+1; j++) {
                d[0] = get_duel_start(lseed);
                if (d[0].first) {
                    u32 mseed1 = lseed2;
                    u32 mseed2 = lseed3;
                    u32 mseed3 = lseed4;
                    for (int k=j; k<i+1; k++) {
                        d[1] = get_duel_start(mseed1);
                        d[2] = get_duel_start(mseed2);
                        if (d[1].first && d[2].first) {
                            u32 nseed = mseed3;
                            for (int l=k; l<i+1; l++) {
                                d[3] = get_duel_start(nseed);
                                if (d[3].first) {
                                    check_set(d, lseed, mseed1, nseed, joey_seed);
                                }
                                nseed = advance_eight(nseed);
                            }
                        }
                        mseed1 = advance_eight(mseed1);
                        mseed2 = advance_eight(mseed2);
                        mseed3 = advance_eight(mseed3);
                    }
                }
                lseed = advance_eight(lseed);
                lseed2 = advance_eight(lseed2);
                lseed3 = advance_eight(lseed3);
                lseed4 = advance_eight(lseed4);
            }
        }
        joey_seed = advance_eight(joey_seed);
    }
    return 0;
}