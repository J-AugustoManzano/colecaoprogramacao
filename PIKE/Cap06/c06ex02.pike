// c06ex02.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  array(array(float)) NOTAS = allocate(8, allocate(4));

  for (int I = 0; I <= 7; I++) {
    write("Entre as notas do aluno " + sprintf("%1d", I + 1) + ":\n");
    for (int J = 0; J <= 3; J++) {
      write("Nota " + sprintf("%1d", J + 1) + ": ");
      NOTAS[I][J] = (float)Stdio.stdin->gets();
    }

    write("\n");
  }

  write("\nRELATORIO DE NOTAS\n\n");
  write("Aluno  Nota1  Nota2  Nota3  Nota4\n");
  write("-----  -----  -----  -----  -----\n");

  for (int I = 0; I <= 7; I++) {
    write(sprintf("%5d", I + 1));
    for (int J = 0; J <= 3; J++)
      write(sprintf("%7.1f", NOTAS[I][J]));

    write("\n");
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
