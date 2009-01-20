#include <stdio.h>
#include <math.h>
#include <stdint.h>

#define TRUE  1
#define FALSE 0


int is_prime(unsigned long long x)
{
    unsigned long long  i = x / 3;
    if(i % 2 == 0) {
        i--;
    }
    for(; i > 1; i -= 2) {
        if(x % i == 0) {
            return FALSE;
        }
    }
    return TRUE;
}


int main(void)
{
    unsigned long long x = 600851475143;
    unsigned long long factor = 2;
    int solution = 0;
    while(!(factor * factor > x)) {
        if(x % factor == 0) {
            x / factor;
            if(is_prime(factor)) {
                solution = factor;
            }
        }
        if(factor == 2) {
            factor++;
        } else {
            factor += 2;
        }
    }
    printf("%d\n", solution);

    return 0;
}
