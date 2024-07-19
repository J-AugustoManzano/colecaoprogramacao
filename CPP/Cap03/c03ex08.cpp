// c03ex08.cpp

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

#include <iostream>

using namespace std;

int main(void) {
  int A, B, X;

  // Entrada de dados 
  
  cout << "Entre o 1o. valor numerico inteiro: ";
  cin >> A;
  cin.ignore();

  cout << "Entre o 2o. valor numerico inteiro: ";
  cin >> B;
  cin.ignore();

  // Processamento de dados 

  X = A + B; // Cálculo da adição

  // Saída de dados 
  
  cout << "Resultado = " << X << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
