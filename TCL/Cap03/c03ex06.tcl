# c03ex06.tcl

set palavra "COMPUTADOR"

puts "Palavra ........: $palavra"
puts ""
puts "Lado esquerdo ..: [string range $palavra 0 2]"
puts "Centro .........: [string range $palavra 3 6]"
puts "Lado direito ...: [string range $palavra 7 9]"
puts "Reverso ........: [string reverse $palavra]"
puts "Copias .........: [string repeat $palavra 3]"
puts "Nova palavra ...: [string replace $palavra 6 6 "O"]"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin

