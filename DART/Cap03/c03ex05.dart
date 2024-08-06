// c03ex05.dart

import 'dart:io';

void main() {
  String name;

  stdout.write("Entre seu nome: ");
  name = stdin.readLineSync() ?? "";

  print("Ola, $name! Bem-vindo ao estudo de Dart.");

  stdout.write("\nAperte <Enter> para encerrar... ");
  stdin.readLineSync();
}
