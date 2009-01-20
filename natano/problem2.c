#include <stdio.h>

int main(void)
{
   unsigned long a = 1, b = 1, sum = 0;
    while(a <= 4000000) {
        b = a + b;
        a = b - a;
        if(b % 2 == 0) {
            sum += b;
        }
    }
    printf("%lu\n", sum);

    return 0;
}
