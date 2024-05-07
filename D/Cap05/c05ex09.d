// c05ex09.d

import std.stdio;

void main() {

  int I, N, R;

  I = 1;
  loop:
    write("Entre um valor numerico: ");
    readf("%d", &N);
    readln();

    R = N * 3;

    writeln("Resultado = ", R);
    writeln();

    if (I > 4) goto endloop;
    ++I;

    goto loop;
  endloop:

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
