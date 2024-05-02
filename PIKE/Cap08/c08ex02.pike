// c08ex02.pike

#!/usr/bin/env pike

import Stdio;

int validaNumero(string Numero) 
{
  int pontoDecimal = 0;

  if (sizeof(Numero) == 0)
    return 0;

  for (int i = 0; i < sizeof(Numero); i++) {
    if (!(Numero[i] >= '0' && Numero[i] <= '9')) {
      if (Numero[i] == '.' && pontoDecimal == 0) {
        pontoDecimal = 1;
        continue;
      }
      return 0;
    }
  }
  return 1;
}

int main() 
{
  string Numero, NumAux;

  do {
    write("Entre um valor numerico: ");
    NumAux = Stdio.stdin->gets();
    Numero = NumAux[0..sizeof(NumAux) - 2];

    if (strlen(Numero) == 0) {
      write("\nErro: Tecla <Enter> acionada acidentalmente.\n\n");
      continue;
    }

    if (!validaNumero(Numero)) {
      write("\nErro: Entre um numero valido.\n\n");
      continue;
    }

    break;
  } while (true);

  write("\nEntrada valida fornecida: " + Numero + "\n");

  write("\n");
  write("Tecle <Enter> para encerrar... ");
  Stdio.stdin->getchar();

  return 0;
}
