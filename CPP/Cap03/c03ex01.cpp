// c03ex01.cpp

#include <iostream>

using namespace std;

int main(void) {
  int A, B, X;

  cout << "Entre o 1o. valor numerico inteiro: ";
  cin >> A;
  cin.ignore();

  cout << "Entre o 2o. valor numerico inteiro: ";
  cin >> B;
  cin.ignore();

  X = A + B;

  cout << "Resultado = " << X << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
