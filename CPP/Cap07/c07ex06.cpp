// c07ex06.cpp

#include <iostream>
using namespace std;

int FATORIAL(int N) {
  int Fat = 1;
  for (int I = 1; I <= N; I++) {
    Fat *= I;
  }
  return Fat;
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
