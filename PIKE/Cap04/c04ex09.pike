// c04ex09.pike

#!/usr/bin/env pike

import Stdio;

int main() 
{
  int P1, P2;
  
  write("Classificacao esportiva\n");
  write("Entre '1' se atleta pontuou na 1a. prova\n");
  write("Entre '1' se atleta pontuou na 2a. prova\n");
  write("Qualquer outro valor se nao pontuou nas provas\n\n");
    
  write("Prova 1: ");
  P1 = (int)stdin->gets();
    
  write("Prova 2: ");
  P2 = (int)stdin->gets();
    
  if (P1 == 1 ^ P2 == 1)
    write("Atleta participa da terceira prova.\n");
  else {
    write("Atleta nao participa da terceira prova.\n");
    if ((P1 == 1) && (P2 == 1))
      write("Classificado para a final.\n");
    else
      write("Desclassificado da competicao.\n");
  }
    
  return 0;
}
