// c03ex04.dart

import 'dart:io';

String fmtNumero(double numero, int totalDigitos, 
                 int decimalDigitos) {
  final int inteiro = totalDigitos - decimalDigitos - 1;
  final int decimal = decimalDigitos;
  final String nrFormatado = numero.toStringAsFixed(decimal).
    replaceAll('.', ',');
  final List<String> parte = nrFormatado.split(',');
  final String inteiroParte = parte[0].padLeft(inteiro, ' ');
  final String decimalParte = parte[1].padRight(decimal, '0');
  return '$inteiroParte.$decimalParte';
}

void main() {
  double ht;
  double vh;
  double pd;
  double sb;
  double td;
  double sl;

  stdout.write("Entre quantidade de horas trabalhadas ..: ");
  ht = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Entre valor do salario-hora ............: ");
  vh = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Entre valor do percentual de desconto ..: ");
  pd = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  sb = ht * vh;
  td = (pd / 100) * sb;
  sl = sb - td;

  print("\nSalario Bruto ....: ${fmtNumero(sb, 9, 2)}");
  print("Salario Liquido ..: ${fmtNumero(sl, 9, 2)}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
