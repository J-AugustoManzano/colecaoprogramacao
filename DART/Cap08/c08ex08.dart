// c08ex08.dart

import 'dart:io';

const FIM = 10;
List<int> MATRIZ = List.filled(FIM, 0);
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
  if (Cheia())
    return false;
  else {
    MATRIZ[INICIO] = ELEMENTO;
    INICIO++;
    return true;
  }
}

bool Retirar(List<int> ELEMENTO) {
  if (Vazia())
    return false;
  else {
    ELEMENTO[0] = MATRIZ[0];
    for (int I = 0; I < INICIO - 1; I++) {
      MATRIZ[I] = MATRIZ[I + 1];
    }
    INICIO--;
    return true;
  }
}

void Entrada() {
  stdout.write("Entre com um elemento numerico: ");
  int X = int.parse(stdin.readLineSync() ?? "0");
  print("");
  if (Adicionar(X))
    print("Elemento $X inserido na posicao $INICIO");
  else
    print("Impossivel adicionar $X - fila lotada.");
  print("");
}

void Saida() {
  List<int> ELEMENTO = [0];
  if (Retirar(ELEMENTO))
    print("Elemento ${ELEMENTO[0]} retirado do inicio da fila.");
  else
    print("Impossivel retirar - fila vazia.");
  print("");
}

void Atual() {
  if (!Vazia())
    print("${MATRIZ[0]} - primeiro elemento da fila.");
  else
    print("Impossivel apresentar - fila vazia.");
  print("");
}

void Exibicao() {
  if (!Vazia())
    for (int I = 0; I < INICIO; I++)
      print("Posicao: ${(I + 1).toString().padLeft(2)} = ${MATRIZ[I]}");
  else
    print("Impossivel apresentar - fila vazia.");
  print("");
}

void Criar() {
  INICIO = 0;
  for (int I = 0; I < FIM; I++)
    MATRIZ[I] = 0;
}

void main() {
  Criar();
  int OPCAO;
  do {
    print("PROGRAMA: FILA\n");
    print("[1] - Entrada");
    print("[2] - Saida");
    print("[3] - Apresentar 1o. da fila");
    print("[4] - Apresentar a fila");
    print("[5] - Nova fila");
    print("[6] - Sair\n");
    stdout.write("Escolha uma opcao: ");
    OPCAO = int.parse(stdin.readLineSync() ?? "6");
    print("");
    if (OPCAO != 6) {
      switch (OPCAO) {
        case 1: Entrada();  break;
        case 2: Saida();    break;
        case 3: Atual();    break;
        case 4: Exibicao(); break;
        case 5: Criar();    break;
        default: print("Opcao invalida. Tente novamente.\n");
      }
    }
  } while (OPCAO != 6);
}
