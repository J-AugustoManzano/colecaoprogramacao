// c08ex08.c

#include <stdio.h>
#include <stdbool.h>

#define FIM 10

int MATRIZ[FIM];
int INICIO;

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

bool Retirar(int *ELEMENTO) {
  int I;
  if (Vazia()) {
    return false;
  } else {
    *ELEMENTO = MATRIZ[0];
    for (I = 0; I <= INICIO - 1; I++) {
      MATRIZ[I] = MATRIZ[I + 1];
    }
    --INICIO;
    return true;
  }
}

void Entrada() {
  int X;
  printf("Entre com um elemento numerico: ");
  scanf("%d", &X);
  printf("\n");
  if (Adicionar(X)) {
    printf("Elemento %d inserido na posicao %d.\n", X, INICIO);
  } else {
    printf("Impossivel adicionar %d - fila lotada.\n", X);
  }
  printf("\n");
}

void Saida() {
  int ELEMENTO;
  if (Retirar(&ELEMENTO)) {
    printf("Elemento %d retirado do inicio da fila.\n", ELEMENTO);
  } else {
    printf("Impossivel retirar elemento - fila vazia.\n");
  }
  printf("\n");
}

void Atual() {
  if (!(Vazia())) {
    printf("%d - primeiro elemento da fila.\n", MATRIZ[0]);
  } else {
    printf("Impossivel apresentar - fila vazia.\n");
  }
  printf("\n");
}

void Exibicao() {
  int I;
  if (!Vazia()) {
    for (I = 0; I <= INICIO - 1; ++I) {
      printf("Posicao: %2d = %d\n", I + 1, MATRIZ[I]);
    }
  } else {
    printf("Impossivel apresentar - fila vazia.\n");
  }
  printf("\n");
}

void Criar() {
  int I;
  INICIO = 0;
  for (I = 0; I <= FIM - 1; ++I) {
    MATRIZ[I] = 0;
  }
}

int OPCAO;

int main(void) {
  Criar();
  OPCAO = 0;
  while (OPCAO != 6) {
    printf("PROGRAMA: FILA\n\n");
    printf("[1] - Entrada\n");
    printf("[2] - Saida\n");
    printf("[3] - Apresentar 1o. da fila\n");
    printf("[4] - Apresentar a fila\n");
    printf("[5] - Nova fila\n");
    printf("[6] - Sair\n\n");
    printf("Escolha uma opcao: ");
    scanf("%d", &OPCAO);
    printf("\n");
    if (OPCAO != 6) {
      switch (OPCAO) {
        case 1: Entrada();  break;
        case 2: Saida();    break;
        case 3: Atual();    break;
        case 4: Exibicao(); break;
        case 5: Criar();    break;
        default:
          printf("Opcao invalida. Tente novamente.\n\n");
      }
    }
  }
  return 0;
}
