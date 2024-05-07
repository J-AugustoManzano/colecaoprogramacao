// c05ex10.d

import std.stdio;
import std.string;

void main() {
  char RESP;
  int N, R;

  RESP = 'S';
  loop:
    write("Entre um valor numerico: ");
    readf(" %d\n", &N);

    R = N * 3;

    writeln("Resultado = ", R);
    writeln();

    write("Deseja continuar? (S/N): ");
    readf(" %c", &RESP);
    readln();
    
    if (RESP.toUpper() != 'S') goto endloop;

    writeln();
    goto loop;
  endloop:

  writeln("\n");
  write("Tecle <Enter> para encerrar... ");
  readln();
}
