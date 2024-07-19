// c08ex02.cpp

#include <iostream>
#include <string>

using namespace std;

bool validaNumero(const string &numero) {
  bool pontoEncontrado = false;

  for (char c : numero) {
    if (c == '.') {
      if (pontoEncontrado)
        return false;
      pontoEncontrado = true;
    } else if (!isdigit(static_cast<unsigned char>(c))) {
      return false;
    }
  }

  return true;
}

int main(void) {
  string numero;

  do {
    cout << "Entre um valor numerico real: ";
    getline(cin, numero);
    cout << endl;

    if (numero.empty()) {
      cout << "Erro: Tecla <Enter> acionada acidentalmente.\n";
      cout << endl;
      continue;
    }

    if (not validaNumero(numero)) {
      cout << "Erro: Entre um numero real.\n";
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
