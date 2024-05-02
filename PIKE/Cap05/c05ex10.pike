// c05ex10.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  string RESP, RESP_AUX;
  int N, R;

  RESP = "S";

  while (true)
  {
    write("Entre um valor numerico: ");
    N = (int)Stdio.stdin->gets();

    R = N * 3;

    write("Resultado = " + R + "\n\n");

    write("Deseja continuar? (S/N): ");
    RESP_AUX = stdin->gets();
    RESP = RESP_AUX[0..sizeof(RESP_AUX) - 2];
    
    write("\n");
    if (upper_case(RESP) != "S") break;
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}

