// c04ex11.cpp

#include <iostream>
using namespace std;

int main(void) {
  int N, R4, R5;

  cout << "Entre um numero inteiro: ";
  cin >> N;
  cin.ignore();

  R4 = N % 4;
  R5 = N % 5;

  if (R4 == 0 and R5 == 0)
    cout << "Resultado = " << N << endl;
  else
    cout << "Valor nao e divisivel por 4 e 5" << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
