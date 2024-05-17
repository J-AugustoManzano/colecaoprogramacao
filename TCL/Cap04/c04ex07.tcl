# c04ex07.tcl

puts -nonewline "Entre um numero inteiro: "
flush stdout
set Numero [gets stdin]

if {[expr {$Numero >= 20 && $Numero <= 90}]} {
  puts "O numero esta na faixa de 20 a 90."
} else {
  puts "O numero esta fora da faixa de 20 a 90."
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
