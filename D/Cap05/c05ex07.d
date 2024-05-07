// c05ex07.d

import std.stdio;

void main() {
  int I, N, R;

  I = 1;
  do {

    write("Entre um valor numerico: ");
    readf(" %d\n", &N);

    R = N * 3;

    writeln("Resultado = ", R);
    writeln();

    I++;
  } while (I <= 5);

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
