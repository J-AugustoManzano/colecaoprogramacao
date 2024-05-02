// c08ex04.pike

#!/usr/bin/env pike

import Stdio;

int main() 
{
  array(string) Nomes = allocate(5);
  string X, NomesAux;
  int I, J;

  write("CLASSIFICACAO DE NOMES (DECRESCENTE)\n\n");

  for (I = 0; I <= 4; ++I) {
    write(sprintf("Entre o %1do. nome: ", I + 1));
    NomesAux = stdin->gets();
    Nomes[I] = NomesAux[0..strlen(NomesAux) - 2]; 
  }

  for (I = 0; I <= 3; ++I) {
    for (J = I + 1; J <= 4; ++J) {
      if (Nomes[I] < Nomes[J]) {
        X = Nomes[I];
        Nomes[I] = Nomes[J];
        Nomes[J] = X;
      }
    }
  }

  write("\n");
  for (I = 0; I <= 4; ++I) {
    write(sprintf("%1d.o. nome: %s\n", I + 1, Nomes[I]));
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
