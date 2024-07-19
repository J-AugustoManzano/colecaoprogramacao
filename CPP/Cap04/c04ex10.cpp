// c04ex10.cpp

#include <iostream>
using namespace std;

int main(void) {
  int A, B, X, C;

  cout << "Entre valor para a variavel <A>: ";
  cin >> A;
  cin.ignore();

  cout << "Entre valor para a variavel <B>: ";
  cin >> B;
  cin.ignore();

  cout << "Entre valor para a variavel <X>: ";
  cin >> X;
  cin.ignore();

  if (not (X > 5))
    C = A + B;
  else
    C = A - B;

  cout << "\n";
  cout << "Resultado = " << C << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
