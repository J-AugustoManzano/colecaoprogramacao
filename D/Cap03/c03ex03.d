// c03ex03.d

import std.stdio;

void main() {
  float HT, VH, PD, SB, TD, SL;

  write("Entre quantidade de horas trabalhadas ..: ");
  readf(" %f\n", &HT);

  write("Entre valor do salario-hora ............: ");
  readf(" %f\n", &VH);

  write("Entre valor do percentual de desconto ..: ");
  readf(" %f\n", &PD);

  SB = HT * VH;
  TD = (PD / 100) * SB;
  SL = SB - TD;

  writeln("\nSalario Bruto ....: ", SB);
  writeln("Salario Liquido ..: ", SL);

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
