// c05ex11.cpp

#include <iostream>
using namespace std;

int main(void) {
  int I, N, R;

  for (I = 1; I <= 5; I++) {
    cout << "Entre um valor numerico: ";
    cin >> N;
    cin.ignore();

    R = N * 3;

    cout << "Resultado = " << R << endl << endl;
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
