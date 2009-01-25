#include <stdio.h>

int main()
{
    int n = 4000000;
    int a = 1;
    int b = 2;
    int sum = 2;
    
    for(sum = 2; sum < n;)
    {
        a = b + a;
        b = a + b;
        if(a % 2 == 0)
        {
            sum += a;
        }
        if(b % 2 == 0)
        {
            sum += b;
        }
    }
    printf("Sum = %d\n", sum);
}
