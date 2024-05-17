# c03ex02.tcl

set PI 3.141592653589793

puts -nonewline "Entre valor do raio: "
flush stdout
set R [gets stdin]

set A [expr {$PI * pow($R, 2)}]

puts "Resultado = [format "%.2f" $A]"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
