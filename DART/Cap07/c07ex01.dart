// c07ex01.dart

import 'dart:io';

void rotAdicao() {
  print("");
  print("Rotina de Adicao");
  print("");
  stdout.write("Entre o 1o. valor: ");
  double a1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  stdout.write("Entre o 2o. valor: ");
  double b1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  print("");
  double r1 = a1 + b1;
  print("O resultado da operacao equivale a: $r1");
  print("");
}

void rotSubtracao() {
  print("");
  print("Rotina de Subtracao");
  print("");
  stdout.write("Entre o 1o. valor: ");
  double a2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  stdout.write("Entre o 2o. valor: ");
  double b2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  print("");
  double r2 = a2 - b2;
  print("O resultado da operacao equivale a: $r2");
  print("");
}

void rotMultiplicacao() {
  print("");
  print("Rotina de Multiplicacao");
  print("");
  stdout.write("Entre o 1o. valor: ");
  double a3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  stdout.write("Entre o 2o. valor: ");
  double b3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  print("");
  double r3 = a3 * b3;
  print("O resultado da operacao equivale a: $r3");
  print("");
}

void rotDivisao() {
  print("");
  print("Rotina de Divisao");
  print("");
  stdout.write("Entre o 1o. valor: ");
  double a4 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  stdout.write("Entre o 2o. valor: ");
  double b4 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  print("");
  if (b4 == 0.0) {
    print("O resultado da operacao equivale a: ERRO");
  } else {
    double r4 = a4 / b4;
    print("O resultado da operacao equivale a: $r4");
  }
  print("");
}

void main() {
  int opcao = 0;
  while (opcao != 5) {
    print("CALCULADORA - V1");
    print("");
    print("[1] - Adicao");
    print("[2] - Subtracao");
    print("[3] - Multiplicacao");
    print("[4] - Divisao");
    print("[5] - Fim de Programa");
    print("");
    stdout.write("Escolha uma opcao: ");
    opcao = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (opcao != 5) {
      switch (opcao) {
        case 1: rotAdicao();        break;
        case 2: rotSubtracao();     break;
        case 3: rotMultiplicacao(); break;
        case 4: rotDivisao();       break;
        default:
          print("");
          print("Opcao invalida - Tente novamente");
          print("");
          break;
      }
    }
  }
}
