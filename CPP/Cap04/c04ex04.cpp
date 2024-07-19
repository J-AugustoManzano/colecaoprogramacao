// c04ex04.cpp

#include <iostream>
#include <iomanip>
using namespace std;

int main(void) {
  float N1, N2, N3, N4, NE, MD1, MD2;

  cout << "Entre a 1a. nota .......: ";
  cin >> N1;
  cin.ignore();

  cout << "Entre a 2a. nota .......: ";
  cin >> N2;
  cin.ignore();

  cout << "Entre a 3a. nota .......: ";
  cin >> N3;
  cin.ignore();

  cout << "Entre a 4a. nota .......: ";
  cin >> N4;
  cin.ignore();

  MD1 = (N1 + N2 + N3 + N4) / 4;

  cout << endl;
  if (MD1 >= 7) {
    cout << "Aprovado\n";
    cout << "Media: " << fixed << setprecision(2) << MD1 << endl;
  } else {
    cout << "Entre a nota de exame ..: ";
    cin >> NE;
    cin.ignore();

    MD2 = (MD1 + NE) / 2;

    cout << endl;
    if (MD2 >= 5)
      cout << "Aprovado em exame\n";
    else
      cout << "Reprovado\n";
    cout << "Media: " << fixed << setprecision(2) << MD2 << endl;
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
