# c07ex07.tcl

proc IGUAL {A B} {
  if {$A == $B} {
    return 1
  } else {
    return 0
  }
}

puts -nonewline "Informe o 1o. valor: "
flush stdout
set X [gets stdin]

puts -nonewline "Informe o 2o. valor: "
flush stdout
set Y [gets stdin]

if {[IGUAL $X $Y]} {
  puts "Valores sao iguais"
} else {
  puts "Valores sao diferentes"
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
