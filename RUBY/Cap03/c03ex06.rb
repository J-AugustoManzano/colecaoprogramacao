# c03ex06.rb

#!/usr/bin/env ruby

palavra = "COMPUTADOR"

puts "Palavra ........: #{palavra}"
puts
puts "Lado esquerdo ..: #{palavra[0, 3]}"
puts "Centro .........: #{palavra[3, 4]}"
puts "Lado direito ...: #{palavra[-3..-1]}"
puts "Reverso ........: #{palavra.reverse}"
puts "Copias .........: #{palavra * 3}"
puts "Tira pedaco ....: #{palavra[0, 7]}"
puts "Nova palavra ...: #{palavra[0, 6]}O#{palavra[7..-1]}"

print "\nPressione <Enter> para encerrar... "
gets
