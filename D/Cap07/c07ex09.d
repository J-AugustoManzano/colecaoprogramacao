// c07ex09.d

import std.stdio;

int FATORIAL_BASE(int N, int P) {
  if (N == 0)
    return P;
  else
    return FATORIAL_BASE(N - 1, N * P);
}

int FATORIAL(int N) {
  return FATORIAL_BASE(N, 1);
}

void main() {
  int LIMITE;

  write("Qual fatorial: ");
  readf(" %d\n", &LIMITE);

  writeln("Fatorial = ", FATORIAL(LIMITE));

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
