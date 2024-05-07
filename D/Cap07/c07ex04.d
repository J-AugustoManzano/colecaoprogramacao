// c07ex04.d

import std.stdio;

void Fatorial(int N) {
  int Fat = 1;
  for (int I = 1; I <= N; I++)
    Fat *= I;
  writefln("Fatorial = %d", Fat);
}

int Limite;

void main() {
  write("Qual fatorial: ");
  readf(" %d\n", &Limite);

  Fatorial(Limite);

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
