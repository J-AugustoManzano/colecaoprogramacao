// c08ex07.d

import std.stdio;

const int LIMITE = 10;

int[LIMITE] MATRIZ;
int TOPO;

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

bool Retirar(ref int ELEMENTO) {
  if (Vazia()) {
    return false;
  } else {
    ELEMENTO = MATRIZ[TOPO - 1];
    MATRIZ[TOPO - 1] = 0;
    --TOPO;
    return true;
  }
}

void Empilhar() {
  int X;
  write("Entre com um elemento numerico: ");
  readf(" %d\n", &X);
  if (Adicionar(X)) {
    writefln("\nElemento %d inserido na posicao %d.", X, TOPO);
  } else {
    writefln("\nImpossivel adicionar %d - pilha cheia.", X);
  }
  writeln();
}

void Desempilhar() {
  int ELEMENTO;
  if (Retirar(ELEMENTO)) {
    writefln("Elemento %d retirado do topo da pilha.", ELEMENTO);
  } else {
    writeln("Impossivel retirar elemento - pilha vazia.");
  }
  writeln();
}

void Mostrar() {
  int I;
  if (!(Vazia())) {
    for (I = TOPO - 1; I >= 0; --I) {
      writefln("Posicao: %2d = %d", I + 1, MATRIZ[I]);
    }
  } else {
    writeln("Impossivel apresentar - pilha vazia.");
  }
  writeln();
}

void Criar() {
  int I;
  TOPO = 0;
  for (I = 0; I <= LIMITE - 1; ++I) {
    MATRIZ[I] = 0;
  }
}

int Opcao;

void main() {
  Criar();
  Opcao = 0;
  while (Opcao != 5) {
    write("PROGRAMA: PILHA\n\n");
    write("[1] - Empilhar\n");
    write("[2] - Desempilhar\n");
    write("[3] - Mostrar\n");
    write("[4] - Criar pilha\n");
    write("[5] - Sair\n\n");
    write("Escolha uma opcao: ");
    readf(" %d\n", &Opcao);
    writeln();
    if (Opcao != 5) {
      switch (Opcao) {
        case 1: Empilhar();    break;
        case 2: Desempilhar(); break;
        case 3: Mostrar();     break;
        case 4: Criar();       break;
        default:
          write("Opcao invalida. Tente novamente.\n\n");
      }
    }
  }
}
