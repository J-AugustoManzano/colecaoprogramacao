// c04ex09.cpp

#include <iostream>
using namespace std;

int main(void) {
  int P1, P2;

  cout << "Classificacao esportiva\n\n";
  cout << "Entre '1' se atleta pontuou na 1a. prova\n";
  cout << "Entre '1' se atleta pontuou na 2a. prova\n";
  cout << "Qualquer outro valor se nao pontuou nas provas\n";
  cout << endl;

  cout << "Prova 1: ";
  cin >> P1;
  cin.ignore();

  cout << "Prova 2: ";
  cin >> P2;
  cin.ignore();

  if (P1 == 1 xor P2 == 1)
    cout << "Atleta participa da terceira prova.\n";
  else {
    cout << "Atleta nao participa da terceira prova.\n";
    if (P1 == 1 and P2 == 1)
      cout << "Classificado para a final.\n";
    else
      cout << "Desclassificado da competicao.\n";
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
