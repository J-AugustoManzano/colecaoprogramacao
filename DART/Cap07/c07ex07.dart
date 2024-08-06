// c07ex07.dart

import 'dart:io';

bool igual(int A, int B) {
  return A == B;
}

void main() {
  int x;
  int y;

  stdout.write("Informe o 1o. valor: ");
  x = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Informe o 2o. valor: ");
  y = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (igual(x, y)) {
    print("Valores sao iguais");
  } else {
    print("Valores sao diferentes");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
