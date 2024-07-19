// c04ex05.cpp

#include <iostream>
using namespace std;

int main(void) {
  int Mes;

  cout << "Entre com um numero equivalente a um mes: ";
  cin >> Mes;
  cin.ignore();

  switch (Mes) {
    case 1:
      cout << "Janeiro\n";
      break;
    case 2:
      cout << "Fevereiro\n";
      break;
    case 3:
      cout << "Marco\n";
      break;
    case 4:
      cout << "Abril\n";
      break;
    case 5:
      cout << "Maio\n";
      break;
    case 6:
      cout << "Junho\n";
      break;
    case 7:
      cout << "Julho\n";
      break;
    case 8:
      cout << "Agosto\n";
      break;
    case 9:
      cout << "Setembro\n";
      break;
    case 10:
      cout << "Outubro\n";
      break;
    case 11:
      cout << "Novembro\n";
      break;
    case 12:
      cout << "Dezembro\n";
      break;
    default:
      cout << "Mes invalido\n";
      break;
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
