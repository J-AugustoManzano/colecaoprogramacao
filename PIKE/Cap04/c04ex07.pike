// c04ex07.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int Numero;

  write("Entre um numero inteiro: ");
  Numero = (int)stdin->gets();

  if ((Numero >= 20) && (Numero <= 90))
    write("O numero esta na faixa de 20 a 90.\n");
  else
    write("O numero esta fora da faixa de 20 a 90.\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
