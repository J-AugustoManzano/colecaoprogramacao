// c04ex03.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int A, B, X, R;

  write("Entre o 1o. valor numerico: ");
  A = (int)stdin->gets();

  write("Entre o 2o. valor numerico: ");
  B = (int)stdin->gets();

  X = A + B;

  if (X >= 10)
    R = X + 5;
  else
    R = X - 7;

  write("Resultado = " + R + "\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
