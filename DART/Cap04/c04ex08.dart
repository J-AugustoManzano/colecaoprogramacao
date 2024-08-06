// c04ex08.dart

import 'dart:io';

void main() {
  String Transp;

  print("Escolha o tipo de transporte:\n");
  print("[M] - Motocicleta");
  print("[S] - Scooter\n");

  stdout.write("==> ");
  Transp = stdin.readLineSync()?.toUpperCase() ?? '';

  print("");
  if (Transp == 'M' || Transp == 'S') {
    print("Transporte valido.");
  } else {
    print("Transporte invalido.");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
