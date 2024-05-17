# c08ex03.tcl

puts "CLASSIFICACAO DE NUMEROS (CRESCENTE)"
puts ""

array set Numeros {}

for {set I 0} {$I <= 4} {incr I} {
  puts -nonewline "Entre o [expr {$I + 1}]o. numero: "
  flush stdout
  set Numeros($I) [gets stdin]
}

for {set I 0} {$I < 4} {incr I} {
  for {set J [expr {$I + 1}]} {$J <= 4} {incr J} {
    if {$Numeros($I) > $Numeros($J)} {
      set X $Numeros($I)
      set Numeros($I) $Numeros($J)
      set Numeros($J) $X
    }
  }
}

puts "\nNumeros em ordem crescente:\n"

for {set I 0} {$I <= 4} {incr I} {
  puts "[expr {$I + 1}]o. numero: $Numeros($I)"
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
