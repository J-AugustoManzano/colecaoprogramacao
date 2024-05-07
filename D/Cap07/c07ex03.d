// c07ex03.d

import std.stdio;

int A, B;
  
void TROCA() {
  int X = A;
  A = B;
  B = X;
}

void main() {
  write("Entre um valor para a variavel <A>: ");
  readf(" %d\n", &A);

  write("Entre um valor para a variavel <B>: ");
  readf(" %d\n", &B);

  TROCA();

  writeln();
  writeln("Variavel <A> com valor ", A);
  writeln("Variavel <B> com valor ", B);

  write();
  write("\nTecle <Enter> para encerrar... ");
  readln();
}
