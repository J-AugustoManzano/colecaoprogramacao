# c07ex01.tcl

proc ROTSOMA {} {
  puts "Rotina de Adicao"
  puts ""
  puts -nonewline "Entre o 1o. valor: "
  flush stdout
  set A1 [gets stdin]
  puts -nonewline "Entre o 2o. valor: "
  flush stdout
  set B1 [gets stdin]
  puts ""
  set R1 [expr {$A1 + $B1}]
  puts "O resultado da operacao equivale a: [format "%.2f" $R1]"
  puts ""
  flush stdout
}

proc ROTSUBTRACAO {} {
  puts "Rotina de Subtracao"
  puts ""
  puts -nonewline "Entre o 1o. valor: "
  flush stdout
  set A2 [gets stdin]
  puts -nonewline "Entre o 2o. valor: "
  flush stdout
  set B2 [gets stdin]
  puts ""
  set R2 [expr {$A2 - $B2}]
  puts "O resultado da operacao equivale a: [format "%.2f" $R2]"
  puts ""
  flush stdout
}

proc ROTMULTIPLICACAO {} {
  puts "Rotina de Multiplicacao"
  puts ""
  puts -nonewline "Entre o 1o. valor: "
  flush stdout
  set A3 [gets stdin]
  puts -nonewline "Entre o 2o. valor: "
  flush stdout
  set B3 [gets stdin]
  puts ""
  set R3 [expr {$A3 * $B3}]
  puts "O resultado da operacao equivale a: [format "%.2f" $R3]"
  puts ""
  flush stdout
}

proc ROTDIVISAO {} {
  puts "Rotina de Divisao"
  puts ""
  puts -nonewline "Entre o 1o. valor: "
  flush stdout
  set A4 [gets stdin]
  puts -nonewline "Entre o 2o. valor: "
  flush stdout
  set B4 [gets stdin]
  puts ""
  if {$B4 == 0} {
    puts "O resultado da operacao equivale a: ERRO"
  } else {
    set R4 [expr {double($A4) / $B4}]
    puts "O resultado da operacao equivale a: [format "%.2f" $R4]"
  }
  puts ""
  flush stdout
}

set OPCAO 0

while {$OPCAO != 5} {
  puts "CALCULADORA - V1"
  puts ""
  puts [subst {\[1\] - Adicao}]
  puts [subst {\[2\] - Subtracao}]
  puts [subst {\[3\] - Multiplicacao}]
  puts [subst {\[4\] - Divisao}]  
  puts [subst {\[5\] - Fim de Programa}]  
  puts ""
  puts -nonewline "Escolha uma opcao: "
  flush stdout
  set OPCAO [gets stdin]
  puts ""
  if {$OPCAO != 5} {
    switch $OPCAO {
      1 {ROTSOMA}
      2 {ROTSUBTRACAO}
      3 {ROTMULTIPLICACAO}
      4 {ROTDIVISAO}
      default {
        puts "\n"
        puts "Opcao invalida - Tente novamente"
        puts "\n"
      }
    }
  }
}
