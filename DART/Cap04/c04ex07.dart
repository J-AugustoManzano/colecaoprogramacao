// c04ex07.dart

import 'dart:io';

void main() {
  int Numero = 0;

  stdout.write("Entre um numero inteiro: ");
  Numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (Numero >= 20 && Numero <= 90) {
    print("O numero esta na faixa de 20 a 90.");
  } else {
    print("O numero esta fora da faixa de 20 a 90.");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
