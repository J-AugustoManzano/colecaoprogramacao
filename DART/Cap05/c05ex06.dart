// c05ex06.dart

import 'dart:io';

void main() {
  String RESP = 'S';
  int N;
  int R;

  do {
    stdout.write("Entre um valor numerico: ");
    N = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    R = N * 3;

    print("Resultado = $R\n");

    stdout.write("Deseja continuar? (S/N): ");
    RESP = stdin.readLineSync()?.toUpperCase() ?? 'N';

    print("");
  } while (!(RESP != 'S'));

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
