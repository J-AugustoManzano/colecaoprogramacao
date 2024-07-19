// c04ex02.cpp

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

  if (A > B) {
    X = A;
    A = B;
    B = X;
  }

  cout << "Os valores sao: " << A << " e " << B << ".\n";

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
