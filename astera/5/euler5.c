#include <stdio.h>
#include <stdbool.h>

bool modzero(int num)
{
	int j = 1;
	for (j = 1; j <= 20; j++) {
		if (num % j) {
      return false;
    }
  }
	return true;
}

int main() {
	int i = 1;
	while (true) {
		if (modzero(i)) {
			printf ("The number is %d\n", i);
			break;
		}
		i++;
	}
}
