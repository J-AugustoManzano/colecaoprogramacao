// c05ex04.cpp

#include <iostream>
#include <cctype>
using namespace std;

int main(void) {
  char RESP;
  int N, R;

  RESP = 'S';
  while (not (toupper(RESP) != 'S')) {
    cout << "Entre um valor numerico: ";
    cin >> N;
    cin.ignore();

    R = N * 3;

    cout << "Resultado = " << R << endl << endl;

    cout << "Deseja continuar? (S/N): ";
    cin >> RESP;
    RESP = toupper(RESP);
    cin.ignore();

    cout << endl;
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
