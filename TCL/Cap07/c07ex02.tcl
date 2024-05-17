# c07ex02.tcl

puts -nonewline "Entre um valor para a variavel <A>: "
flush stdout
set A [gets stdin]

puts -nonewline "Entre um valor para a variavel <B>: "
flush stdout
set B [gets stdin]

set X $A
set A $B
set B $X

puts "Variavel <A> com valor $A"
puts "Variavel <B> com valor $B"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
