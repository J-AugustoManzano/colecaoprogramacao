// c08ex07.dart

import 'dart:io';

const LIMITE = 10;
List<int> MATRIZ = List.filled(LIMITE, 0);
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
  if (Cheia())
    return false;
  else {
    MATRIZ[TOPO] = ELEMENTO;
    TOPO += 1;
    return true;
  }
}

bool Retirar(List<int> ELEMENTO) {
  if (Vazia())
    return false;
  else {
    TOPO -= 1;
    ELEMENTO[0] = MATRIZ[TOPO];
    MATRIZ[TOPO] = 0;
    return true;
  }
}

void Empilhar() {
  stdout.write("Entre com um elemento numerico: ");
  int X = int.parse(stdin.readLineSync() ?? "0");
  print("");
  if (Adicionar(X))
    print("Elemento $X inserido na posicao $TOPO");
  else
    print("Impossivel adicionar $X - pilha cheia.");
  print("");
}

void Desempilhar() {
  List<int> ELEMENTO = [0];
  if (Retirar(ELEMENTO))
    print("Elemento ${ELEMENTO[0]} retirado do topo da pilha.");
  else
    print("Impossivel retirar - pilha vazia.");
  print("");
}

void Mostrar() {
  if (!Vazia())
    for (int I = TOPO - 1; I >= 0; I--)
      print("Posicao: ${(I + 1).toString().padLeft(2)} = ${MATRIZ[I]}");
  else
    print("Impossivel apresentar - pilha vazia.");
  print("");
}

void Criar() {
  TOPO = 0;
  for (int I = 0; I <= LIMITE - 1; I++)
    MATRIZ[I] = 0;
}

void main() {
  Criar();
  int Opcao = 0;
  while (Opcao != 5) {
    print("PROGRAMA: PILHA\n");
    print("[1] - Empilhar");
    print("[2] - Desempilhar");
    print("[3] - Mostrar");
    print("[4] - Criar pilha");
    print("[5] - Sair\n");
    stdout.write("Escolha uma opcao: ");
    Opcao = int.parse(stdin.readLineSync() ?? "5");
    print("");
    if (Opcao != 5) {
      switch (Opcao) {
        case 1: Empilhar();    break;
        case 2: Desempilhar(); break;
        case 3: Mostrar();     break;
        case 4: Criar();       break;
        default: print("Opcao invalida. Tente novamente.\n");
      }
    }
  }
}
