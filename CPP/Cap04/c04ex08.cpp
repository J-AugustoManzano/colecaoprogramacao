// c04ex08.cpp

#include <iostream>
#include <cctype>
using namespace std;

int main(void) {
  char Transp;

  cout << "Escolha o tipo de transporte:\n\n";
  cout << "[M] - Motocicleta\n";
  cout << "[S] - Scooter\n\n";

  cout << "==> ";
  cin >> Transp;
  cin.ignore();

  Transp = toupper(Transp);

  cout << "\n";
  if (Transp == 'M' or Transp == 'S')
    cout << "Transporte valido.\n";
  else
    cout << "Transporte invalido.\n";

  cout << endl;
  cout << "Tecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
