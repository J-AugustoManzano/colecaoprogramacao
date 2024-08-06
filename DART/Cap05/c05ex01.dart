// c05ex01.dart

import 'dart:io';

void main() {
  int I = 1;
  int N;
  int R;

  while (I <= 5) {
    stdout.write("Entre um valor numerico: ");
    N = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    R = N * 3;

    print("Resultado = $R\n");

    I++;
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
