# c04ex06.tcl

puts -nonewline "Entre o 1o. valor numerico: "
flush stdout
set A [gets stdin]

puts -nonewline "Entre o 2o. valor numerico: "
flush stdout
set B [gets stdin]

puts ""
puts "Escolha uma opcao de menu:"
puts ""
puts [subst {\[1\] - Adicao}]
puts [subst {\[2\] - Subtracao}]
puts [subst {\[3\] - Multiplicacao}]
puts [subst {\[4\] - Divisao}]
puts ""

puts -nonewline "==> "
flush stdout
set Opcao [gets stdin]

puts ""
switch $Opcao {
  1 {
    puts "Calculo de adicao"
    puts "Resultado: [format %.2f [expr {$A + $B}]]"
  }
  2 {
    puts "Calculo de subtracao"
    puts "Resultado: [format %.2f [expr {$A - $B}]]"
  }
  3 {
    puts "Calculo de multiplicacao"
    puts "Resultado: [format %.2f [expr {$A * $B}]]"
  }
  4 {
    puts "Calculo de divisao"
    if {$B == 0} {
      puts "Resultado: ERRO"
    } else {
      puts "Resultado: [format %.2f [expr {double($A) / $B}]]"
    }
  }
  default {
    puts "Entrada invalida"
    puts "Tente novamente em outro momento"
  }
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
