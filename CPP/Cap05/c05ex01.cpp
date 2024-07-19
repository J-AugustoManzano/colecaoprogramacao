// c05ex01.cpp

#include <iostream>
using namespace std;

int main(void) {
  int I, N, R;

  I = 1;
  while (I <= 5) {
    cout << "Entre um valor numerico: ";
    cin >> N;
    cin.ignore();

    R = N * 3;

    cout << "Resultado = " << R << endl << endl;

    I++;
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
