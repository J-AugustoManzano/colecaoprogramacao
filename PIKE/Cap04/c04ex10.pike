// c04ex10.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int A, B, X, C;

  write("Entre valor para a variavel <A>: ");
  A = (int)stdin->gets();

  write("Entre valor para a variavel <B>: ");
  B = (int)Stdio.stdin->gets();

  write("Entre valor para a variavel <X>: ");
  X = (int)stdin->gets();

  if (!(X > 5))
    C = A + B;
  else
    C = A - B;

  write("\n");
  write("Resultado = " + C + "\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
