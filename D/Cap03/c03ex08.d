// c03ex08.d

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

import std.stdio;

void main()
{
  int A, B, X;
  
  // Entrada de dados 

  write("Entre o 1o. valor numerico inteiro: ");
  readf(" %d\n", &A);

  write("Entre o 2o. valor numerico inteiro: ");
  readf(" %d\n", &B);
  
  // Processamento de dados 

  X = A + B; // Cálculo da adição
  
  // Saída de dados 

  writeln("Resultado = ", X);

  write("\nTecle <Enter> para encerrar... ");
  readln();
}
