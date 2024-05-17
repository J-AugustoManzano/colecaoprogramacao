# c02ex01.tcl

# Operadores binários

puts [expr {5 + 3}]     ;# Saída: 8
puts [expr {10 - 4}]    ;# Saída: 6
puts [expr {2 * 6}]     ;# Saída: 12
puts [expr {10.0 / 3}]  ;# Saída: 3.3333... (quociente real)
puts [expr {10 / 3}]    ;# Saída: 3 (quociente inteiro)
puts [expr {10 % 3}]    ;# Saída: 1 (resto da divisão)

# Operadores unários

puts [expr {0 + 5}]     ;# Saída: 5 (mantém positivo)
puts [expr {0 - 8}]     ;# Saída: -8 (inverte sinal)

# Exponenciação

puts [expr {pow(2, 3)}] ;# Saída: 8 (2 elevado a 3)
