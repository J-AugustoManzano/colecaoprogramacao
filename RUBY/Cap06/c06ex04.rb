# c06ex04.rb

#!/usr/bin/env ruby

aluno = []

print "Entre a quantidade de elementos da matriz: "
n = gets.chomp.to_i
puts "\n"

for i in 0..(n - 1)
  printf "Entre o %3do. nome: ", i + 1
  aluno << gets.chomp
end

puts "\nForam fornecidos os nomes:\n\n"

for i in 0..(n - 1)
  printf "Nome %3d = %s\n", i + 1, aluno[i]
end

print "\nTecle <Enter> para encerrar... "
gets
