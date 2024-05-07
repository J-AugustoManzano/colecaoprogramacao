// c04ex10.d

import std.stdio;

void main() {
  int A, B, X, D;

  write("Entre valor para a variavel <A>: ");
  readf(" %d\n", &A);

  write("Entre valor para a variavel <B>: ");
  readf(" %d\n", &B);

  write("Entre valor para a variavel <X>: ");
  readf(" %d\n", &X);

  if (!(X > 5))
    D = A + B;
  else
    D = A - B;

  writeln();
  writeln("Resultado = ", D);

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
