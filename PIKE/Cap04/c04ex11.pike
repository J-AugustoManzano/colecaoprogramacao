// c04ex11.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int N, R4, R5;

  write("Entre um numero inteiro: ");
  N = (int)stdin->gets();

  R4 = N % 4;
  R5 = N % 5;

  if (R4 == 0 && R5 == 0)
    write("Resultado = " + N + "\n");
  else
    write("Valor nao e divisivel por 4 e 5\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
