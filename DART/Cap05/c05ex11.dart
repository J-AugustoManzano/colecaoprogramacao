// c05ex11.dart

import 'dart:io';

void main() {
  int N;
  int R;

  for (int I = 1; I <= 5; I++) {
    stdout.write("Entre um valor numerico: ");
    N = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    R = N * 3;

    print("Resultado = $R\n");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
