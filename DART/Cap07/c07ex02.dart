// c07ex02.dart

import 'dart:io';

void main() {
  int A;
  int B;
  int X;

  stdout.write("Entre um valor para a variavel <A>: ");
  A = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Entre um valor para a variavel <B>: ");
  B = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  X = A;
  A = B;
  B = X;

  print("");
  print("Variavel <A> com valor $A");
  print("Variavel <B> com valor $B");

  stdout.write("\nPressione <Enter> para encerrar... ");
  stdin.readLineSync();
}
