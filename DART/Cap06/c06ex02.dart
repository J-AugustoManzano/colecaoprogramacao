// c06ex02.dart

import 'dart:io';

void main() {
  List<List<double>> NOTAS = List.generate(8, (_) => List.filled(4, 0.0));

  for (int I = 0; I <= 7; I++) {
    print("Entre as notas do aluno ${I + 1}:");
    for (int J = 0; J <= 3; J++) {
      stdout.write("Nota ${J + 1}: ");
      NOTAS[I][J] = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
    }
    print("");
  }

  print("\nRELATORIO DE NOTAS\n");
  print("Aluno Nota1 Nota2 Nota3 Nota4");
  print("----- ----- ----- ----- -----");
  for (int I = 0; I <= 7; I++) {
    stdout.write("${(I + 1).toString().padLeft(5)}");
    for (int J = 0; J <= 3; J++)
      stdout.write("${NOTAS[I][J].toStringAsFixed(1).padLeft(6)}");
    print("");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
