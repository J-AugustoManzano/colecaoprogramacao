// c05ex03.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int I, N, R;

  I = 1;

  while (!(I > 5))
  {
    write("Entre um valor numerico: ");
    N = (int)stdin->gets();

    R = N * 3;
    write("Resultado = " + R + "\n\n");

    I++;
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
