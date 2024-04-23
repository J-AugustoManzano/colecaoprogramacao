// c08ex09.c

#include <stdio.h>

int Fibonacci(int N) {
  if (N == 0) {
    return 0;
  }
  if (N == 1) {
    return 1;
  }
  if (N >= 2) {
    return Fibonacci(N - 1) + Fibonacci(N - 2);
  }
}

int main(void) {
  int I;
  for (I = 0; I <= 14; I++) {
    printf("%2d - %d\n", I, Fibonacci(I));
  }
  printf("\n");
  printf("Tecle <Enter> para encerrar... ");
  while (getchar() != '\n');
  return 0;
}
