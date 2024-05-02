// c08ex09.pike

#!/usr/bin/env pike

import Stdio;

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
  return 0; // valor padrão para evitar erros de compilação
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
