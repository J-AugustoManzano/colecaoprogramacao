// c03ex01.dart

import 'dart:io';

void main() {
  int? A;
  int? B;
  int? X;

  stdout.write("Entre o 1o. valor numérico inteiro: ");
  A = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Entre o 2o. valor numérico inteiro: ");
  B = int.tryParse(stdin.readLineSync() ?? '');

  X = A! + B!;
  print("Resultado = $X");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
