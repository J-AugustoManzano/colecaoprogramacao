# c08ex04.tcl

puts "CLASSIFICACAO DE NOMES (DECRESCENTE)"
puts ""

array set Nomes {}

for {set I 0} {$I <= 4} {incr I} {
  puts -nonewline "Entre o [expr {$I + 1}]o. nome: "
  flush stdout
  set Nomes($I) [gets stdin]
}

for {set I 0} {$I < 4} {incr I} {
  for {set J [expr {$I + 1}]} {$J <= 4} {incr J} {
    if {$Nomes($I) < $Nomes($J)} {
      set X $Nomes($I)
      set Nomes($I) $Nomes($J)
      set Nomes($J) $X
    }
  }
}

puts ""
for {set I 0} {$I <= 4} {incr I} {
  puts "[expr {$I + 1}]o. nome: $Nomes($I)"
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
