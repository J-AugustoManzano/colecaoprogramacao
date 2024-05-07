// c04ex01.d

import std.stdio;

void main() {
  int A, B, X;

  write("Entre o 1o. valor numerico: ");
  readf(" %d", &A);
  readln();

  write("Entre o 2o. valor numerico: ");
  readf(" %d", &B);
  readln();

  X = A + B;

  if (X > 10)
    writeln("Resultado = ", X);

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
