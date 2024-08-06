// c08ex04.dart

import 'dart:io';

void main() {
  List<String> nomes = List.filled(5, "");
  String x;

  print("CLASSIFICACAO DE NOMES (DECRESCENTE)\n");

  for (int i = 0; i <= 4; i++) {
    stdout.write("${i + 1}o. nome: ");
    nomes[i] = stdin.readLineSync() ?? "";
  }

  for (int i = 0; i <= 3; i++)
    for (int j = i + 1; j <= 4; j++)
      if (nomes[i].compareTo(nomes[j]) > 0) {
        x = nomes[i];
        nomes[i] = nomes[j];
        nomes[j] = x;
      }

  print("");
  for (int i = 0; i <= 4; i++)
    print("${5 - i}o. nome: ${nomes[i]}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
