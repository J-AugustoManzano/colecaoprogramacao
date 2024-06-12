# c06ex01.rb

#!/usr/bin/env ruby

md = Array.new(8)
soma = 0

for i in 0..7
  print "Entre a media do aluno #{i + 1}: "
  md[i] = gets.chomp.to_f
  soma += md[i]
end

media = soma / 8.0
puts "\nMedia geral: #{media.round(2)}"

print "\nTecle <Enter> para encerrar... "
gets
