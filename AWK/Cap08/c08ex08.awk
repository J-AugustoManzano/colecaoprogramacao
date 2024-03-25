# c08ex08.awk

BEGIN {

  FIM = 10

  criar()
  OPCAO = 0
  while (OPCAO != 6) {
    print "PROGRAMA: FILA"
    print ""
    print "[1] - Entrada"
    print "[2] - Saida"
    print "[3] - Apresentar 1o. da fila"
    print "[4] - Apresentar a fila"
    print "[5] - Nova fila"
    print "[6] - Sair"
    print ""
  
    printf "Escolha uma opcao: "
    getline OPCAO < "/dev/tty"
    if (OPCAO != 6) {
      if (OPCAO == 1) {
        entrada()
      } else if (OPCAO == 2) {
        saida()
      } else if (OPCAO == 3) {
        atual()
      } else if (OPCAO == 4) {
        exibicao()
      } else if (OPCAO == 5) {
        criar()
        print ""
      }
    }
  }
  
}

function vazia() {
  if (INICIO == 0) {
    return 1
  } else {
    return 0
  }
}

function cheia() {
  if (INICIO == FIM) {
    return 1
  } else {
    return 0
  }
}

function adicionar(ELEMENTO) {
  if (cheia()) {
    return 0
  } else {
    INICIO = INICIO + 1
    MATRIZ[INICIO] = ELEMENTO
    return 1
  }
}

function retirar(ELEMENTO) {
  if (vazia()) {
    return 0
  } else {
    ELEMENTO = MATRIZ[1]
    for (I = 1; I < INICIO; I++) {
      MATRIZ[I] = MATRIZ[I + 1]
    }
    INICIO = INICIO - 1
    return 1
  }
}

function entrada() {
  print ""
  printf "Entre um elemento numerico: "
  getline X < "/dev/tty"
  if (adicionar(X)) {
    print ""
    print "Elemento " X " inserido na posicao " INICIO "."
    print ""
  } else {
    print ""
    print "Impossivel adicionar " X " - fila lotada."
    print ""
  }
}

function saida() {
  print ""
  if (retirar(X)) {
    print "Elemento " X " retirado do inicio da fila."
    print ""
  } else {
    print "Impossivel retirar elemento - fila vazia."
    print ""
  }
}

function atual() {
  print ""
  if (!vazia()) {
    print MATRIZ[1] " - primeiro elemento da fila."
    print ""
  } else {
    print "Impossivel apresentar - fila vazia."
    print ""
  }
}

function exibicao() {
  print ""
  if (!vazia()) {
    for (I = 1; I <= INICIO; I++) {
      print "Posicao: " I " possui o elemento " MATRIZ[I] "."
    }
  } else {
    print "Impossivel apresentar - fila vazia."
  }
  print ""
}

function criar() {
  INICIO = 0
  for (I = 1; I <= FIM; I++) {
    MATRIZ[I] = 0
  }
}
