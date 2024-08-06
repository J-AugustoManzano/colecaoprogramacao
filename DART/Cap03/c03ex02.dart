// c03ex02.dart

import 'dart:io';
import 'dart:math';

void main() {
  double? r;
  double? a;

  stdout.write("Entre valor do raio: ");
  r = double.tryParse(stdin.readLineSync() ?? '');

  a = pi * pow(r!, 2);

  print("Resultado = ${a.toStringAsFixed(2)}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
