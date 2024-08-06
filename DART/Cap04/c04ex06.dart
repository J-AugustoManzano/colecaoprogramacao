// c04ex06.dart

import 'dart:io';

void main() {
  double A;
  double B;
  int Opcao;

  stdout.write("Entre o 1o. valor numerico: ");
  A = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Entre o 2o. valor numerico: ");
  B = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  print("");
  print("Escolha uma opcao de menu:");
  print("");
  print("[1] - Adicao");
  print("[2] - Subtracao");
  print("[3] - Multiplicacao");
  print("[4] - Divisao");
  print("");

  stdout.write("==> ");
  Opcao = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print("");

  switch (Opcao) {
    case 1:
      print("Calculo de adicao");
      print("Resultado: ${(A + B).toStringAsFixed(2)}");
      break;
    case 2:
      print("Calculo de subtracao");
      print("Resultado: ${(A - B).toStringAsFixed(2)}");
      break;
    case 3:
      print("Calculo de multiplicacao");
      print("Resultado: ${(A * B).toStringAsFixed(2)}");
      break;
    case 4:
      print("Calculo de divisao");
      if (B == 0.0) {
        print("Resultado: ERRO");
      } else {
        print("Resultado: ${(A / B).toStringAsFixed(2)}");
      }
      break;
    default:
      print("Entrada invalida");
      print("Tente novamente em outro momento");
      break;
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
