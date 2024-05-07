// c05ex11.d

import std.stdio;

void main() {
  int I, N, R;

  for (I = 1; I <= 5; I++) {
    write("Entre um valor numerico: ");
    readf(" %d\n", &N);

    R = N * 3;

    writeln("Resultado = ", R);
    writeln();
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
