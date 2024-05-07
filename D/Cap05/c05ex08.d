// c05ex08.d

import std.stdio;
import std.string;

void main() {
  char RESP;
  int N, R;

  RESP = 'S';
  do {
    write("Entre um valor numerico: ");
    readf(" %d\n", &N);

    R = N * 3;

    writeln("Resultado = ", R);
    writeln();

    write("Deseja continuar? (S/N): ");
    readf(" %c", &RESP);
    readln();

    writeln();
  } while (RESP.toUpper() == 'S');

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
