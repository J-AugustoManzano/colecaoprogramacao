// c08ex10.d

import std.stdio;

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

void main() {
  int I;
  for (I = 0; I <= 14; I++) {
    writefln("%2d - %d", I, Fibonacci(I));
  }
  
  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
