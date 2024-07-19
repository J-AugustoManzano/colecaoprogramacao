// c07ex09.cpp

#include <iostream>
using namespace std;

int FATORIAL_BASE(int N, int P) {
  if (N == 0)
    return P;
  else
    return FATORIAL_BASE(N - 1, N * P);
}

int FATORIAL(int N) {
  return FATORIAL_BASE(N, 1);
}

int main(void) {
  int LIMITE;

  cout << "Qual fatorial: ";
  cin >> LIMITE;
  cin.ignore();

  cout << "Fatorial = " << FATORIAL(LIMITE) << "\n";

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
