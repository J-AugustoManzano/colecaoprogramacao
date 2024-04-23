// c08ex07.c

#include <stdio.h>
#include <stdbool.h>

#define LIMITE 10

int MATRIZ[LIMITE];
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
    ++TOPO;
    MATRIZ[TOPO] = ELEMENTO;
    return true;
  }
}

bool Retirar(int *ELEMENTO) {
  if (Vazia()) {
    return false;
  } else {
    *ELEMENTO = MATRIZ[TOPO];
    MATRIZ[TOPO] = 0;
    --TOPO;
    return true;
  }
}

void Empilhar() {
  int X;
  printf("Entre com um elemento numerico: ");
  scanf("%d", &X);
  if (Adicionar(X)) {
    printf("\nElemento %d inserido na posicao %d.\n", X, TOPO);
  } else {
    printf("\nImpossivel adicionar %d - pilha cheia.\n", X);
  }
  printf("\n");
}

void Desempilhar() {
  int ELEMENTO;
  if (Retirar(&ELEMENTO)) {
    printf("Elemento %d retirado do topo da pilha.\n", ELEMENTO);
  } else {
    printf("Impossivel retirar elemento - pilha vazia.\n");
  }
  printf("\n");
}

void Mostrar() {
  int I;
  if (!(Vazia())) {
    for (I = TOPO; I >= 1; --I) {
      printf("Posicao: %2d = %d\n", I, MATRIZ[I]);
    }
  } else {
    printf("Impossivel apresentar - pilha vazia.\n");
  }
  printf("\n");
}

void Criar() {
  int I;
  TOPO = 0;
  for (I = 0; I <= LIMITE - 1; ++I) {
    MATRIZ[I] = 0;
  }
}

int Opcao;

int main(void) {
  Criar();
  Opcao = 0;
  while (Opcao != 5) {
    printf("PROGRAMA: PILHA\n\n");
    printf("[1] - Empilhar\n");
    printf("[2] - Desempilhar\n");
    printf("[3] - Mostrar\n");
    printf("[4] - Criar pilha\n");
    printf("[5] - Sair\n\n");
    printf("Escolha uma opcao: ");
    scanf("%d", &Opcao);
    printf("\n");
    switch (Opcao) {
      case 1: Empilhar();    break;
      case 2: Desempilhar(); break;
      case 3: Mostrar();     break;
      case 4: Criar();       break;
      default:
        printf("Opcao invalida. Tente novamente.\n\n");
    }
  }
  return 0;
}
