// c04ex02.dart

import 'dart:io';

void main() {
  int A;
  int B;
  int X;

  stdout.write("Entre o 1o. valor numerico: ");
  A = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Entre o 2o. valor numerico: ");
  B = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (A > B) {
    X = A;
    A = B;
    B = X;
  }

  print("Os valores sao: $A e $B.");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
