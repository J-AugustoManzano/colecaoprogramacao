// c08ex10.c

#include <stdio.h>

int FibonacciBase(int N, int X, int Y) {
    if (N == 0)
        return X;
    if (N == 1)
        return Y;
    if (N == 2)
        return X + Y;
    if (N >= 2)
        return FibonacciBase(N - 1, Y, X + Y);
    return 0;
}

int Fibonacci(int N) {
  return FibonacciBase(N, 0, 1);
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
