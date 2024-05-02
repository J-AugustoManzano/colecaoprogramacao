// c04ex04.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  float N1, N2, N3, N4, MD1, NE, MD2;

  write("Entre a 1a. nota .......: ");
  N1 = (float)stdin->gets();

  write("Entre a 2a. nota .......: ");
  N2 = (float)stdin->gets();

  write("Entre a 3a. nota .......: ");
  N3 = (float)stdin->gets();

  write("Entre a 4a. nota .......: ");
  N4 = (float)stdin->gets();

  write("");

  MD1 = (N1 + N2 + N3 + N4) / 4.0;

  if (MD1 >= 7.0) {
    write("Aprovado\n");
    write("Media: " + sprintf("%5.2f", MD1) + "\n");
  } else {
    write("Entre a nota de exame ..: ");
    NE = (float)stdin->gets();

    write("");

    MD2 = (MD1 + NE) / 2.0;

    if (MD2 >= 5.0)
      write("Aprovado em exame\n");
    else
      write("Reprovado\n");

    write("Media: " + sprintf("%5.2f", MD2) + "\n");
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
