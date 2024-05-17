# c04ex03.tcl

puts -nonewline "Entre o 1o. valor numerico: "
flush stdout
set A [gets stdin]

puts -nonewline "Entre o 2o. valor numerico: "
flush stdout
set B [gets stdin]

set X [expr {$A + $B}]

if {$X >= 10} {
  set R [expr {$X + 5}]
} else {
  set R [expr {$X - 7}]
}

puts "Resultado = $R"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
