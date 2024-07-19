// c06ex02.cpp

#include <iostream>
#include <iomanip>
using namespace std;

int main(void) {
  double NOTAS[8][4];
  int I, J;

  cout << fixed << setprecision(1) ;

  for (I = 0; I <= 7; ++I) {
    cout << "Entre as notas do aluno " << I + 1 << ":\n";
    for (J = 0; J <= 3; ++J) {
      cout << "Nota " << J + 1 << ": ";
      cin >> NOTAS[I][J];
      cin.ignore();
    }
    cout << endl;
  }

  cout << "\n";
  cout << "RELATORIO DE NOTAS\n";
  cout << "\n";
  cout << "Aluno Nota1 Nota2 Nota3 Nota4\n";
  cout << "----- ----- ----- ----- -----\n";
  for (I = 0; I <= 7; ++I) {
    cout << setw(5) << I + 1 << " ";
    for (J = 0; J <= 3; ++J)
      cout << setw(5) << NOTAS[I][J] << " ";
    cout << endl;
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
