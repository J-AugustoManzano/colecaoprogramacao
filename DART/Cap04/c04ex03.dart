// c04ex03.dart

import 'dart:io';

void main() {
  int A;
  int B;
  int X;
  int R;

  stdout.write("Entre o 1o. valor numerico: ");
  A = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Entre o 2o. valor numerico: ");
  B = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  X = A + B;

  if (X >= 10)
    R = X + 5;
  else
    R = X - 7;

  print("Resultado = $R");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
