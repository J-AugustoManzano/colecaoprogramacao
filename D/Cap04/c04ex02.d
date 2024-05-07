// c04ex02.d

import std.stdio;

void main() {
  int A, B, X;

  write("Entre o 1o. valor numerico: ");
  readf(" %d", &A);
  readln();

  write("Entre o 2o. valor numerico: ");
  readf(" %d", &B);
  readln();

  if (A > B) {
    X = A;
    A = B;
    B = X;
  }

  writeln("Os valores sao: ", A, " e ", B);

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
