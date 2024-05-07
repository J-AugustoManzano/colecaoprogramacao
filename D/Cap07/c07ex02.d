// c07ex02.d

import std.stdio;

void main() {
  int A, B, X;

  write("Entre um valor para a variavel <A>: ");
  readf(" %d\n", &A);

  write("Entre um valor para a variavel <B>: ");
  readf(" %d\n", &B);

  X = A;
  A = B;
  B = X;

  writeln();
  writeln("Variavel <A> com valor ", A);
  writeln("Variavel <B> com valor ", B);

  write();
  write("\nTecle <Enter> para encerrar... ");
  readln();
}
