# c08ex05.rb

#!/usr/bin/env ruby

nome = []

puts "PESQUISA SEQUENCIAL DE NOMES\n\n"

for i in 0..9
  printf "Entre o %2do. nome: ", (i + 1)
  nome[i] = gets.chomp
end

resp = "SIM"
while (resp == "SIM")
  print "\n"
  printf "Entre o nome a ser pesquisado: "
  pesq = gets.chomp
  
  i = 1
  acha = false
  while (i <= 10) && (acha == false)
    if (pesq == nome[i - 1])
      acha = true
    else
      i += 1
    end
  end

  if (acha == true)
    print "\n"
    printf "%s foi localizado na posicao %d\n", pesq, i
  else
    print "\n"
    printf "%s nao foi localizado\n", pesq
  end

  print "\n"
  loop do
    printf "Deseja continuar? (SIM/NAO): "
    resposta = gets.chomp.upcase
    if (resposta == "SIM") || (resposta == "NAO")
      resp = resposta
      break
    else
      puts "Informe apenas SIM ou NAO."
      print "\n"
    end
  end
end

print "\n"
printf "Tecle <Enter> para encerrar... "
gets
