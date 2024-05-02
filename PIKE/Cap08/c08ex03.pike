// c08ex03.pike

#!/usr/bin/env pike

import Stdio;

int main() {
  array(int) Numeros = allocate(5);
  int I, J, X;

  write("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n\n");

  for (I = 0; I <= 4; ++I) {
    write("Entre o " + sprintf("%1d", I + 1) + "o. numero: ");
    Numeros[I] = stdin->gets();
  }

  for (I = 0; I <= 3; ++I) {
    for (J = I + 1; J <= 4; ++J) {
      if (Numeros[I] > Numeros[J]) {
        X = Numeros[I];
        Numeros[I] = Numeros[J];
        Numeros[J] = X;
      }
    }
  }

  write("\n");
  for (I = 0; I <= 4; ++I) {
    write(sprintf("%1d", I + 1) + "o. numero: " + Numeros[I] + "\n");
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
