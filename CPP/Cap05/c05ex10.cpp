// c05ex10.cpp

#include <iostream>
#include <cctype>
using namespace std;

int main(void) {
  char RESP;
  int N, R;

  RESP = 'S';
  loop:
    cout << "Entre um valor numerico: ";
    cin >> N;
    cin.ignore();

    R = N * 3;

    cout << "Resultado = " << R << endl << endl;

    cout << "Deseja continuar? (S/N): ";
    cin >> RESP;
    cin.ignore();
    RESP = toupper(RESP);

    cout << "\n";
    if (RESP != 'S') goto endloop;
    goto loop;
  endloop:

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
