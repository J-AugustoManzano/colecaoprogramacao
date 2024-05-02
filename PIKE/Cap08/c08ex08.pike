// c08ex08.pike

#!/usr/bin/env pike

import Stdio;

constant FIM = 10;

array(int) MATRIZ = allocate(FIM + 1);
int INICIO = 0;

bool Vazia() 
{
  if (INICIO == 0)
    return true;
  else
    return false;
}

bool Cheia() 
{
  if (INICIO == FIM)
    return true;
  else
    return false;
}

bool Adicionar(int ELEMENTO) 
{
  if (Cheia())
    return false;
  else {
    MATRIZ[INICIO] = ELEMENTO;
    ++INICIO;
    return true;
  }
}

bool Retirar(array(int) ELEMENTO) 
{
  if (Vazia())
    return false;
  else {
    ELEMENTO[0] = MATRIZ[0];
    for (int I = 0; I <= INICIO - 1; I++) {
      MATRIZ[I] = MATRIZ[I + 1];
    }
    INICIO--;
    return true;
  }
}

void Entrada() 
{
  write("Entre com um elemento numerico: ");
  int X = (int)stdin->gets();
  write("\n");
  if (Adicionar(X))
    write(sprintf("Elemento %d inserido na posicao %d.", X, INICIO));
  else
    write(sprintf("Impossivel adicionar %d - fila lotada.", X));
  write("\n\n");
}

void Saida()
{
  array(int) ELEMENTO = allocate(1);
  if (Retirar(ELEMENTO)) {
    write(sprintf("Elemento %d", ELEMENTO[0]));
    write(" retirado do inicio da fila.");
    write("\n\n");
  } else {
    write("Impossivel retirar elemento - fila vazia.");
    write("\n\n");
  }
}

void Atual() 
{
  if (!Vazia()) {
    write(sprintf("%d - primeiro elemento da fila.", MATRIZ[0]));
    write("\n\n");
  } else {
    write("Impossivel apresentar - fila vazia.");
    write("\n\n");
  }
}

void Exibicao() 
{
  int I;
  if (!Vazia()) {
    for (I = 0; I <= INICIO - 1; ++I)
      write(sprintf("Posicao: %d = %d\n", I + 1, MATRIZ[I]));
    write("\n");
  } else {
    write("Impossivel apresentar - fila vazia.");
    write("\n\n");
  }
}

void Criar()
{
  int I;
  INICIO = 0;
  for (I = 0; I <= FIM - 1; ++I)
    MATRIZ[I] = 0;
}

int main()
{
  Criar();

  int Opcao = 0;

  while (Opcao != 6) {
    write("PROGRAMA: FILA\n\n");
    write("[1] - Entrada\n");
    write("[2] - Saida\n");
    write("[3] - Apresentar 1o. da fila\n");
    write("[4] - Apresentar a fila\n");
    write("[5] - Nova fila\n");
    write("[6] - Sair\n\n");
    write("Escolha uma opcao: ");
    Opcao = (int)stdin->gets();
    write("\n");
    if (Opcao != 6) {
      switch (Opcao) {
        case 1: Entrada();    break;
        case 2: Saida();      break;
        case 3: Atual();      break;
        case 4: Exibicao();   break;
        case 5: Criar();      break;
        default:
          write("Opcao invalida. Tente novamente.\n");
      }
    }
  }

  return 0;
}
