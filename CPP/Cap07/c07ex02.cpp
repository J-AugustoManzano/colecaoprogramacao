// c07ex02.cpp

#include <iostream>
using namespace std;

int main(void) {
  int A, B, X;

  cout << "Entre um valor para a variavel <A>: ";
  cin >> A;
  cin.ignore();

  cout << "Entre um valor para a variavel <B>: ";
  cin >> B;
  cin.ignore();

  X = A;
  A = B;
  B = X;

  cout << "\n";
  cout << "Variavel <A> com valor " << A << endl;
  cout << "Variavel <B> com valor " << B << endl;

  cout << "\n";
  cout << "Tecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
