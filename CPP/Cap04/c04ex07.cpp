// c04ex07.cpp

#include <iostream>
using namespace std;

int main(void) {
  int Numero;

  cout << "Entre um numero inteiro: ";
  cin >> Numero;
  cin.ignore();

  if ((Numero >= 20 and Numero <= 90))
    cout << "O numero esta na faixa de 20 a 90.\n";
  else
    cout << "O numero esta fora da faixa de 20 a 90.\n";

  cout << "\n";
  cout << "Tecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
