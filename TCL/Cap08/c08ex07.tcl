# c08ex07.tcl

set LIMITE 10

array set MATRIZ {}
set TOPO 0

proc Vazia {} {
  global TOPO
  if {$TOPO == 0} {
    return 1
  } else {
    return 0
  }
}

proc Cheia {} {
  global TOPO LIMITE
  if {$TOPO == $LIMITE} {
    return 1
  } else {
    return 0
  }
}

proc Adicionar {ELEMENTO} {
  global TOPO MATRIZ
  if {[Cheia]} {
    return 0
  } else {
    incr TOPO
    set MATRIZ($TOPO) $ELEMENTO
    return 1
  }
}

proc Retirar {ELEMENTO} {
  global TOPO MATRIZ
  upvar $ELEMENTO elem
  if {[Vazia]} {
    return 0
  } else {
    set elem $MATRIZ($TOPO)
    unset MATRIZ($TOPO)
    incr TOPO -1
    return 1
  }
}

proc Empilhar {} {
  global TOPO
  puts -nonewline "Entre com um elemento numerico: "
  flush stdout
  gets stdin X
  if {[string is integer -strict $X]} {
    if {[Adicionar $X]} {
      puts "\nElemento $X inserido na posicao $TOPO."
    } else {
      puts "\nImpossivel adicionar $X - pilha cheia."
    }
  } else {
    puts "\nEntrada invalida. Por favor, insira um numero inteiro."
  }
  puts ""
}

proc Desempilhar {} {
  set ELEMENTO 0
  if {[Retirar ELEMENTO]} {
    puts "Elemento $ELEMENTO retirado do topo da pilha."
  } else {
    puts "Impossivel retirar elemento - pilha vazia."
  }
  puts ""
}

proc Mostrar {} {
  global TOPO MATRIZ
  if {![Vazia]} {
    for {set I $TOPO} {$I >= 1} {incr I -1} {
      puts [format "Posicao: %2d = %d" $I $MATRIZ($I)]
    }
  } else {
    puts "Impossivel apresentar - pilha vazia."
  }
  puts ""
}

proc Criar {} {
  global TOPO MATRIZ
  set TOPO 0
  array unset MATRIZ
}

set Opcao 0

Criar
while {$Opcao != 5} {
  puts "PROGRAMA: PILHA\n"
  puts [subst {\[1\] - Empilhar}]
  puts [subst {\[2\] - Desempilhar}]
  puts [subst {\[3\] - Mostrar}]
  puts [subst {\[4\] - Criar pilha}]
  puts [subst {\[5\] - Sair}]
  puts ""
  puts -nonewline "Escolha uma opcao: "
  flush stdout
  gets stdin Opcao
  puts ""
  switch $Opcao {
    1 {Empilhar}
    2 {Desempilhar}
    3 {Mostrar}
    4 {Criar}
    5 {break}
    default {
      puts "Opcao invalida. Tente novamente.\n\n"
    }
  }
}
