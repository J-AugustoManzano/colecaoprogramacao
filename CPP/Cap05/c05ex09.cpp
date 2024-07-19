// c05ex09.cpp

#include <iostream>
using namespace std;

int main(void) {
  int I, N, R;

  I = 1;
  loop:
    cout << "Entre um valor numerico: ";
    cin >> N;
    cin.ignore();

    R = N * 3;

    cout << "Resultado = " << R << endl << endl;

    if (I > 4) goto endloop;
    ++I;
    goto loop;
  endloop:

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
