// c07ex08.cpp

#include <iostream>
using namespace std;

int FATORIAL(int N) {
  if (N == 0)
    return 1;
  else
    return N * FATORIAL(N - 1);
}

int main(void) {
  int Limite;

  cout << "Qual fatorial: ";
  cin >> Limite;
  cin.ignore();

  cout << "Fatorial = " << FATORIAL(Limite) << "\n";

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
