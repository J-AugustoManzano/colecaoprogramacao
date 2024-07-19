// c04ex01.cpp

#include <iostream>
using namespace std;

int main(void) {
  int A, B, X;

  cout << "Entre o 1o. valor numerico: ";
  cin >> A;
  cin.ignore();

  cout << "Entre o 2o. valor numerico: ";
  cin >> B;
  cin.ignore();

  X = A + B;

  if (X > 10)
    cout << "Resultado = " << X << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
