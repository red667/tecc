/*
The following iterative sequence is defined for the set of positive integers:

n n/2 (n is even)
n 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 40 20 10 5 16 8 4 2 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?
*/


#include <stdio.h>


int main()
{
    int given = 1000000;
    long int n;
    int i;
    long int count = 1;
    long int longest = 0;
    int result = 0;
    
    for(i = 1; i < given; i++) {
        n = i;
        //printf("in ur loopz, i iz %d\n", i);
        
        while(n != 1) {
            //printf("i'm in ur loopz\n");
            
            if(n % 2 == 0) {
                n = n/2;
                //printf("new n is %d, count at %d\n", n, count);
            }
            else {
                n = 3*n + 1;
                //printf("new n is %d, count at %d\n", n, count);
            }
            count++;
        }
        
        if(n == 1) {
            //printf("n is 1 (%d), count at %d\n", n, count);

            if(count > longest) {
                longest = count;
                result = i;
                //printf("actual result: %d; longest chain so far: %d\n", result, longest);
            }
            else {
                //printf("tried %d, recalculating...\n", i);
            }
            count = 1;
        }
    }
    printf("number %d produced the longest chain (%d)\n", result, longest);
    return longest;
}