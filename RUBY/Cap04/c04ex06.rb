# c04ex06.rb

#!/usr/bin/env ruby

print "Entre o 1o. valor numerico: "
a = gets.chomp.to_f

print "Entre o 2o. valor numerico: "
b = gets.chomp.to_f

puts
puts "Escolha uma OPCAO de menu:"
puts
puts "[1] - Adicao"
puts "[2] - Subtracao"
puts "[3] - Multiplicacao"
puts "[4] - Divisao"
puts

print "==> "
opcao = gets.chomp.to_i

puts

case opcao
when 1
  puts "Calculo de adicao"
  puts "Resultado: #{a + b}"
when 2
  puts "Calculo de subtracao"
  puts "Resultado: #{a - b}"
when 3
  puts "Calculo de multiplicacao"
  puts "Resultado: #{a * b}"
when 4
  puts "Calculo de divisao"
  if b.zero?
    puts "Resultado: ERRO"
  else
    puts "Resultado: #{a / b}"
  end
else
  puts "Entrada invalida"
  puts "Tente novamente em outro momento"
end

puts
print "Tecle <Enter> para encerrar... "
gets
