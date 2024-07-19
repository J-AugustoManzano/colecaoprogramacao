// c07ex01.cpp

#include <iostream>
#include <iomanip>
using namespace std;

void ROTSOMA() {
  float A1, B1, R1;
  cout << endl;
  cout << "Rotina de Adicao\n";
  cout << endl;
  cout << "Entre o 1o. valor: ";
  cin >> A1;
  cin.ignore();
  cout << "Entre o 2o. valor: ";
  cin >> B1;
  cin.ignore();
  cout << endl;
  R1 = A1 + B1;
  cout << "O resultado da operacao equivale a: " << R1 << "\n";
  cout << endl;
}

void ROTSUBTRACAO() {
  float A2, B2, R2;
  cout << endl;
  cout << "Rotina de Subtracao\n";
  cout << endl;
  cout << "Entre o 1o. valor: ";
  cin >> A2;
  cin.ignore();
  cout << "Entre o 2o. valor: ";
  cin >> B2;
  cin.ignore();
  cout << endl;
  R2 = A2 - B2;
  cout << "O resultado da operacao equivale a: " << R2 << "\n";
  cout << endl;
}

void ROTMULTIPLICACAO() {
  float A3, B3, R3;
  cout << endl;
  cout << "Rotina de Multiplicacao\n";
  cout << endl;
  cout << "Entre o 1o. valor: ";
  cin >> A3;
  cin.ignore();
  cout << "Entre o 2o. valor: ";
  cin >> B3;
  cin.ignore();
  cout << endl;
  R3 = A3 * B3;
  cout << "O resultado da operacao equivale a: " << R3 << "\n";
  cout << endl;
}

void ROTDIVISAO() {
  float A4, B4, R4;
  cout << endl;
  cout << "Rotina de Divisao\n";
  cout << endl;
  cout << "Entre o 1o. valor: ";
  cin >> A4;
  cin.ignore();
  cout << "Entre o 2o. valor: ";
  cin >> B4;
  cin.ignore();
  cout << endl;
  if (B4 == 0)
    cout << "O resultado da operacao equivale a: ERRO\n";
  else {
    R4 = A4 / B4;
    cout << "O resultado da operacao equivale a: " << R4 << "\n";
  }
  cout << endl;
}

int main(void) {
  cout << fixed << setprecision(2);
  
  int OPCAO = 0;
  while (OPCAO != 5) {
    cout << "CALCULADORA - V1\n";
    cout << endl;
    cout << "[1] - Adicao\n";
    cout << "[2] - Subtracao\n";
    cout << "[3] - Multiplicacao\n";
    cout << "[4] - Divisao\n";
    cout << "[5] - Fim de Programa\n";
    cout << endl;
    cout << "Escolha uma opcao: ";
    cin >> OPCAO;
    cin.ignore();
    if (OPCAO != 5) {
      switch (OPCAO) {
        case 1: ROTSOMA();          break;
        case 2: ROTSUBTRACAO();     break;
        case 3: ROTMULTIPLICACAO(); break;
        case 4: ROTDIVISAO();       break;
        default:
          cout << endl;
          cout << "Opcao invalida - Tente novamente\n";
          cout << endl;
      }
    }
  }

  return 0;
}
