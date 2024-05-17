# c07ex03.tcl

proc TROCA {} {
  global A B
  set X $A
  set A $B
  set B $X
}

puts -nonewline "Entre um valor para a variavel <A>: "
flush stdout
set A [gets stdin]

puts -nonewline "Entre um valor para a variavel <B>: "
flush stdout
set B [gets stdin]

TROCA

puts ""
puts "Variavel <A> com valor $A"
puts "Variavel <B> com valor $B"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
