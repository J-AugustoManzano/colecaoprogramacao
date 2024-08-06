// c05ex05.dart

import 'dart:io';

void main() {
  int I = 1;
  int N;
  int R;

  do {
    stdout.write("Entre um valor numerico: ");
    N = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    R = N * 3;

    print("Resultado = $R\n");

    I++;
  } while (!(I > 5));

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
