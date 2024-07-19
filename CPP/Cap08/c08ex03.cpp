// c08ex03.cpp

#include <iostream>
using namespace std;

int main(void) {
  int Numeros[5];
  int I, J, X;

  cout << "CLASSIFICACAO DE NUMEROS (CRESCENTE)\n\n";

  for (I = 0; I <= 4; ++I) {
    cout << "Entre o " << I + 1 << "o. numero: ";
    cin >> Numeros[I];
    cin.ignore();
  }

  for (I = 0; I <= 3; ++I) {
    for (J = I + 1; J <= 4; ++J) {
      if (Numeros[I] > Numeros[J]) {
        X = Numeros[I];
        Numeros[I] = Numeros[J];
        Numeros[J] = X;
      }
    }
  }

  cout << endl;
  for (I = 0; I <= 4; ++I)
    cout << I + 1 << "o. numero: " << Numeros[I] << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
