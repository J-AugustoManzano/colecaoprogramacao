// c04ex09.dart

import 'dart:io';

void main() {
  int p1;
  int p2;

  print("Classificacao esportiva\n");
  print("Entre '1' se atleta pontuou na 1a prova");
  print("Entre '1' se atleta pontuou na 2a prova");
  print("Qualquer outro valor se nao pontuou nas provas\n");

  stdout.write("Prova 1: ");
  p1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Prova 2: ");
  p2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if ((p1 == 1 && !(p2 == 1)) || (!(p1 == 1) && p2 == 1)) {
    print("Atleta participa da terceira prova.");
  } else {
    print("Atleta nao participa da terceira prova.");
    if (p1 == 1 && p2 == 1) {
      print("Classificado para a final.");
    } else {
      print("Desclassificado da competicao.");
    }
  }

  stdout.write("\nPressione <Enter> para encerrar... ");
  stdin.readLineSync();
}
    
