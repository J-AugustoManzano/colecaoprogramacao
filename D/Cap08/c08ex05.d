// c08ex05.d

import std.stdio;
import std.string;

void main() {
  string[10] NOMES;
  string RESP;
  string PESQ;
  string RESPOSTA;
  int I;
  bool ACHA;

  writeln("PESQUISA SEQUENCIAL DE NOMES\n");

  for (I = 0; I <= 9; ++I) {
    writef("Entre o %2do. nome: ", I + 1);
    readf(" %s\n", &NOMES[I]);
  }

  RESP = "SIM";
  while (RESP == "SIM") {
    write("\nEntre o nome a ser pesquisado: ");
    readf(" %s\n", &PESQ);
    I = 0;
    ACHA = false;

    while (I <= 9 && ACHA == false) {
      if (PESQ == NOMES[I]) {
        ACHA = true;
      } else {
        ++I;
      }
    }

    if (ACHA == true) {
      writefln("\n%s foi localizado na posicao %d", PESQ, I + 1);
    } else {
      writefln("\n%s nao foi localizado", PESQ);
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
