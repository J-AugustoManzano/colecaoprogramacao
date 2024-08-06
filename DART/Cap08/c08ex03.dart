// c08ex03.dart

import 'dart:io';

void main() {
  List<int> numeros = List.filled(5, 0);
  int x;

  print("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n");

  for (int i = 0; i <= 4; i++) {
    stdout.write("${i + 1}o. numero: ");
    numeros[i] = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  }

  for (int i = 0; i <= 3; i++)
    for (int j = i + 1; j <= 4; j++)
      if (numeros[i] > numeros[j]) {
        x = numeros[i];
        numeros[i] = numeros[j];
        numeros[j] = x;
      }

  print("");
  for (int i = 0; i <= 4; i++)
    print("${i + 1}o. numero: ${numeros[i]}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
