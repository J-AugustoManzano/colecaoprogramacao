// c03ex02.d

import std.stdio;
import std.math;
import std.format;

void main() {
  float R, A;

  write("Entre valor do raio: ");
  readf(" %f\n", &R);

  A = PI * pow(R, 2);

  writeln("Resultado = ", format("%.2f", A));

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
