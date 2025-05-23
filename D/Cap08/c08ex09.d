// c08ex09.d

import std.stdio;

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
  return 0;
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
