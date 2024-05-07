// c04ex04.d

import std.stdio;

void main() {
  float N1, N2, N3, N4, NE, MD1, MD2;

  write("Entre a 1a. nota .......: ");
  readf(" %f", &N1);
  readln();

  write("Entre a 2a. nota .......: ");
  readf(" %f", &N2);
  readln();

  write("Entre a 3a. nota .......: ");
  readf(" %f", &N3);
  readln();

  write("Entre a 4a. nota .......: ");
  readf(" %f", &N4);
  readln();
  writeln();

  MD1 = (N1 + N2 + N3 + N4) / 4;

  if (MD1 >= 7) {
    writeln("Aprovado");
    writefln("Media: %.2f", MD1);
  } else {
    write("Entre a nota de exame ..: ");
    readf(" %f", &NE);
    readln();
    writeln();

    MD2 = (MD1 + NE) / 2;

    if (MD2 >= 5)
      writeln("Aprovado em exame");
    else
      writeln("Reprovado");
    writefln("Media: %.2f", MD2);
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
