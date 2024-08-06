// c03ex03.dart

import 'dart:io';

void main() {
  double? ht;
  double? vh;
  double? pd;
  double sb = 0.0;
  double td = 0.0;
  double sl = 0.0;

  stdout.write("Entre quantidade de horas trabalhadas ..: ");
  ht = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Entre valor do salario-hora ............: ");
  vh = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Entre valor do percentual de desconto ..: ");
  pd = double.tryParse(stdin.readLineSync() ?? '');

  sb = (ht ?? 0.0) * (vh ?? 0.0);
  td = ((pd ?? 0.0) / 100) * sb;
  sl = sb - td;

  print("\nSalario Bruto ....: ${sb.toStringAsFixed(2)}");
  print("Salario Liquido ..: ${sl.toStringAsFixed(2)}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
