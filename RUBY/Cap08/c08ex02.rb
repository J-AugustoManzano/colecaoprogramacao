# c08ex02.rb

#!/usr/bin/env ruby

def caractere_especial(entra)
  caractere_especial = "!\@#$%^&*()-_=+[]{}|;:',<>/?`~\""
  caractere_especial.each_char do |caractere|
    return true if (entra.include?(caractere))
  end
  false
end

def valida_numero(entra)
  entra.match?(/^[+-]?(\d+(\.\d*)?|\.\d+)$/)
end

loop do
  print "Entre um valor numerico: "
  $numero = gets.chomp
  puts "\n"

  if ($numero.empty?)
    puts "Erro: Tecla <Enter> acionada acidentalmente.\n\n"
  else
    if caractere_especial($numero)
      puts "Erro: Caractere especial nao permitido.\n\n"
    elsif valida_numero($numero)
      puts "Entrada valida fornecida: #{$numero}\n"
      break
    else
      puts "Erro: Entre um numero valido.\n\n"
    end
  end
end

print "\nPressione <Enter> para encerrar... "
gets
