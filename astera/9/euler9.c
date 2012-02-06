#include <stdio.h>

int main() {
  int a, b, c;
  int num = 1000;
  int result;

  for(a = 1; a < num; a++) {
    for(b = a; b < num; b++) {
      if((a*a + b*b) == ((num - a - b)*(num - a - b))) {
        c = (num - a - b);
        result = a*b*c;
        printf("%d\n", result);
        break;
      }
    }
  }
}
