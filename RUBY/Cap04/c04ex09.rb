# c04ex09.rb

#!/usr/bin/env ruby

puts "Classificacao esportiva"
puts
puts "Entre '1' se atleta pontuou na 1a. prova"
puts "Entre '1' se atleta pontuou na 2a. prova"
puts "Qualquer outro valor se nao pontuou nas provas"
puts

print "Prova 1: "
p1 = gets.chomp

print "Prova 2: "
p2 = gets.chomp

if (p1 == "1") ^ (p2 == "1")
  puts "Atleta participa da terceira prova."
else
  puts "Atleta nao participa da terceira prova."
  if (p1 == "1") && (p2 == "1")
    puts "Classificado para a final."
  else
    puts "Desclassificado da competicao."
  end
end

puts
print "Tecle <Enter> para encerrar... "
gets
