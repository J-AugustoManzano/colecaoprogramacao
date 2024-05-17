# c03ex03.tcl

puts -nonewline "Entre quantidade de horas trabalhadas ..: "
flush stdout
set HT [gets stdin]

puts -nonewline "Entre valor do salario-hora ............: "
flush stdout
set VH [gets stdin]

puts -nonewline "Entre valor do percentual de desconto ..: "
flush stdout
set PD [gets stdin]

set SB [expr {$HT * $VH}]
set TD [expr {($PD / 100.) * $SB}]
set SL [expr {$SB - $TD}]

puts "\nSalario Bruto ....: [format "%.2f" $SB]"
puts "Salario Liquido ..: [format "%.2f" $SL]"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
