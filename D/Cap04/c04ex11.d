// c04ex11.d

import std.stdio;

void main() {
  int N, R4, R5;

  write("Entre um numero inteiro: ");
  readf(" %d\n", &N);

  R4 = N % 4;
  R5 = N % 5;

  if (R4 == 0 && R5 == 0)
    writeln("Resultado = ", N);
  else
    writeln("Valor nao e divisivel por 4 e 5");

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
