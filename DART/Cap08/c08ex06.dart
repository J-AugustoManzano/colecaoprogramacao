// c08ex06.dart

import 'dart:io';

void main() {
  List<int> NUMERO = List.filled(10, 0);
  int X;
  int PESQ;
  int COMECO;
  int FINAL;
  int MEIO = 0;
  bool ACHA;

  String RESP = "SIM";
  String RESPOSTA;

  print("PESQUISA BINARIA DE NUMEROS\n");

  for (int I = 0; I <= 9; I++) {
    stdout.write("Entre o ${(I + 1).toString().padLeft(2)}o. numero: ");
    String? inputStr = stdin.readLineSync();
    if (inputStr == null || inputStr.isEmpty) {
      print("Número inválido. Tente novamente.");
      I--;
      continue;
    }
    NUMERO[I] = int.parse(inputStr);
  }

  for (int I = 0; I <= 8; I++)
    for (int J = I + 1; J <= 9; J++)
      if (NUMERO[I] > NUMERO[J]) {
        X = NUMERO[I];
        NUMERO[I] = NUMERO[J];
        NUMERO[J] = X;
      }

  while (RESP == "SIM") {
    stdout.write("\nEntre o numero a ser pesquisado: ");
    String? inputStr = stdin.readLineSync();
    if (inputStr == null || inputStr.isEmpty) {
      print("Número inválido. Tente novamente.");
      continue;
    }
    PESQ = int.parse(inputStr);

    COMECO = 0;
    FINAL = 9;
    ACHA = false;

    while (COMECO <= FINAL && ACHA == false) {
      MEIO = (COMECO + FINAL) ~/ 2;
      if (PESQ == NUMERO[MEIO])
        ACHA = true;
      else if (PESQ < NUMERO[MEIO])
        FINAL = MEIO - 1;
      else
        COMECO = MEIO + 1;
    }

    print("");

    if (ACHA == true)
      print("$PESQ foi localizado na posicao ${MEIO + 1}");
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
