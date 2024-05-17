# c03ex01.tcl

puts -nonewline "Entre o 1o. valor numérico inteiro: "
flush stdout
set A [gets stdin]

puts -nonewline "Entre o 2o. valor numérico inteiro: "
flush stdout
set B [gets stdin]

set X [expr {$A + $B}]

puts "Resultado = $X"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
