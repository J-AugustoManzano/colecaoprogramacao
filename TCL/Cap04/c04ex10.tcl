# c04ex10.tcl

puts -nonewline "Entre valor para a variavel <A>: "
flush stdout
set A [gets stdin]

puts -nonewline "Entre valor para a variavel <B>: "
flush stdout
set B [gets stdin]

puts -nonewline "Entre valor para a variavel <X>: "
flush stdout
set X [gets stdin]

if {![expr {$X > 5}]} {
  set C [expr {$A + $B}]
} else {
  set C [expr {$A - $B}]
}

puts "\nResultado = $C"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
