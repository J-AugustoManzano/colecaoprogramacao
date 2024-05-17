# c08ex06.tcl

puts "PESQUISA BINARIA DE NUMEROS\n"

array set NUMERO {}

for {set I 0} {$I <= 9} {incr I} {
  puts -nonewline "Entre o [format "%2do." [expr {$I + 1}]] numero: "
  flush stdout
  set NUMERO($I) [gets stdin]
}

for {set I 0} {$I <= 8} {incr I} {
  for {set J [expr {$I + 1}]} {$J <= 9} {incr J} {
    if {$NUMERO($I) > $NUMERO($J)} {
      set X $NUMERO($I)
      set NUMERO($I) $NUMERO($J)
      set NUMERO($J) $X
    }
  }
}

set RESP "SIM"
while {$RESP eq "SIM"} {
  puts -nonewline "\nEntre o numero a ser pesquisado: "
  set PESQ [gets stdin]

  set COMECO 0
  set FINAL 9
  set ACHA 0

  while {$COMECO <= $FINAL && $ACHA == 0} {
    set MEIO [expr {($COMECO + $FINAL) / 2}]
    if {$PESQ == $NUMERO($MEIO)} {
      set ACHA 1
    } elseif {$PESQ < $NUMERO($MEIO)} {
      set FINAL [expr {$MEIO - 1}]
    } else {
      set COMECO [expr {$MEIO + 1}]
    }
  }

  if {$ACHA == 1} {
    puts "\n$PESQ foi localizado na posicao [expr {$MEIO + 1}]"
  } else {
    puts "\n$PESQ nao foi localizado"
  }

  while {1} {
    puts -nonewline "\nDeseja continuar? (SIM/NAO): "
    set RESP [string toupper [gets stdin]]
    if {$RESP != "SIM" && $RESP != "NAO"} {
      puts "Informe apenas SIM ou NAO."
    } else {
      break
    }
  }
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
