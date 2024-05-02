// c06ex07.pike

#!/usr/bin/env pike

import Stdio;

bool IGUAL(int A, int B)
{
  return A == B;
}

int main()
{
  int X, Y;

  write("Informe o 1o. valor: ");
  X = (int)stdin->gets();

  write("Informe o 2o. valor: ");
  Y = (int)stdin->gets();

  if (IGUAL(X, Y))
    write("Valores sao iguais\n");
  else
    write("Valores sao diferentes\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
