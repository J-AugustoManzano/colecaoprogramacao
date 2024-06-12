# c03ex07.rb

#!/usr/bin/env ruby

frase = "Aprendendo RUBY com o Professor Manzano"

puts "Frase ......: #{frase}"
puts "              " + "-" * 39
puts "              000000000111111111122222222223333333333"
puts "              012345678901234567890123456789012345678"

puts
puts "Tamanho ....: #{frase.length} caracteres"

palavras = frase.split(/\s+/)

puts
puts "Palavra 1 .............: #{palavras[0]}"
puts "Palavra 2 .............: #{palavras[1]}"
puts "Palavra 3 .............: #{palavras[2]}"
puts "Palavra 4 .............: #{palavras[3]}"

puts
puts "Letra 1 da Palavra 1 ..: #{palavras[0][0]}"
puts "Letra 2 da Palavra 1 ..: #{palavras[0][1]}"
puts "Letra 3 da Palavra 1 ..: #{palavras[0][2]}"
puts "Letra 4 da Palavra 1 ..: #{palavras[0][3]}"

puts
puts "A palavra 'RUBY' na posicao: #{frase.index('RUBY') + 1}"

puts
print "Pressione <Enter> para encerrar... "
gets
