// c05ex08.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  string RESP, RESP_AUX;
  int N, R;

  RESP = "S";

  do
  {
    write("Entre um valor numerico: ");
    N = (int)stdin->gets();

    R = N * 3;
    write("Resultado = " + R + "\n");

    write("\nDeseja continuar? (S/N): ");
    RESP_AUX = stdin->gets();
    RESP = RESP_AUX[0..sizeof(RESP_AUX) - 2];
    write("\n");
  }
  while (upper_case(RESP) == "S");
  
  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
