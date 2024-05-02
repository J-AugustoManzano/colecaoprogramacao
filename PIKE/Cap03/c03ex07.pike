// c02ex07.pike

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/
  
#!/usr/bin/env pike

int main()
{
  int A, B, X;

  // Entrada de dados

  write("Entre o 1o. valor numerico inteiro: ");
  A = (int)Stdio.stdin->gets();

  write("Entre o 2o. valor numerico inteiro: ");
  B = (int)Stdio.stdin->gets();

  // Processamento de dados

  X = A + B; // Cálculo da adição

  // Saída de dados
  
  write("Resultado da adicao = " + X + "\n\n");
  
  // Encerramento do programa

  write("Tecle <Enter> para encerrar... ");
  (void)Stdio.stdin->gets();

  return 0;
}
