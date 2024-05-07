// c03ex01.d

import std.stdio;

void main()
{
  int A, B, X;

  write("Entre o 1o. valor numerico inteiro: ");
  readf(" %d\n", &A);

  write("Entre o 2o. valor numerico inteiro: ");
  readf(" %d\n", &B);

  X = A + B;

  writeln("Resultado = ", X);

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
