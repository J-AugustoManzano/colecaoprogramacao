// c08ex07.cpp

#include <iostream>
#include <iomanip>
using namespace std;

const int LIMITE = 10;

int MATRIZ[LIMITE];
int TOPO = 0;

bool Vazia() {
  if (TOPO == 0) {
    return true;
  } else {
    return false;
  }
}

bool Cheia() {
  if (TOPO == LIMITE) {
    return true;
  } else {
    return false;
  }
}

bool Adicionar(int ELEMENTO) {
  if (Cheia()) {
    return false;
  } else {
    MATRIZ[TOPO] = ELEMENTO;
    ++TOPO;
    return true;
  }
}

bool Retirar(int &ELEMENTO) {
  if (Vazia()) {
    return false;
  } else {
    --TOPO;
    ELEMENTO = MATRIZ[TOPO];
    MATRIZ[TOPO] = 0;
    return true;
  }
}

void Empilhar() {
  int X;
  cout << "Entre com um elemento numerico: ";
  cin >> X;
  cin.ignore();
  cout << endl;
  if (Adicionar(X)) {
    cout << "Elemento " << X << " inserido na posicao ";
    cout << TOPO << endl;
  } else {
    cout << "Impossivel adicionar " << X << " - pilha cheia.\n";
  }
  cout << endl;
}

void Desempilhar() {
  int ELEMENTO;
  if (Retirar(ELEMENTO)) {
    cout << "Elemento " << ELEMENTO << " retirado";
    cout << "do topo da pilha.\n";
  } else {
    cout << "Impossivel retirar elemento - pilha vazia.\n";
  }
  cout << endl;
}

void Mostrar() {
  if (not Vazia()) {
    for (int I = TOPO - 1; I >= 0; --I) {
      cout << "Posicao: " << setw(2) << I + 1 << " = ";
      cout << MATRIZ[I] << endl;
    }
  } else {
    cout << "Impossivel apresentar - pilha vazia.\n";
  }
  cout << endl;
}

void Criar() {
  TOPO = 0;
  for (int I = 0; I <= LIMITE - 1; ++I) {
    MATRIZ[I] = 0;
  }
}

int main(void) {
  Criar();
  int Opcao = 0;
  while (Opcao != 5) {
    cout << "PROGRAMA: PILHA\n\n";
    cout << "[1] - Empilhar\n";
    cout << "[2] - Desempilhar\n";
    cout << "[3] - Mostrar\n";
    cout << "[4] - Criar pilha\n";
    cout << "[5] - Sair\n\n";
    cout << "Escolha uma opcao: ";
    cin >> Opcao;
    cout << "\n";
    switch (Opcao) {
      case 1: Empilhar();    break;
      case 2: Desempilhar(); break;
      case 3: Mostrar();     break;
      case 4: Criar();       break;
      case 5: cout << "Saindo do programa...\n"; break;
      default:
        cout << "Opcao invalida. Tente novamente.\n\n";
    }
  }
  return 0;
}
