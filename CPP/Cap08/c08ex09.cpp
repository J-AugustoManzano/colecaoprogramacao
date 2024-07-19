// c08ex09.cpp

#include <iostream>
using namespace std;

int Fibonacci(int N) {
  if (N == 0) {
    return 0;
  }
  if (N == 1) {
    return 1;
  }
  if (N >= 2) {
    return Fibonacci(N - 1) + Fibonacci(N - 2);
  }
  return 0; // Para evitar warning de retorno implícito
}

int main(void) {
  for (int I = 0; I <= 14; I++)
    cout << I << " - " << Fibonacci(I) << endl;
  
  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();
  
  return 0;
}
