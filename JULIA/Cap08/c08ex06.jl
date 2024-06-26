# c08ex06.jl

using Printf

numero = zeros(Int, 10)

println("PESQUISA BINARIA DE NUMEROS\n")

for i in 1:10
  print("Entre o ", @sprintf("%2do. ", i), "numero: ")
  numero[i] = parse(Int, readline())
end

for i in 1:9
  for j in (i + 1):10
    if (numero[i] > numero[j])
      x = numero[i]
      numero[i] = numero[j]
      numero[j] = x
    end
  end
end

resp = "SIM"
while (resp == "SIM")
  println()
  print("Entre o numero a ser pesquisado: ")
  pesq = parse(Int, readline())

  comeco = 1
  final = 10
  acha = false
  while (comeco <= final) && (acha == false)
    global meio = div(comeco + final, 2)
    if (pesq == numero[meio])
      acha = true
    elseif (pesq < numero[meio])
      final = meio - 1
    else
      comeco = meio + 1
    end
  end

  if (acha == true)
    println()
    println("$pesq foi localizado na posicao $meio")
  else
    println()
    println("$pesq nao foi localizado")
  end

  println()
  while true
    print("Deseja continuar? (SIM/NAO): ")
    resposta = uppercase(readline())
    if (resposta == "SIM") || (resposta == "NAO")
      global resp = resposta
      break
    else
      println("Informe apenas SIM ou NAO.")
      println()
    end
  end
end

print("\nPressione <Enter> para encerrar... ")
readline()
