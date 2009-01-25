#include <stdio.h>

int fib()
{
    static int a = 0, b = 1, x = 0;
    if(a)
    {
        x = a;
        a = b;
        b += x;
        return a; 
    }
    else
    {
        a = 1;
        return a;
    }
}

int main()
{
    int x = 0;
    int sum = 0;
    while(x = fib())
    {
        if(x > 4000000) break;
        if(x % 2 == 0) sum += x;
    }
    printf("Sum = %d\n", sum);
}