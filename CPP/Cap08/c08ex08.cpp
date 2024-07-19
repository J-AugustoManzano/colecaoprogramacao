// c08ex08.cpp

#include <iostream>
#include <iomanip>
using namespace std;

const int FIM = 10;

int MATRIZ[FIM];
int INICIO = 0;

bool Vazia() {
  if (INICIO == 0) {
    return true;
  } else {
    return false;
  }
}

bool Cheia() {
  if (INICIO == FIM) {
    return true;
  } else {
    return false;
  }
}

bool Adicionar(int ELEMENTO) {
  if (Cheia()) {
    return false;
  } else {
    MATRIZ[INICIO] = ELEMENTO;
    ++INICIO;
    return true;
  }
}

bool Retirar(int &ELEMENTO) {
  int I;
  if (Vazia()) {
    return false;
  } else {
    ELEMENTO = MATRIZ[0];
    for (I = 0; I < INICIO - 1; I++) {
      MATRIZ[I] = MATRIZ[I + 1];
    }
    --INICIO;
    return true;
  }
}

void Entrada() {
  int X;
  cout << "Entre com um elemento numerico: ";
  cin >> X;
  cin.ignore();
  cout << endl;
  if (Adicionar(X)) {
    cout << "Elemento " << X << " inserido na posicao ";
    cout << INICIO << ".\n";
  } else {
    cout << "Impossivel adicionar " << X << " - fila lotada.\n";
  }
  cout << endl;
}

void Saida() {
  int ELEMENTO;
  if (Retirar(ELEMENTO)) { // Passagem por referência
    cout << "Elemento " << ELEMENTO;
    cout << " retirado do inicio da fila.\n";
  } else {
    cout << "Impossivel retirar elemento - fila vazia.\n";
  }
  cout << endl;
}

void Atual() {
  if (not Vazia()) {
    cout << MATRIZ[0] << " - primeiro elemento da fila.\n";
  } else {
    cout << "Impossivel apresentar - fila vazia.\n";
  }
  cout << endl;
}

void Exibicao() {
  int I;
  if (not Vazia()) {
    for (I = 0; I < INICIO; ++I) {
      cout << "Posicao: " << setw(2) << I + 1 << " = ";
      cout << MATRIZ[I] << endl;
    }
  } else {
    cout << "Impossivel apresentar - fila vazia.\n";
  }
  cout << endl;
}

void Criar() {
  int I;
  INICIO = 0;
  for (I = 0; I <= FIM - 1; ++I) {
    MATRIZ[I] = 0;
  }
}

int main(void) {
  Criar();
  int OPCAO = 0;
  while (OPCAO != 6) {
    cout << "PROGRAMA: FILA\n\n";
    cout << "[1] - Entrada\n";
    cout << "[2] - Saida\n";
    cout << "[3] - Apresentar 1o. da fila\n";
    cout << "[4] - Apresentar a fila\n";
    cout << "[5] - Nova fila\n";
    cout << "[6] - Sair\n\n";
    cout << "Escolha uma opcao: ";
    cin >> OPCAO;
    cout << endl;
    if (OPCAO != 6) {
      switch (OPCAO) {
        case 1: Entrada();  break;
        case 2: Saida();    break;
        case 3: Atual();    break;
        case 4: Exibicao(); break;
        case 5: Criar();    break;
        default:
          cout << "Opcao invalida. Tente novamente.\n\n";
      }
    }
  }
  return 0;
}
