// c07ex04.cpp

#include <iostream>
using namespace std;

void Fatorial(int N) {
  int Fat = 1;
  for (int I = 1; I <= N; I++)
    Fat *= I;
  cout << "Fatorial = " << Fat << endl;
}

int Limite;

int main(void) {
  cout << "Qual fatorial: ";
  cin >> Limite;
  cin.ignore();

  Fatorial(Limite);

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
