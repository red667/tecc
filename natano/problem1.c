#include <stdio.h>

int main(void)
{
    int i = 0;
    int counter = 0;
    for(i = 1; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            counter += i;
        }
    }
    printf("%d\n", counter);

    return 0;
}
