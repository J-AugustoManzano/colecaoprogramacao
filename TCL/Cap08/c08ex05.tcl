# c08ex05.tcl

puts "PESQUISA SEQUENCIAL DE NOMES\n"

array set NOME {}

for {set I 0} {$I <= 9} {incr I} {
  puts -nonewline "Entre o [format "%2do." [expr {$I + 1}]] nome: "
  flush stdout
  set NOME($I) [gets stdin]
}

set RESP "SIM"

while {$RESP == "SIM"} {
  puts -nonewline "\nEntre o nome a ser pesquisado: "
  set PESQ [gets stdin]
  set I 0
  set ACHA 0

  while {$I <= 9 && $ACHA == 0} {
    if {$PESQ == $NOME($I)} {
      set ACHA 1
    } else {
      incr I
    }
  }

  if {$ACHA == 1} {
    puts "\n$PESQ foi localizado na posicao [expr {$I + 1}]"
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
