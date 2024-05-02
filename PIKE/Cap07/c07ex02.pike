// c06ex02.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int A, B, X;

  write("Entre um valor para a variavel <A>: ");
  A = (int)stdin->gets();

  write("Entre um valor para a variavel <B>: ");
  B = (int)stdin->gets();

  X = A;
  A = B;
  B = X;

  write("\nVariavel <A> com valor " + A + "\n");
  write("Variavel <B> com valor " + B + "\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
