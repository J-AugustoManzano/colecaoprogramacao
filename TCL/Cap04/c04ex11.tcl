# c04ex11.tcl

puts -nonewline "Entre um numero inteiro: "
flush stdout
set N [gets stdin]

set R4 [expr {$N % 4}]
set R5 [expr {$N % 5}]

if {[expr {$R4 == 0 && $R5 == 0}]} {
  puts "Resultado = $N"
} else {
  puts "Valor nao e divisivel por 4 e 5"
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
