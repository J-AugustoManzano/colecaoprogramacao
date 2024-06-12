# c08ex06.rb

#!/usr/bin/env ruby

numero = []

puts "PESQUISA BINARIA DE numeroS\n\n"

for i in 0..9
  printf "Entre o %2do. numero: ", (i + 1)
  numero[i] = gets.chomp
end

for i in 0..8
  for j in (i + 1)..9
    if (numero[i] > numero[j])
      x = numero[i]
      numero[i] = numero[j]
      numero[j] = x
    end
  end
end

resp = "SIM"
while (resp == "SIM") do
  print "\n"
  printf "Entre o numero a ser pesquisado: "
  pesq = gets.chomp

  comeco = 0
  final = 9
  acha = false
  while (comeco <= final) && (acha == false) do
    meio = ((comeco + final) / 2).to_i
    if (pesq == numero[meio])
      acha = true
    elsif (pesq < numero[meio])
      final = meio - 1
    else
      comeco = meio + 1
    end
  end

  if (acha == true)
    print "\n"
    printf "%s foi localizado na posicao %d\n", pesq, (meio + 1)
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
