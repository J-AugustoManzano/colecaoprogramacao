# c04ex04.tcl

puts -nonewline "Entre a 1a. nota .......: "
flush stdout
set N1 [gets stdin]

puts -nonewline "Entre a 2a. nota .......: "
flush stdout
set N2 [gets stdin]

puts -nonewline "Entre a 3a. nota .......: "
flush stdout
set N3 [gets stdin]

puts -nonewline "Entre a 4a. nota .......: "
flush stdout
set N4 [gets stdin]

puts ""

set MD1 [expr {($N1 + $N2 + $N3 + $N4) / 4.0}]

if {$MD1 >= 7} {
  puts "Aprovado"
  puts "Media: [format %.2f $MD1]"
} else {
  puts -nonewline "Entre a nota de exame ..: "
  flush stdout
  set NE [gets stdin]

  puts ""

  set MD2 [expr {($MD1 + $NE) / 2.0}]

  if {$MD2 >= 5} {
    puts "Aprovado em exame"
  } else {
    puts "Reprovado"
  }
  puts "Media: [format %.2f $MD2]"
}

puts ""
puts -nonewline "Tecle <Enter> para encerrar... "
flush stdout
gets stdin
