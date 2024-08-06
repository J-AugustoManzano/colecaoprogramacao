// c05ex09.dart

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

    if (I > 4) break;
    I++;
  } while (true);

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
