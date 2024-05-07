// c08ex04.d

import std.stdio;
import std.string;
import std.algorithm;

void main() {
  string[5] Nomes;
  string X;
  int I, J;

  writeln("CLASSIFICACAO DE NOMES (DECRESCENTE)\n");

  for (I = 0; I <= 4; ++I) {
    writef("Entre o %do. nome: ", I + 1);
    readf(" %s\n", &Nomes[I]);
  }

  for (I = 0; I <= 3; ++I)
    for (J = I + 1; J <= 4; J++)
      if (Nomes[I] < Nomes[J]) {
        X = Nomes[I];
        Nomes[I] = Nomes[J];
        Nomes[J] = X;
      }

  writeln();
  for (I = 0; I <= 4; ++I)
    writefln("%do. nome: %s", I + 1, Nomes[I]);

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
