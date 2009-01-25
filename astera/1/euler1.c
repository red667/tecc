#include <stdio.h>

int main()
{
	int i = 1;
	int n = 1000;
	int sum = 0;
	for(i = 1; i < n; i++)
	{
		if(i % 3 == 0 || i % 5 == 0)
		{
			sum += i;
		}
	}
	printf ("The sum of all natural numbers below %d that are multiples of 3 or 5 is %d.\n", n, sum);
}
