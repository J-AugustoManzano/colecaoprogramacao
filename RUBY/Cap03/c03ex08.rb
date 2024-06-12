# c03ex08.rb

#!/usr/bin/env ruby

=begin
Programa exemplo para operações de duas entradas
com cálculo de adição e apresentação de resultado
=end

puts "ADICAO DE NUMEROS"
puts

# Entrada de dados
print "Entre o 1o. valor numérico inteiro: "
a = gets.chomp.to_i

print "Entre o 2o. valor numérico inteiro: "
b = gets.chomp.to_i

# Processamento de dados
x = a + b # Cálculo da adição

# Saída de dados
puts "Resultado = #{x}"

puts
print "Tecle <Enter> para encerrar... "
gets
