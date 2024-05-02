// c04ex06.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  float A, B;
  int Opcao;

  write("Entre o 1o. valor numerico: ");
  A = (float)stdin->gets();

  write("Entre o 2o. valor numerico: ");
  B = (float)stdin->gets();

  write("\nEscolha uma opcao de menu:\n\n");
  write("[1] - Adicao\n");
  write("[2] - Subtracao\n");
  write("[3] - Multiplicacao\n");
  write("[4] - Divisao\n\n");

  write("==> ");
  Opcao = (int)stdin->gets();

  write("\n");

  switch (Opcao)
  {
    case 1:
      write("Calculo de adicao\n");
      write("Resultado: " + sprintf("%5.2f", A + B) + "\n");
      break;
    case 2:
      write("Calculo de subtracao\n");
      write("Resultado: " + sprintf("%5.2f", A - B) + "\n");
      break;
    case 3:
      write("Calculo de multiplicacao\n");
      write("Resultado: " + sprintf("%5.2f", A * B) + "\n");
      break;
    case 4:
      write("Calculo de divisao\n");
      mixed retorno = catch {
        write("Resultado: " + sprintf("%5.2f", A / B) + "\n");
      };
      if (retorno != 0)
        write("Resultado: ERRO\n");
      break;
    default:
      write("Entrada invalida\n");
      write("Tente novamente em outro momento\n");
      break;
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
