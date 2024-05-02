// c08ex06.pike

#!/usr/bin/env pike

import Stdio;

array(int) NUMERO = allocate(10);
int I, J, COMECO, FINAL, MEIO, PESQ, X;
string RESP, RESP_AUX;
bool ACHA;

int main() 
{
  write("PESQUISA BINARIA - NUMERO\n\n");
  for (I = 0; I <= 9; I++) {
    write(sprintf("Entre o %2do. numero: ", I + 1));
    NUMERO[I] = (int)stdin->gets();
  }

  for (I = 0; I <= 8; I++)
    for (J = I + 1; J <= 9; J++)
      if (NUMERO[I] > NUMERO[J]) {
        X = NUMERO[I];
        NUMERO[I] = NUMERO[J];
        NUMERO[J] = X;
      }

  RESP = "SIM";
  while (RESP == "SIM") {
    write("\nEntre numero a ser pesquisado: ");
    PESQ = (int)stdin->gets();
    COMECO = 0;
    FINAL = 9;
    ACHA = false;
    while (COMECO <= FINAL && ACHA == false) {
      MEIO = (COMECO + FINAL) / 2;
      if (NUMERO[MEIO] == PESQ)
        ACHA = true;
      else 
        if (NUMERO[MEIO] < PESQ)
          COMECO = MEIO + 1;
        else
          FINAL = MEIO - 1;
    }
    if (ACHA == true) {
      write(sprintf("\n%d foi localizado na ", PESQ));
      write(sprintf("posicao %d\n", MEIO + 1));
    } else
      write(sprintf("\n%d nao foi localizado\n", PESQ));

    do {
      write("\nDeseja continuar? (SIM/NAO): ");
      RESP_AUX = upper_case(stdin->gets());
      RESP = RESP_AUX[0..strlen(RESP_AUX) - 2];
      if (RESP != "SIM" && RESP != "NAO")
        write("Informe apenas SIM ou NAO.\n");
    } while (RESP != "SIM" && RESP != "NAO");
  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
