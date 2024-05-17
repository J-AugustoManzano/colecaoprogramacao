# c03ex07.tcl

set frase "Aprendendo Tcl com o Professor Manzano"
array set palavras {}

puts "Frase ......: $frase"
puts "              --------------------------------------"
puts "              00000000011111111112222222222333333333"
puts "              01234567890123456789012345678901234567"
puts ""

puts "Tamanho ....: [string length $frase] caracteres"
puts ""

scan $frase "%s %s %s %s" palavras(0) palavras(1) palavras(2) palavras(3)

puts "Palavra 1 .............: $palavras(0)"
puts "Palavra 2 .............: $palavras(1)"
puts "Palavra 3 .............: $palavras(2)"
puts "Palavra 4 .............: $palavras(3)"
puts ""

puts "Letra 1 da Palavra 1 ..: [string index $palavras(0) 0]"
puts "Letra 2 da Palavra 1 ..: [string index $palavras(0) 1]"
puts "Letra 3 da Palavra 1 ..: [string index $palavras(0) 2]"
puts "Letra 4 da Palavra 1 ..: [string index $palavras(0) 3]"
puts ""

set pos [string first "Tcl" $frase]
puts "A palavra 'Tcl' na posicao: [expr {$pos + 1}]"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
