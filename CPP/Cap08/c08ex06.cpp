// c08ex06.cpp

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

int main() {
  int NUMERO[10];
  int I, J, X, PESQ, COMECO, FINAL, MEIO;
  bool ACHA;

  string RESP, RESPOSTA;

  cout << "PESQUISA BINARIA DE NUMEROS\n\n";

  for (I = 0; I <= 9; ++I) {
    cout << "Entre o " << setw(2) << I + 1 << "o. numero: ";
    cin >> NUMERO[I];
    cin.ignore();
  }

  for (I = 0; I <= 8; ++I) {
    for (J = I + 1; J <= 9; ++J) {
      if (NUMERO[I] > NUMERO[J]) {
        X = NUMERO[I];
        NUMERO[I] = NUMERO[J];
        NUMERO[J] = X;
      }
    }
  }

  RESP = "SIM";
  while (RESP == "SIM") {
    cout << "\nEntre o numero a ser pesquisado: ";
    cin >> PESQ;
    cin.ignore();

    COMECO = 0;
    FINAL = 9;
    ACHA = false;

    while (COMECO <= FINAL and ACHA == false) {
      MEIO = (COMECO + FINAL) / 2;
      if (PESQ == NUMERO[MEIO])
        ACHA = true;
      else if (PESQ < NUMERO[MEIO])
        FINAL = MEIO - 1;
      else
        COMECO = MEIO + 1;
    }

    cout << endl;
    if (ACHA == true) {
      cout << PESQ << " foi localizado na posicao " << MEIO + 1 << endl;
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
