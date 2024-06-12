# c08ex01.rb

#!/usr/bin/env ruby

def caractere_especial(entra)
  caractere_especial = "!\@#$%^&*()-_=+[]{}|;:',<>/?`~\""
  caractere_especial.each_char do |caractere|
    return true if entra.include?(caractere)
  end
  return false
end

def valida_inteiro(entra)
  entra.match?(/\A\d+\z/)
end

loop do
  print "Entre um valor numerico inteiro: "
  $numero = gets.chomp
  puts "\n"

  if ($numero.empty?)
    puts "Erro: Tecla <Enter> acionada acidentalmente.\n\n"
  else
    if caractere_especial($numero)
      puts "Erro: Caractere especial nao permitido.\n\n"
    elsif valida_inteiro($numero)
      puts "Entrada valida fornecida: #{$numero}\n"
      break
    else
      puts "Erro: Entre um numero inteiro.\n\n"
    end
  end
end

print "\nTecle <Enter> para encerrar... "
gets
