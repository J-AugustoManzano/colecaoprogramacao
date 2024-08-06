// c04ex10.dart

import 'dart:io';

void main() {
  int A;
  int B;
  int X;
  int C;

  stdout.write("Entre valor para a variavel <A>: ");
  A = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Entre valor para a variavel <B>: ");
  B = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Entre valor para a variavel <X>: ");
  X = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (!(X > 5)) {
    C = A - B;
  } else {
    C = A + B;
  }

  print("\nResultado = $C");

  stdout.write("\nPressione <Enter> para encerrar... ");
  stdin.readLineSync();
}
