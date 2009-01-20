#include <stdio.h>
#include <math.h>
#include <stdint.h>

#define TRUE  1
#define FALSE 0

int main(void)
{
    unsigned long long x = 600851475143;
    unsigned long long y = x;
    unsigned long long factor = 3;
    unsigned long long i = 0;
    int solution = 0;
    while(!(factor * factor > y)) {
        if(x % factor == 0) {
            i = factor / 3;
            if(i % 2 == 0) {
                i--;
            }
            for(; i > 1; i -= 2) {
                if(x % i == 0) {
                    continue;
                }
            }
            solution = factor;
            x = x / factor;
        }
        factor += 2;
    }
    printf("%d\n", solution);

    return 0;
}
