// c03ex05.cpp

#include <iostream>
#include <string>

using namespace std;

int main(void) {
  string nome;

  cout << "Entre seu nome: ";
  getline(cin, nome);

  cout << "Ola, " << nome << "! Bem-vindo ao estudo de C++.\n";

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
