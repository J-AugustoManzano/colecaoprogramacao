// c04ex01.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int A, B, X;
  
  write("Entre o 1o. valor numerico: ");
  A = (int)stdin->gets();
  
  write("Entre o 2o. valor numerico: ");
  B = (int)stdin->gets();
  
  X = A + B;

  if (X > 10)
    write("Resultado = " + X + "\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
