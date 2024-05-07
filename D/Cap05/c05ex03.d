// c05ex03.d

import std.stdio;

void main() {
  int I, N, R;

  I = 1;
  while (!(I > 5)) {

    write("Entre um valor numerico: ");
    readf(" %d\n", &N);

    R = N * 3;

    writeln("Resultado = ", R);
    writeln();

    I++;
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
