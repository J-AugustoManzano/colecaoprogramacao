# c03ex05.tcl

puts -nonewline "Entre seu nome: "
flush stdout
set nome [gets stdin]

puts "Ola, $nome! Bem-vindo ao estudo de Tcl.\n"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
