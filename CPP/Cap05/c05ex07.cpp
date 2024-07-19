// c05ex07.cpp

#include <iostream>
using namespace std;

int main(void) {
  int I, N, R;

  I = 1;
  do {
    cout << "Entre um valor numerico: ";
    cin >> N;
    cin.ignore();

    R = N * 3;

    cout << "Resultado = " << R << endl << endl;

    ++I;
  } while (I <= 5);

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
