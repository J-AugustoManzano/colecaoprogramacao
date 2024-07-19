// c04ex06.cpp

#include <iostream>
#include <iomanip>
using namespace std;

int main(void) {
  float A, B;
  int Opcao;

  cout << fixed << setprecision(2);
  
  cout << "Entre o 1o. valor numerico: ";
  cin >> A;
  cin.ignore();

  cout << "Entre o 2o. valor numerico: ";
  cin >> B;
  cin.ignore();

  cout << "\n";
  cout << "Escolha uma opcao de menu:\n";
  cout << "\n";
  cout << "[1] - Adicao\n";
  cout << "[2] - Subtracao\n";
  cout << "[3] - Multiplicacao\n";
  cout << "[4] - Divisao\n";
  cout << "\n";

  cout << "==> ";
  cin >> Opcao;
  cout << "\n";

  switch (Opcao) {
    case 1:
      cout << "Calculo de adicao\n";
      cout << "Resultado: " << A + B << endl;
      break;
    case 2:
      cout << "Calculo de subtracao\n";
      cout << "Resultado: " << A - B << endl;
      break;
    case 3:
      cout << "Calculo de multiplicacao\n";
      cout << "Resultado: " << A * B << endl;
      break;
    case 4:
      cout << "Calculo de divisao\n";
      if (B == 0)
        cout << "Resultado: ERRO" << endl;
      else
        cout << "Resultado: " << A / B << endl;
      break;
    default:
      cout << "Entrada invalida" << endl;
      cout << "Tente novamente em outro momento" << endl;
      break;
  }

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
