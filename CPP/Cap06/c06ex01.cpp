// c06ex01.cpp

#include <iostream>
#include <iomanip>
using namespace std;

int main(void) {
  double MD[8], SOMA = 0.0, MEDIA;

  cout << fixed << setprecision(2);
  for (int I = 0; I <= 7; ++I) {
    cout << "Entre a media do aluno " << I + 1 << ": ";
    cin >> MD[I];
    cin.ignore();

    SOMA += MD[I];
  }

  MEDIA = SOMA / 8;

  cout << "\n";
  cout << "Media geral: " << MEDIA << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
