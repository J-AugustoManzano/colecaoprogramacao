// c08ex10.pike

#!/usr/bin/env pike

import Stdio;

int FibonacciBase(int N, int X, int Y) {
  if (N == 0) {
    return X;
  } else if (N == 1) {
    return Y;
  } else {
    return FibonacciBase(N - 1, Y, X + Y);
  }
}

int Fibonacci(int N) {
  return FibonacciBase(N, 0, 1);
}

int main() {
  int I;

  for (I = 0; I <= 14; I++) {
    write(sprintf("%d - %d\n", I, Fibonacci(I)));
  }
  
  write("\n");
  write("Tecle <Enter> para encerrar... ");
  Stdio.stdin->getchar();

  return 0;
}
