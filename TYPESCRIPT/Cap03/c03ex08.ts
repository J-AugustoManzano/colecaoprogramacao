// c03ex08.ts

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/
  
import * as rls from 'readline-sync';

let A, B, X;

// Entrada de dados

A = rls.questionInt("Entre o 1o. valor numerico inteiro: ");
B = rls.questionInt("Entre o 2o. valor numerico inteiro: ");

// Processamento de dados

X = A + B; // Cálculo da adição

// Saída de dados

console.log("Resultado = ", X);

// Encerramento do programa

console.log("");
process.stdout.write('Tecle <Enter> para encerrar... ');
rls.question();
