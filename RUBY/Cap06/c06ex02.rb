# c06ex02.rb

#!/usr/bin/env ruby

notas = Array.new(8) { Array.new(4) }

for i in 0..7
  print "Entre as notas do aluno #{i + 1}:\n"
  for j in 0..3
    print "Nota #{j + 1}: "
    notas[i][j] = gets.chomp.to_f
  end
  puts
end

puts "\nRELATORIO DE NOTAS\n"
puts "\nAluno Nota1 Nota2 Nota3 Nota4"
puts "----- ----- ----- ----- -----"
for i in 0..7
  printf "%5d ", i + 1
  for j in 0..3
    printf "%5.1f ", notas[i][j]
  end
  puts
end

print "\nTecle <Enter> para encerrar..."
gets
