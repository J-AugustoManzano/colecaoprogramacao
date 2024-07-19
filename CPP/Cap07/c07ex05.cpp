// c07ex05.cpp

#include <iostream>
using namespace std;

void FATORIAL(int N, int &Fat) {
  Fat = 1;
  for (int I = 1; I <= N; I++) {
    Fat *= I;
  }
}

int main(void) {
  int Resp, Limite;

  Resp = 1;

  cout << "Qual fatorial: ";
  cin >> Limite;
  cin.ignore();

  FATORIAL(Limite, Resp);

  cout << "Fatorial = " << Resp << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
