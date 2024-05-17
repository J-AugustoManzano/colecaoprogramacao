# c03ex08.tcl

# Programa exemplo para operações de duas entradas
# com cálculo de adição e apresentação de resultado.

# Entrada de dados

puts -nonewline "Entre o 1o. valor numerico inteiro:"
flush stdout
set A [gets stdin]

puts -nonewline "Entre o 2o. valor numerico inteiro:"
flush stdout
set B [gets stdin]

# Processamento de dados

set X [expr {$A + $B}] ;# Cálculo da adição

# Saída de dados

puts "Resultado = $X"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
