// c04ex05.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  int Mes;

  write("Entre o numero de certo mes: ");
  Mes = (int)stdin->gets();

  switch (Mes)
  {
    case 1:
      write("Janeiro\n");
      break;
    case 2:
      write("Fevereiro\n");
      break;
    case 3:
      write("Marco\n");
      break;
    case 4:
      write("Abril\n");
      break;
    case 5:
      write("Maio\n");
      break;
    case 6:
      write("Junho\n");
      break;
    case 7:
      write("Julho\n");
      break;
    case 8:
      write("Agosto\n");
      break;
    case 9:
      write("Setembro\n");
      break;
    case 10:
      write("Outubro\n");
      break;
    case 11:
      write("Novembro\n");
      break;
    case 12:
      write("Dezembro\n");
      break;
    default:
      write("Mes invalido\n");
      break;
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
