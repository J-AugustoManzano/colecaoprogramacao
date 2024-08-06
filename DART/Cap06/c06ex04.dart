// c06ex04.dart

import 'dart:io';

void main() {
  int N;
  List<String> A = [];

  stdout.write("Entre a quantidade de elementos da matriz: ");
  N = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("");

  for (int i = 0; i <= N - 1; i++) {
    stdout.write("Entre o ${i + 1}o. nome: ");
    A.add(stdin.readLineSync() ?? "");
  }

  print("");
  print("Foram fornecidos os nomes:");
  print("");

  for (int i = 0; i <= N - 1; i++) {
    print("Nome ${i + 1} = ${A[i]}");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
