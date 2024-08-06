// c07ex03.dart

import 'dart:io';

int A = 0;
int B = 0;

void troca() {
  int X = A;
  A = B;
  B = X;
}

void main() {
  stdout.write("Entre um valor para a variavel <A>: ");
  A = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Entre um valor para a variavel <B>: ");
  B = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  troca();

  print("");
  print("Variavel <A> com valor $A");
  print("Variavel <B> com valor $B");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
