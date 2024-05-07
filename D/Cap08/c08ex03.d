// c08ex03.d

import std.stdio;

void main() {
  int[5] Numeros;
  int I, J, X;

  writeln("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n");

  for (I = 0; I <= 4; ++I) {
    writef("Entre o %do. numero: ", I + 1);
    readf(" %d\n", &Numeros[I]);
  }

  for (I = 0; I <= 3; ++I)
    for (J = I + 1; J <= 4; ++J)
      if (Numeros[I] > Numeros[J]) {
        X = Numeros[I];
        Numeros[I] = Numeros[J];
        Numeros[J] = X;
      }

  writeln("\n");
  for (I = 0; I <= 4; ++I)
    writefln("%do. numero: %d", I + 1, Numeros[I]);

  writeln("\n");
  write("Tecle <Enter> para encerrar... ");
  readln();
}
