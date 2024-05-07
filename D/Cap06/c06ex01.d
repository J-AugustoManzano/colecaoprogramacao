// c06ex01.d

import std.stdio;

void main() {
  float[8] MD;
  float SOMA = 0.0, MEDIA;

  for (int I = 0; I <= 7; ++I) {
    write("Entre a media do aluno ", I + 1, ": ");
    readf(" %f\n", &MD[I]);

    SOMA += MD[I];
  }

  MEDIA = SOMA / 8;

  writeln();
  writefln("Media geral: %.2f", MEDIA);

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
