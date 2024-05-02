// c06ex05.pike

#!/usr/bin/env pike

import Stdio;

void FATORIAL(int N, array(int) Fat) {
  Fat[0] = 1;
  for (int I = 1; I <= N; I++)
    Fat[0] *= I;
}

int main()
{
  array(int) Resp = allocate(1);
  int Limite;

  write("Qual fatorial: ");
  Limite = (int)stdin->gets();

  FATORIAL(Limite, Resp);

  write("Fatorial = " + Resp[0] + "\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
