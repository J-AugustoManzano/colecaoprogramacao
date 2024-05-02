// c05ex11.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int I, N, R;

  for (I = 1; I <= 5; I++)
  {
    write("Entre um valor numerico: ");
    N = (int)stdin->gets();

    R = N * 3;

    write("Resultado = " + R + "\n\n");
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
