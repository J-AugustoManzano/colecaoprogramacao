// c04ex03.d

import std.stdio;

void main() {
  int A, B, X, R;

  write("Entre o 1o. valor numerico: ");
  readf(" %d", &A);
  readln();

  write("Entre o 2o. valor numerico: ");
  readf(" %d", &B);
  readln();

  X = A + B;

  if (X >= 10)
    R = X + 5;
  else
    R = X - 7;

  writeln("Resultado = ", R);

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
