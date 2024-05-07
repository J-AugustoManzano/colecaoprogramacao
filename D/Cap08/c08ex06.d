// c08ex06.d

import std.stdio;
import std.string;

void main() {
  int[10] NUMERO;
  int I, J, X, PESQ, COMECO, FINAL, MEIO;
  bool ACHA;
  string RESP, RESPOSTA;

  writeln("PESQUISA BINARIA DE NUMEROS\n");

  for (I = 0; I <= 9; ++I) {
    writef("Entre o %2do. numero: ", I + 1);
    readf(" %d\n", &NUMERO[I]);
  }

  for (I = 0; I <= 8; ++I)
    for (J = I + 1; J <= 9; ++J)
      if (NUMERO[I] > NUMERO[J]) {
        X = NUMERO[I];
        NUMERO[I] = NUMERO[J];
        NUMERO[J] = X;
      }

  RESP = "SIM";
  while (RESP == "SIM") {
    write("\nEntre o numero a ser pesquisado: ");
    readf(" %d\n", &PESQ);

    COMECO = 0;
    FINAL = 9;
    ACHA = false;

    while (COMECO <= FINAL && ACHA == false) {
      MEIO = (COMECO + FINAL) / 2;
      if (PESQ == NUMERO[MEIO]) {
        ACHA = true;
      } else if (PESQ < NUMERO[MEIO]) {
        FINAL = MEIO - 1;
      } else {
        COMECO = MEIO + 1;
      }
    }

    if (ACHA == true) {
      writefln("\n%d foi localizado na posicao %d", PESQ, MEIO + 1);
    } else {
      writefln("\n%d nao foi localizado", PESQ);
    }

    do {
      write("\nDeseja continuar? (SIM/NAO): ");
      readf(" %s\n", &RESPOSTA);
      RESP = toUpper(RESPOSTA);
      if (RESP != "SIM" && RESP != "NAO") {
        write("Informe apenas SIM ou NAO.\n");
      }
    } while (RESP != "SIM" && RESP != "NAO");
  }

  writeln();
  write("Tecle <Enter> para encerrar... ");
  readln();
}
