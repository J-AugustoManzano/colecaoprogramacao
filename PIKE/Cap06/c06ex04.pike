// c06ex02.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  array(string) A;
  int N, I;
  string AUX;

  write("Entre a quantidade de elementos da matriz: ");
  N = (int)stdin->gets();
  write("\n");
  
  A = allocate(N);

  for (I = 0; I <= N - 1; ++I) {
    write(sprintf("Entre o %do. nome: ", I + 1));
    AUX = stdin->gets();
    A[I] = AUX[0..strlen(AUX) - 2];
  }

  write("\n");
  write("Foram fornecidos os nomes:\n\n");

  for (I = 0; I <= N - 1; ++I)
    write(sprintf("Nome %d = %s\n", I + 1, A[I]));

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
