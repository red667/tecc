#include <stdio.h>

#define ARRAY_SIZE 20
    
int go_right(int array[ARRAY_SIZE][ARRAY_SIZE], int i, int j) {
  if(j > ARRAY_SIZE - 4) {
    return 0;
  } else {
    int x;
    int product = 1;
    for(x = 0; x < 4; x++) {
      product *= array[i][j + x];
    }
    return product;
  }
}

int go_down(int array[ARRAY_SIZE][ARRAY_SIZE], int i, int j) {   
  if(i > ARRAY_SIZE - 4) {
    return 0;
  } else {
    int x;
    int product = 1;
    for(x = 0; x < 4; x++) {
      product *= array[i + x][j];
    }
    return product;
  }
}

int go_downRight(int array[ARRAY_SIZE][ARRAY_SIZE], int i, int j) {    
  if((i > ARRAY_SIZE - 4) || (j > ARRAY_SIZE - 4)) {
    return 0;
  } else {
    int x;
    int product = 1;
    for(x = 0; x < 4; x++) {
      product *= array[i + x][j + x];
    }
    return product;
  }
}

int go_downLeft(int array[ARRAY_SIZE][ARRAY_SIZE], int i, int j) {    
  if((i < 3) || (j > ARRAY_SIZE - 4)) {
    return 0;
  } else {
    int x;
    int product = 1;
    for(x = 0; x < 4; x++) {
      product *= array[i - x][j + x];
    }
    return product;
  }
}

int main() {
  FILE *fp;
  fp = fopen("euler11.txt", "rb");	
  int array[ARRAY_SIZE][ARRAY_SIZE];
  int line[64];
  int product = 1;
  int number;
  int i, j, k, x, y;
  int greatest = 0;

  for(i = 0; i < ARRAY_SIZE; i++) {
    for(j = 0; j < ARRAY_SIZE; j++) {
      if(fscanf(fp, "%d", &number) == -1) {}		
      array[i][j] = number;
      if((k = fgetc(fp)) == '\n') {
          break;
      }
    }
  }
  for(j = 0; j < ARRAY_SIZE; j++) {
    for(i = 0; i < ARRAY_SIZE; i++) {
      product = go_right(array, i, j);
      if(product > greatest) {
        greatest = product;
      }
      product = go_down(array, i, j);
      if(product > greatest) {
        greatest = product;
      }
      product = go_downRight(array, i, j);
      if(product > greatest) {
        greatest = product;
      }
      product = go_downLeft(array, i, j);
      if(product > greatest) {
        greatest = product;
      }
    }
  }
  printf("greatest product is %d\n", greatest);
}
