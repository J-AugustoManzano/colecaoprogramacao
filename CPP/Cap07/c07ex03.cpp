// c07ex03.cpp

#include <iostream>
using namespace std;

int A, B;

void TROCA(void) {
  int X = A;
  A = B;
  B = X;
}

int main(void) {
  cout << "Entre um valor para a variavel <A>: ";
  cin >> A;
  cin.ignore();

  cout << "Entre um valor para a variavel <B>: ";
  cin >> B;
  cin.ignore();

  TROCA();

  cout << "\n";
  cout << "Variavel <A> com valor " << A << endl;
  cout << "Variavel <B> com valor " << B << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
