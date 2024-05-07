// c07ex08.d

import std.stdio;

int FATORIAL(int N) {
  if (N == 0)
    return 1;
  else
    return N * FATORIAL(N - 1);
}

void main() {
  int Limite;

  write("Qual fatorial: ");
  readf(" %d\n", &Limite);

  writeln("Fatorial = ", FATORIAL(Limite));

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
