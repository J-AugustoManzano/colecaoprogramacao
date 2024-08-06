// c04ex05.dart

import 'dart:io';

void main() {
  int Mes = 0;

  stdout.write("Entre com um numero equivalente a um mes: ");
  Mes = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  switch (Mes) {
    case 1:
      print("Janeiro");
      break;
    case 2:
      print("Fevereiro");
      break;
    case 3:
      print("Marco");
      break;
    case 4:
      print("Abril");
      break;
    case 5:
      print("Maio");
      break;
    case 6:
      print("Junho");
      break;
    case 7:
      print("Julho");
      break;
    case 8:
      print("Agosto");
      break;
    case 9:
      print("Setembro");
      break;
    case 10:
      print("Outubro");
      break;
    case 11:
      print("Novembro");
      break;
    case 12:
      print("Dezembro");
      break;
    default:
      print("Mes invalido");
      break;
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
