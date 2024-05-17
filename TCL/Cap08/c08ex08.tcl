# c08ex08.tcl

set FIM 10

array set MATRIZ {}
set INICIO 0

proc Vazia {} {
  global INICIO
  if {$INICIO == 0} {
    return 1
  } else {
    return 0
  }
}

proc Cheia {} {
  global INICIO FIM
  if {$INICIO == $FIM} {
    return 1
  } else {
    return 0
  }
}

proc Adicionar {ELEMENTO} {
  global INICIO MATRIZ
  if {[Cheia]} {
    return 0
  } else {
    set MATRIZ($INICIO) $ELEMENTO
    incr INICIO
    return 1
  }
}

proc Retirar {ELEMENTO} {
  global INICIO MATRIZ
  upvar $ELEMENTO elem
  if {[Vazia]} {
    return 0
  } else {
    set elem $MATRIZ(0)
    for {set I 0} {$I < $INICIO - 1} {incr I} {
      set MATRIZ($I) $MATRIZ([expr {$I + 1}])
    }
    unset MATRIZ([expr {$INICIO - 1}])
    incr INICIO -1
    return 1
  }
}

proc Entrada {} {
  global INICIO
  puts -nonewline "Entre com um elemento numerico: "
  flush stdout
  gets stdin X
  if {[string is integer -strict $X]} {
    if {[Adicionar $X]} {
      puts "\nElemento $X inserido na posicao $INICIO."
    } else {
      puts "\nImpossivel adicionar $X - fila lotada."
    }
  } else {
    puts "\nEntrada invalida. Por favor, insira um numero inteiro."
  }
  puts ""
}

proc Saida {} {
  set ELEMENTO 0
  if {[Retirar ELEMENTO]} {
    puts "Elemento $ELEMENTO retirado do inicio da fila."
  } else {
    puts "Impossivel retirar elemento - fila vazia."
  }
  puts ""
}

proc Atual {} {
  global MATRIZ
  if {![Vazia]} {
    puts "$MATRIZ(0) - primeiro elemento da fila."
  } else {
    puts "Impossivel apresentar - fila vazia."
  }
  puts ""
}

proc Exibicao {} {
  global INICIO MATRIZ
  if {![Vazia]} {
    for {set I 0} {$I < $INICIO} {incr I} {
      puts [format "Posicao: %2d = %d" [expr {$I + 1}] $MATRIZ($I)]
    }
  } else {
    puts "Impossivel apresentar - fila vazia."
  }
  puts ""
}

proc Criar {} {
  global INICIO MATRIZ
  set INICIO 0
  array unset MATRIZ
}

set OPCAO 0

Criar
while {$OPCAO != 6} {
  puts "PROGRAMA: FILA\n"
  puts [subst {\[1\] - Entrada}]
  puts [subst {\[2\] - Saida}]
  puts [subst {\[3\] - Apresentar 1o. da fila}]
  puts [subst {\[4\] - Apresentar a fila}]
  puts [subst {\[5\] - Nova fila}]
  puts [subst {\[6\] - Sair}]  
  puts ""
  puts -nonewline "Escolha uma opcao: "
  flush stdout
  gets stdin OPCAO
  puts ""
  switch $OPCAO {
    1 {Entrada}
    2 {Saida}
    3 {Atual}
    4 {Exibicao}
    5 {Criar}
    6 {break}
    default {
      puts "Opcao invalida. Tente novamente.\n\n"
    }
  }
}
