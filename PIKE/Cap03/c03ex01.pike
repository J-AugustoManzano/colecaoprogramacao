// c02ex01.pike

#!/usr/bin/env pike

int main()
{
  int A;
  int B;
  int X;

  write("ADICAO DE NUMEROS\n\n");

  write("Entre o 1o. valor numerico inteiro: ");
  A = (int)Stdio.stdin->gets();

  write("Entre o 2o. valor numerico inteiro: ");
  B = (int)Stdio.stdin->gets();

  X = A + B;

  write("Resultado da adicao = " + X + "\n\n");

  write("Tecle <Enter> para encerrar... ");
  (void)Stdio.stdin->gets();

  return 0;
}
