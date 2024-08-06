// c04ex01.dart

import 'dart:io';

void main() {
  int A;
  int B;
  int X;

  stdout.write("Entre o 1o. valor numerico: ");
  A = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Entre o 2o. valor numerico: ");
  B = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  X = A + B;

  if (X > 10)
    print("Resultado = $X");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
