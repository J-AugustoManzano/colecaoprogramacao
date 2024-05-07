// c03ex04.d

import std.stdio;
import std.format;

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

  writeln("\nSalario Bruto ....: ", format("%9.2f", SB));
  writeln("Salario Liquido ..: ", format("%9.2f", SL));

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
