// c02ex01.cpp

#include <iostream>
#include <cmath>

using namespace std;

int main(void) {
  // Operadores binários
  cout << 5 + 3 << endl;     // Saída: 8
  cout << 10 - 4 << endl;    // Saída: 6
  cout << 2 * 6 << endl;     // Saída: 12
  cout << 10.0 / 3 << endl;  // Saída: 3.3333 (quociente real)
  cout << 10 / 3 << endl;    // Saída: 3 (quociente inteiro)
  cout << 10 % 3 << endl;    // Saída: 1 (resto da divisão)

  // Operadores unários
  cout << +5 << endl;        // Saída: 5 (mantém positivo)
  cout << -8 << endl;        // Saída: -8 (inverte sinal)

  // Exponenciação
  cout << pow(2, 3) << endl; // Saída: 8 (2 elevado a 3)

  return 0;
}
