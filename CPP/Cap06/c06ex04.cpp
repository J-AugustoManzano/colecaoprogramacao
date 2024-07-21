// c06ex04.cpp

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main(void) {
  int N;
  vector<string> A;

  cout << "Entre a quantidade de elementos da matriz: ";
  cin >> N;
  cout << endl;

  A.resize(N);

  for (int I = 0; I <= N - 1; ++I) {
    cout << "Entre o " << I + 1 << "o. nome: ";
    cin >> A[I];
    cin.ignore();
  }

  cout << endl;
  cout << "Foram fornecidos os nomes:" << endl << endl;

  for (int I = 0; I <= N - 1; ++I) {
    cout << "Nome " << I + 1 << " = " << A[I] << endl;
  }

  cout << endl;
  cout << "Tecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
