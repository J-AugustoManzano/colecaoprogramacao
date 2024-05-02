// c08ex07.pike

#!/usr/bin/env pike

import Stdio;

constant LIMITE = 10;

array(int) MATRIZ = allocate(LIMITE + 1);
int TOPO = 0;

bool Vazia() 
{
  if (TOPO == 0)
    return true;
  else
    return false;
}

bool Cheia() 
{
  if (TOPO == LIMITE)
    return true;
  else
    return false;
}

bool Adicionar(int ELEMENTO) 
{
  if (Cheia())
    return false;
  else {
    TOPO++;
    MATRIZ[TOPO] = ELEMENTO;
    return true;
  }
}

bool Retirar(array(int) ELEMENTO) 
{
  if (Vazia())
    return false;
  else {
    ELEMENTO[0] = MATRIZ[TOPO];
    MATRIZ[TOPO] = 0;
    TOPO--;
    return true;
  }
}

void Empilhar() 
{
  write("Entre com um elemento numerico: ");
  int X = (int)stdin->gets();
  write("\n");
  if (Adicionar(X))
    write(sprintf("Elemento %d inserido na posicao %d.", X, TOPO));
  else
    write(sprintf("Impossivel adicionar %d - pilha cheia.", X));
  write("\n\n");
}

void Desempilhar()
{
  array(int) ELEMENTO = allocate(1);
  if (Retirar(ELEMENTO)) {
    write(sprintf("Elemento %d", ELEMENTO[0]));
    write(" retirado do topo da pilha.");
    write("\n\n");
  } else {
    write("Impossivel retirar elemento - pilha vazia.");
    write("\n\n");
  }
}

void Mostrar() 
{
  if (!Vazia()) {
    for (int I = TOPO; I >= 1; --I)
      write(sprintf("Posicao: %d = %d\n", I, MATRIZ[I]));
    write("\n");
  } else {
    write("Impossivel apresentar - pilha vazia.");
    write("\n\n");
  }
}

void Criar()
{
  TOPO = 0;
  for (int I = 0; I <= LIMITE - 1; ++I)
    MATRIZ[I] = 0;
}

int main()
{
  Criar();

  int Opcao = 0;

  while (Opcao != 5) {
    write("PROGRAMA: PILHA\n\n");
    write("[1] - Empilhar\n");
    write("[2] - Desempilhar\n");
    write("[3] - Mostrar\n");
    write("[4] - Criar pilha\n");
    write("[5] - Sair\n\n");
    write("Escolha uma opcao: ");
    Opcao = (int)stdin->gets();
    write("\n");
    if (Opcao != 5) {
      switch (Opcao) {
        case 1: Empilhar();    break;
        case 2: Desempilhar(); break;
        case 3: Mostrar();     break;
        case 4: Criar();       break;
        default:
          write("Opcao invalida. Tente novamente.\n");
      }
    }
  }

  return 0;
}
