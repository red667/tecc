#include <stdio.h>

int funct1(int count) {
	int i = 1;
	int sum1 = 0;
	for (i = 1; i <= count; i++) {
		sum1 += i*i;
	}
	return sum1;
}

int funct2(int count) {
	int sum2 = count / 2 * (1 + count);
	return sum2*sum2;
}

void main() {
	int count = 100;
	int diff = funct2(count) - funct1(count);
	printf ("%d\n", diff);
}