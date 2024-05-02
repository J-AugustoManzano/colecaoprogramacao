// c04ex02.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int A, B, X;

  write("Entre o 1o. valor numerico: ");
  A = (int)stdin->gets();

  write("Entre o 2o. valor numerico: ");
  B = (int)stdin->gets();

  if (A > B) {
    X = A;
    A = B;
    B = X;
  }

  write("Os valores sao: " + A + " e " + B + ".\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
