// c04ex03.cpp

#include <iostream>
using namespace std;

int main(void) {
  int A, B, X, R;

  cout << "Entre o 1o. valor numerico: ";
  cin >> A;
  cin.ignore();

  cout << "Entre o 2o. valor numerico: ";
  cin >> B;
  cin.ignore();

  X = A + B;

  if (X >= 10)
    R = X + 5;
  else
    R = X - 7;

  cout << "Resultado = " << R << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
