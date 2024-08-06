// c05ex10.dart

import 'dart:io';

void main() {
  String RESP;
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
    if (RESP != 'S') break;
  } while (true);

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
