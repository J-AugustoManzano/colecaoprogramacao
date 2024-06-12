# c07ex01.rb

#!/usr/bin/ruby

def rotsoma
  puts "\n"
  puts "Rotina de Adicao"
  puts "\n"
  print "Entre o 1o. valor: "
  a1 = gets.chomp.to_f
  print "Entre o 2o. valor: "
  b1 = gets.chomp.to_f
  puts "\n"
  r1 = a1 + b1
  printf "O resultado da operacao equivale a: %.2f\n", r1
  puts "\n"
end

def rotsubtracao
  puts "\n"
  puts "Rotina de Subtracao"
  puts "\n"
  print "Entre o 1o. valor: "
  a2 = gets.chomp.to_f
  print "Entre o 2o. valor: "
  b2 = gets.chomp.to_f
  puts "\n"
  r2 = a2 - b2
  printf "O resultado da operacao equivale a: %.2f\n", r2
  puts "\n"
end

def rotmultiplicacao
  puts "\n"
  puts "Rotina de Multiplicacao"
  puts "\n"
  print "Entre o 1o. valor: "
  a3 = gets.chomp.to_f
  print "Entre o 2o. valor: "
  b3 = gets.chomp.to_f
  puts "\n"
  r3 = a3 * b3
  printf "O resultado da operacao equivale a: %.2f\n", r3
  puts "\n"
end

def rotdivisao
  puts "\n"
  puts "Rotina de Divisao"
  puts "\n"
  print "Entre o 1o. valor: "
  a4 = gets.chomp.to_f
  print "Entre o 2o. valor: "
  b4 = gets.chomp.to_f
  puts "\n"
  if (b4 == 0)
    puts "O resultado da operacao equivale a: ERRO"
  else
    r4 = a4 / b4
    printf "O resultado da operacao equivale a: %.2f\n", r4
  end
  puts "\n"
end

opcao = 0
while (opcao != 5)
  puts "CALCULADORA - V1"
  puts "\n"
  puts "[1] - Adicao"
  puts "[2] - Subtracao"
  puts "[3] - Multiplicacao"
  puts "[4] - Divisao"
  puts "[5] - Fim de Programa"
  puts "\n"
  print "Escolha uma opcao: "
  opcao = gets.chomp.to_i
  if (opcao != 5)
    case (opcao)
    when 1
      rotsoma
    when 2
      rotsubtracao
    when 3
      rotmultiplicacao
    when 4
      rotdivisao
    else
      puts "\n"
      puts "Opcao invalida - Tente novamente"
      puts "\n"
    end
  end
end
