// c08ex05.pike

#!/usr/bin/env pike

import Stdio;

array(string) NOME = allocate(10);
int I;
string PESQ, RESP, NOME_AUX, RESP_AUX, PESQ_AUX;
int ACHA;

int main()
{
  write("PESQUISA SEQUENCIAL DE NOMES\n\n");

  for (I = 0; I <= 9; I++) 
  {
    write(sprintf("Entre o %2do. nome: ", I + 1));
    NOME_AUX = stdin->gets();
    NOME[I] = NOME_AUX[0..strlen(NOME_AUX) - 2];
  }

  RESP = "SIM";
  while (RESP == "SIM") 
  {
    RESP = "";
    write("\nEntre o nome a ser pesquisado: ");
    PESQ_AUX = stdin->gets();
    PESQ = PESQ_AUX[0..strlen(PESQ_AUX) - 2];
    I = 0;
    ACHA = false;
    while (I <= 9 && ACHA == false)
      if (PESQ == NOME[I])
        ACHA = true;
      else
        I++;
    if (ACHA == true)
    {
      write("\n");
      write(sprintf("%s foi localizado na posicao %d\n", PESQ, I + 1));
    }
    else
      write(sprintf("\n%s nao foi localizado\n", PESQ));
      
    do 
    {
      write("\nDeseja continuar? (SIM/NAO): ");
      RESP_AUX = upper_case(stdin->gets());
      RESP = RESP_AUX[0..strlen(RESP_AUX) - 2];
      if (RESP != "SIM" && RESP != "NAO")
        write("Informe apenas SIM ou NAO.\n");
    } 
    while (RESP != "SIM" && RESP != "NAO");

  }

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
