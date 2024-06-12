# c06ex03.rb

#!/usr/bin/env ruby

aluno = Array.new(8) { {} }

puts "Escola de Computacao XPTO"
puts "Cadastro Escolar de Aluno"
puts

for i in 0..7
  puts "Aluno: #{i + 1}"
  puts

  print "Nome ..............: "
  aluno[i]["NOME"] = gets.chomp

  print "Turma .............: " 
  aluno[i]["TURMA"] = gets.chomp

  print "Sala ..............: "
  aluno[i]["SALA"] = gets.chomp.to_i

  puts
  aluno[i]["NOTAS"] = []
  for j in 0..3
    print "Entre a #{j + 1}a. nota ..: "
    aluno[i]["NOTAS"] << gets.chomp.to_f
  end

  puts
end

puts "Escola de Computacao XPTO"
puts "Cadastro Escolar de Aluno"
puts
puts "DADOS DOS ALUNOS"
printf "Aluno "
printf "Nome                           "
printf "Sala "
printf "Turma "
printf "Nota1 "
printf "Nota2 "
printf "Nota3 "
printf "Nota4 "
puts
printf "----- "
printf "------------------------------ "
printf "---- "
printf "----- "
printf "----- "
printf "----- "
printf "----- "
printf "----- "
puts

for i in 0..7
  printf "%5d ", i + 1
  printf "%-30s ", aluno[i]["NOME"]
  printf "%4d ", aluno[i]["SALA"]
  printf "%5s ", aluno[i]["TURMA"]
  aluno[i]["NOTAS"].each { |nota| printf "%5.1f ", nota }
  puts
end

print "\nTecle <Enter> para encerrar... "
gets
