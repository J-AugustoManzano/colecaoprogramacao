// c06ex08.pike

#!/usr/bin/env pike

import Stdio;

int FATORIAL(int N)
{
  if (N == 0)
    return 1;
  else
    return N * FATORIAL(N - 1);
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
