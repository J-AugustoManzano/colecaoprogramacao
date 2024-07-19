// c03ex02.cpp

#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

int main(void) {
  double R, A;

  cout << "Entre valor do raio: ";
  cin >> R;
  cin.ignore();

  A = M_PI * pow(R, 2);

  cout << fixed << setprecision(2);
  cout << "Resultado = " << A << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
