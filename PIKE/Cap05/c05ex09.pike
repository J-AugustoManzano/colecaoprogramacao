// c05ex09.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int I, N, R;

  I = 1;

  while (true)
  {
    write("Entre um valor numerico: ");
    N = (int)Stdio.stdin->gets();

    R = N * 3;

    write("Resultado = " + R + "\n\n");

    if (I > 4) break;

    I++;
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
