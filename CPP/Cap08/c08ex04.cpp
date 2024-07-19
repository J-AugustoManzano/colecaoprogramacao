// c08ex04.cpp

#include <iostream>
#include <string>
using namespace std;

int main(void) {
  string Nomes[5];
  string X;
  int I, J;

  cout << "CLASSIFICACAO DE NOMES (DECRESCENTE)\n\n";

  for (I = 0; I <= 4; ++I) {
    cout << "Entre o " << I + 1 << "o. nome: ";
    getline(cin, Nomes[I]);
  }

  for (I = 0; I <= 3; ++I) {
    for (J = I + 1; J <= 4; ++J) {
      if (Nomes[I] > Nomes[J]) {
        X = Nomes[I];
        Nomes[I] = Nomes[J];
        Nomes[J] = X;
      }
    }
  }

  cout << endl;
  for (I = 0; I <= 4; ++I)
    cout << I + 1 << "o. nome: " << Nomes[I] << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
