// c07ex06.d

import std.stdio;

int FATORIAL(int N) {
  int Fat = 1;
  for (int I = 1; I <= N; I++)
    Fat *= I;
  return Fat;
}

void main() {
  int Limite;

  write("Qual fatorial: ");
  readf(" %d\n", &Limite);

  writefln("Fatorial = %d", FATORIAL(Limite));

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
