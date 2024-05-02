// c08ex01.pike

#!/usr/bin/env pike

import Stdio;

int validaInteiro(string Numero) 
{
  for (int i = 0; i < sizeof(Numero); i++)
    if (!(Numero[i] >= '0' && Numero[i] <= '9'))
      return 0;
  return 1;
}

int main() 
{
  string Numero, NumAux;

  do {
    write("Entre um valor numerico inteiro: ");
    NumAux = Stdio.stdin->gets();
    Numero = NumAux[0..sizeof(NumAux) - 2];

    if (strlen(Numero) == 0) {
      write("\nErro: Tecla <Enter> acionada acidentalmente.\n\n");
      continue;
    }

    if (!validaInteiro(Numero)) {
      write("\nErro: Entre um numero inteiro.\n\n");
      continue;
    }

    break;
  } while (true);

  write("\nEntrada valida fornecida: " + Numero + "\n");

  write("\n");
  write("Tecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
