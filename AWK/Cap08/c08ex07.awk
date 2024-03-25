# c08ex07.awk

BEGIN {

  LIMITE = 10
  
  criar()
  OPCAO = 0
  while (OPCAO != 5) {
    print "PROGRAMA: PILHA"
    print ""
    print "[1] - Empilhar"
    print "[2] - Desempilhar"
    print "[3] - Apresentar"
    print "[4] - Criar pilha"
    print "[5] - Sair"
    print ""
  
    printf "Escolha uma opcao: "
    getline OPCAO < "/dev/tty"
    if (OPCAO != 5) {
      if (OPCAO == 1) {
        empilhar()
      } else if (OPCAO == 2) {
        desempilhar()
      } else if (OPCAO == 3) {
        mostrar()
      } else if (OPCAO == 4) {
        criar()
        print ""
      }
    }
  }
  
}

function vazia() {
  if (TOPO == 0) {
    return 1
  } else {
    return 0
  }
}

function cheia() {
  if (TOPO == LIMITE) {
    return 1
  } else {
    return 0
  }
}

function adicionar(ELEMENTO) {
  if (cheia()) {
    return 0
  } else {
    TOPO = TOPO + 1
    MATRIZ[TOPO] = ELEMENTO
    return 1
  }
}

function retirar() {
  if (vazia()) {
    return 0
  } else {
    ELEMENTO = MATRIZ[TOPO]
    MATRIZ[TOPO] = 0
    TOPO = TOPO - 1
    return 1
  }
}

function empilhar() {
  print ""
  printf "Entre um elemento numerico: "
  getline X < "/dev/tty"
  if (adicionar(X)) {
    print ""
    print "Elemento " X " inserido na posicao " TOPO "."
    print ""
  } else {
    print ""
    print "Impossivel adicionar " X " - pilha cheia."
    print ""
  }
}

function desempilhar() {
  print ""
  if (retirar()) {
    print "Elemento " ELEMENTO " retirado do topo da pilha."
    print ""
  } else {
    print "Impossivel retirar elemento - pilha vazia."
    print ""
  }
}

function mostrar() {
  print ""
  if (!vazia()) {
    for (I = TOPO; I >= 1; I--) {
      printf "Posicao: %2d", I 
      print " = ", MATRIZ[I]
    }
  } else {
    print "Impossivel apresentar - pilha vazia."
  }
  print ""
}

function criar() {
  TOPO = 0
  for (I = 1; I <= LIMITE; I++) {
    MATRIZ[I] = 0
  }
}
