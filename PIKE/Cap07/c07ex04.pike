// c06ex04.pike

#!/usr/bin/env pike

import Stdio;

void Fatorial(int N)
{
  int Fat = 1;

  for (int I = 1; I <= N; I++)
    Fat *= I;

  write("Fatorial = " + Fat + "\n");
}

int main()
{
  int Limite;

  write("Qual fatorial: ");
  Limite = (int)stdin->gets();

  Fatorial(Limite);

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
