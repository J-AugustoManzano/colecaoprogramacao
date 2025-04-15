// c04ex09.dart

import 'dart:io';

void main() {
  int prova1;
  int prova2;

  print("Classificacao esportiva\n");
  print("Entre '1' se atleta pontuou na 1a prova");
  print("Entre '1' se atleta pontuou na 2a prova");
  print("Qualquer outro valor se nao pontuou nas provas\n");

  stdout.write("Prova 1: ");
  prova1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Prova 2: ");
  prova2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if ((prova1 == 1 && !(prova2 == 1)) || (!(prova1 == 1) && prova2 == 1)) {
    print("Atleta participa da terceira prova.");
  } else {
    print("Atleta nao participa da terceira prova.");
    if (prova1 == 1 && prova2 == 1) {
      print("Classificado para a final.");
    } else {
      print("Desclassificado da competicao.");
    }
  }

  stdout.write("\nPressione <Enter> para encerrar... ");
  stdin.readLineSync();
}
