// c08ex08.d

import std.stdio;

const int FIM = 10;

int[FIM] MATRIZ;
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

bool Retirar(ref int ELEMENTO) {
  int I;
  if (Vazia()) {
    return false;
  } else {
    ELEMENTO = MATRIZ[0];
    for (I = 0; I <= INICIO - 2; I++) {
      MATRIZ[I] = MATRIZ[I + 1];
    }
    --INICIO;
    return true;
  }
}

void Entrada() {
  int X;
  write("Entre com um elemento numerico: ");
  readf(" %d\n", &X);
  writeln();
  if (Adicionar(X)) {
    writefln("Elemento %d inserido na posicao %d.", X, INICIO);
  } else {
    writefln("Impossivel adicionar %d - fila lotada.", X);
  }
  writeln();
}

void Saida() {
  int ELEMENTO;
  if (Retirar(ELEMENTO)) {
    writefln("Elemento %d retirado do inicio da fila.", ELEMENTO);
  } else {
    writeln("Impossivel retirar elemento - fila vazia.");
  }
  writeln();
}

void Atual() {
  if (!Vazia()) {
    writefln("%d - primeiro elemento da fila.", MATRIZ[0]);
  } else {
    writeln("Impossivel apresentar - fila vazia.");
  }
  writeln();
}

void Exibicao() {
  int I;
  if (!Vazia()) {
    for (I = 0; I <= INICIO - 1; ++I) {
      writefln("Posicao: %2d = %d", I + 1, MATRIZ[I]);
    }
  } else {
    writeln("Impossivel apresentar - fila vazia.");
  }
  writeln();
}

void Criar() {
  int I;
  INICIO = 0;
  for (I = 0; I <= FIM - 1; ++I) {
    MATRIZ[I] = 0;
  }
}

int OPCAO;

void main() {
  Criar();
  OPCAO = 0;
  while (OPCAO != 6) {
    write("PROGRAMA: FILA\n\n");
    write("[1] - Entrada\n");
    write("[2] - Saida\n");
    write("[3] - Apresentar 1o. da fila\n");
    write("[4] - Apresentar a fila\n");
    write("[5] - Nova fila\n");
    write("[6] - Sair\n\n");
    write("Escolha uma opcao: ");
    readf(" %d\n", &OPCAO);
    writeln();
    if (OPCAO != 6) {
      switch (OPCAO) {
        case 1: Entrada();  break;
        case 2: Saida();    break;
        case 3: Atual();    break;
        case 4: Exibicao(); break;
        case 5: Criar();    break;
        default:
          write("Opcao invalida. Tente novamente.\n\n");
      }
    }
  }
}
