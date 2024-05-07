// c07ex07.d

import std.stdio;
import std.conv;

bool IGUAL(int A, int B) {
  return A == B;
}

void main() {
  int X, Y;

  write("Informe o 1o. valor: ");
  readf(" %d\n", &X);

  write("Informe o 2o. valor: ");
  readf( "%d\n", &Y);

  if (IGUAL(X, Y))
    writeln("Valores sao iguais");
  else
    writeln("Valores sao diferentes");

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
