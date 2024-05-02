// c02ex03.pike

#!/usr/bin/env pike

int main() {

  float HT, VH, PD;
  float SB, TD, SL;

  write("CALCULO DE SALARIO LIQUIDO\n\n");

  write("Entre quantidade horas trabalhadas .: ");
  HT = (float)Stdio.stdin->gets();

  write("Entre valor salario-hora ...........: ");
  VH = (float)Stdio.stdin->gets();

  write("Entre valor percentual de desconto .: ");
  PD = (float)Stdio.stdin->gets();

  SB = HT * VH;
  TD = (PD / 100) * SB;
  SL = SB - TD;

  write("\nSalario Bruto ....: " + SB + "\n");
  write("Salario Liquido ..: " + SL + "\n");
  write("\n");

  write("Tecle <Enter> para encerrar... ");
  (void)Stdio.stdin->getchar();

  return 0;
}
