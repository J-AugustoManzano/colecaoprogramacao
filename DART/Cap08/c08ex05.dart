// c08ex05.dart

import 'dart:io';

void main() {
  List<String> NOME = List.filled(10, "");
  String RESP = "SIM";
  String PESQ = "";
  String RESPOSTA = "";
  bool ACHA = false;

  print("PESQUISA SEQUENCIAL DE NOMES\n");

  for (int I = 0; I <= 9; I++) {
    stdout.write("Entre o ${(I + 1).toString().padLeft(2)}o. nome: ");
    NOME[I] = stdin.readLineSync() ?? "";
  }

  while (RESP == "SIM") {
    stdout.write("\nEntre o nome a ser pesquisado: ");
    PESQ = stdin.readLineSync() ?? "";
    int I = 0;
    ACHA = false;

    while (I <= 9 && ACHA == false) {
      if (PESQ == NOME[I])
        ACHA = true;
      else
        I++;
    }

    print("");
    if (ACHA == true)
      print("$PESQ foi localizado na posicao ${I + 1}");
    else
      print("$PESQ nao foi localizado");

    do {
      stdout.write("\nDeseja continuar? (SIM/NAO): ");
      RESPOSTA = stdin.readLineSync() ?? "";
      RESP = RESPOSTA.toUpperCase();
      if (RESP != "SIM" && RESP != "NAO")
        print("Informe apenas SIM ou NAO.");
    } while (RESP != "SIM" && RESP != "NAO");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
