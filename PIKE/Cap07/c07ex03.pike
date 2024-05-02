// c06ex03.pike

#!/usr/bin/env pike

import Stdio;

int A, B;
  
void TROCA()
{
  int X = A;
  A = B;
  B = X;
}

int main()
{
  write("Entre um valor para a variavel <A>: ");
  A = (int)stdin->gets();

  write("Entre um valor para a variavel <B>: ");
  B = (int)stdin->gets();

  TROCA();

  write("\nVariavel <A> com valor " + A + "\n");
  write("Variavel <B> com valor " + B + "\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
