// c03ex04.cpp

#include <iostream>
#include <iomanip>

using namespace std;

int main(void) {
  double HT, VH, PD, SB, TD, SL;

  cout << "Entre quantidade de horas trabalhadas ..: ";
  cin >> HT;
  cin.ignore();

  cout << "Entre valor do salario-hora ............: ";
  cin >> VH;
  cin.ignore();

  cout << "Entre valor do percentual de desconto ..: ";
  cin >> PD;
  cin.ignore();

  SB = HT * VH;
  TD = (PD / 100) * SB;
  SL = SB - TD;

  cout << fixed << setprecision(2);
  cout << "\n";
  cout << "Salario Bruto ....: " << setw(9) << SB << endl;
  cout << "Salario Liquido ..: " << setw(9) << SL << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
