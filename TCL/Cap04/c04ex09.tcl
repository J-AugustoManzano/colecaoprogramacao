# c04ex09.tcl

puts "Classificação esportiva:"
puts ""
puts "Entre '1' se o atleta pontuou na 1a. prova."
puts "Entre '1' se o atleta pontuou na 2a. prova."
puts "Qualquer outro valor se não pontuou."
puts ""

puts -nonewline "Prova 1: "
flush stdout
set P1 [gets stdin]

puts -nonewline "Prova 2: "
flush stdout
set P2 [gets stdin]

puts ""

if {[expr {($P1 == 1 && !($P2 == 1)) || (!($P1 == 1) && $P2 == 1)}]} {
  puts "Atleta participa da terceira prova."
} else {
  puts "Atleta nao participa da terceira prova."
  if {[expr {$P1 == 1 && $P2 == 1}]} {
    puts "Classificado para a final."
  } else {
    puts "Desclassificado da competicao."
  }
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
