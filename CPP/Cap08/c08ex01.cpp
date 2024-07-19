// c08ex01.cpp

#include <iostream>
#include <string>

using namespace std;

bool validaInteiro(const string &numero) {
  if (numero.empty() or (numero[0] == '-' && numero.size() == 1))
    return false;

  for (char c : numero)
    if (not isdigit(static_cast<unsigned char>(c)))
      return false;

  return true;
}

int main(void) {
  string numero;

  do {
    cout << "Entre um valor numerico inteiro: ";
    getline(cin, numero);
    cout << endl;

    if (numero.empty()) {
      cout << "Erro: Tecla <Enter> acionada acidentalmente.\n";
      cout << endl;
      continue;
    }

    if (not validaInteiro(numero)) {
      cout << "Erro: Entre um numero inteiro.\n";
      cout << endl;
      continue;
    }

    break;
  } while (true);

  cout << "Entrada valida fornecida: " << numero << endl;

  cout << endl;
  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
