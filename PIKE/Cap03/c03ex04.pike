// c03ex04.pike

#!/usr/bin/env pike

import Stdio;

int main() {

  float HT, VH, PD;
  float SB, TD, SL;

  write("CALCULO DE SALARIO LIQUIDO\n\n");

  write("Entre quantidade horas trabalhadas .: ");
  HT = (float)stdin->gets();

  write("Entre valor salario-hora ...........: ");
  VH = (float)stdin->gets();

  write("Entre valor percentual de desconto .: ");
  PD = (float)stdin->gets();

  SB = HT * VH;
  TD = (PD / 100) * SB;
  SL = SB - TD;

  write("\nSalario Bruto ....: " + sprintf("%9.2f", SB) + "\n");
  write("Salario Liquido ..: " + sprintf("%9.2f", SL) + "\n");
  write("\n");

  write("Tecle <Enter> para encerrar... ");
  (void)stdin->getchar();

  return 0;
}
