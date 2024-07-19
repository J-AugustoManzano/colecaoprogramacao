// c08ex10.cpp

#include <iostream>
using namespace std;

int FibonacciBase(int N, int X, int Y) {
  if (N == 0) {
    return X;
  } else if (N == 1) {
    return Y;
  } else {
    return FibonacciBase(N - 1, Y, X + Y);
  }
  return 0;
}

int Fibonacci(int N) {
  return FibonacciBase(N, 0, 1);
}

int main(void) {
  for (int I = 0; I <= 14; I++)
    cout << I << " - " << Fibonacci(I) << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
