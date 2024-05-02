// c06ex09.pike

#!/usr/bin/env pike

import Stdio;

int fatorial_base(int N, int P) 
{
  if (N == 0)
    return P;
  else
    return fatorial_base(N - 1, N * P);
}

int fatorial(int N) 
{
  return fatorial_base(N, 1);
}

int main() 
{
  int LIMITE;

  write("Qual fatorial: ");
  LIMITE = (int)stdin->gets();

  write(sprintf("Fatorial = %d\n", fatorial(LIMITE)));

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
