// c06ex06.pike

#!/usr/bin/env pike

import Stdio;

int FATORIAL(int N)
{
  int Fat = 1;
  for (int I = 1; I <= N; I++)
    Fat *= I;
  return Fat;
}

int main()
{
  int Limite;

  write("Qual fatorial: ");
  Limite = (int)stdin->gets();

  write("Fatorial = " + FATORIAL(Limite) + "\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
