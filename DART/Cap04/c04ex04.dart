// c04ex04.dart

import 'dart:io';

void main() {
  double N1;
  double N2;
  double N3;
  double N4;
  double NE;
  double MD1;
  double MD2;

  stdout.write("Entre a 1a. nota .......: ");
  N1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Entre a 2a. nota .......: ");
  N2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Entre a 3a. nota .......: ");
  N3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Entre a 4a. nota .......: ");
  N4 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  MD1 = (N1 + N2 + N3 + N4) / 4;

  print("");
  if (MD1 >= 7) {
    print("Aprovado");
    print("Media: ${MD1.toStringAsFixed(2)}");
  } else {
    stdout.write("Entre a nota de exame ..: ");
    NE = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

    MD2 = (MD1 + NE) / 2;

    print("");
    if (MD2 >= 5) {
      print("Aprovado em exame");
    } else {
      print("Reprovado");
    }
    print("Media: ${MD2.toStringAsFixed(2)}");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
