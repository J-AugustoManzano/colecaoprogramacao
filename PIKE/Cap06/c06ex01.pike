// c06ex01.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  array(float) MD = allocate(8);
  float SOMA, MEDIA;

  SOMA = 0.0;

  for (int I = 0; I <= 7; I++) {
    write("Entre a media do aluno " + sprintf("%1d", I + 1) + ": ");
    MD[I] = (float)stdin->gets();

    SOMA += MD[I];
  }

  MEDIA = SOMA / 8.0;

  write("\nMedia geral: " + sprintf("%.2f", MEDIA) + "\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
