// c08ex05.cpp

#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

string textoMaiusculo(string texto) {
  string resultado = texto;
  for (size_t i = 0; i <= resultado.length() - 1; ++i)
    resultado[i] = toupper(resultado[i]);
  return resultado;
}

int main(void) {
  string NOME[10];

  string RESP = "SIM";
  string PESQ;
  string RESPOSTA;
  int I;
  bool ACHA;

  cout << "PESQUISA SEQUENCIAL DE NOMES\n\n";

  for (I = 0; I <= 9; ++I) {
    cout << "Entre o " << setw(2) << I + 1 << "o. nome: ";
    getline(cin, NOME[I]);
  }

  while (RESP == "SIM") {
    cout << "\nEntre o nome a ser pesquisado: ";
    getline(cin, PESQ);
    I = 0;
    ACHA = false;

    while (I <= 9 and ACHA == false) {
      if (PESQ == NOME[I]) {
        ACHA = true;
      } else {
        ++I;
      }
    }

    cout << endl;
    if (ACHA == true) {
      cout << PESQ << " foi localizado na posicao " << I + 1 << "\n";
    } else {
      cout << PESQ << " nao foi localizado\n";
    }

    do {
      cout << "\nDeseja continuar? (SIM/NAO): ";
      getline(cin, RESPOSTA);
      RESP = textoMaiusculo(RESPOSTA);
      if (RESP != "SIM" and RESP != "NAO")
        cout << "Informe apenas SIM ou NAO.\n";
    } while (RESP != "SIM" and RESP != "NAO");
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
