// c06ex01.dart

import 'dart:io';

void main() {
  List<double> MD = List.filled(8, 0.0);

  double SOMA = 0.0;
  double MEDIA;

  for (int I = 0; I <= 7; I++) {
    stdout.write("Entre a media do aluno ${I + 1}: ");
    MD[I] = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
    SOMA += MD[I];
  }

  MEDIA = SOMA / 8;

  print("");
  print("Media geral: ${MEDIA.toStringAsFixed(2)}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
