// c08ex10.cpp

#include <iostream>
#include <iomanip>
using namespace std;

int FibonacciBase(int N, int X, int Y) {
  if (N == 0)
    return X;
  if (N == 1)
    return Y;
  if (N == 2)
    return X + Y;
  if (N >= 2)
      return FibonacciBase(N - 1, Y, X + Y);
  return 0;
}

int Fibonacci(int N) {
  return FibonacciBase(N, 0, 1);
}

int main(void) {
  for (int I = 0; I <= 14; I++)
    cout << setw(2) << I << " - " << Fibonacci(I) << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
