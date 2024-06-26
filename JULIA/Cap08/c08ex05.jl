# c08ex05.jl

using Printf

nomes = Array{String}(undef, 10)

println("PESQUISA SEQUENCIAL DE NOMES\n")

for i in 1:10
  print("Entre o ", @sprintf("%2d", i), "o. nome: ")
  nomes[i] = chomp(readline())
end

resp = "SIM"
while (resp == "SIM")
  println()
  print("Entre o nome a ser pesquisado: ")
  pesq = chomp(readline())

  i = 1
  acha = false
  while (i <= 10) && (acha == false)
    if pesq == nomes[i]
      acha = true
    else
      i += 1
    end
  end

  if (acha == true)
    println()
    println("$pesq foi localizado na posicao $i")
  else
    println()
    println("$pesq nao foi localizado")
  end

  println()
  while (true)
    print("Deseja continuar? (SIM/NAO): ")
    resposta = uppercase(chomp(readline()))
    if (resposta == "SIM") || (resposta == "NAO")
      global resp = resposta
      break
    else
      println("Informe apenas SIM ou NAO.")
      println()
    end
  end
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
