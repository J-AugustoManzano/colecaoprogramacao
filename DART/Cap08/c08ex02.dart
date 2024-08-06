// c08ex02.dart

import 'dart:io';

bool validaNumero(String entrada) {
  final RegExp padrao = RegExp(r'^[+-]?(\d+|\d+\.\d+)$');
  return padrao.hasMatch(entrada);
}

void main() {
  String numero;

  while (true) {
    stdout.write("Entre um valor numerico inteiro: ");
    numero = stdin.readLineSync() ?? "";
    print("");

    if (numero.isEmpty) {
      print("Erro: Tecla <Enter> acionada acidentalmente.\n");
      continue;
    }

    if (!validaNumero(numero)) {
      print("Erro: Entre um valor numerico.\n");
      continue;
    }

    print("Entrada valida fornecida: $numero");
    break;
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
