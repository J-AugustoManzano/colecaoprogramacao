// c05ex04.d

import std.stdio;
import std.string;

void main() {
  char RESP;
  int N, R;

  RESP = 'S';
  while (!(RESP.toUpper() != 'S')) {
    write("Entre um valor numerico: ");
    readf(" %d\n", &N);

    R = N * 3;

    writeln("Resultado = ", R);
    writeln();

    write("Deseja continuar? (S/N): ");
    readf(" %c", &RESP);
    readln();

    writeln();
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
