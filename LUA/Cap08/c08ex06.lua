-- c08ex06.lua

sf = string.format

print("PESQUISA BINARIA DE NUMEROS\n")

numero = {}

for i = 1, 10 do
  io.write(string.format("Entre o %2do. numero: ", i))
  numero[i] = io.read()
end

for i = 1, 9 do
  for j = i + 1, 10 do
    if (tonumber(numero[i]) > tonumber(numero[j])) then
      local x = numero[i]
      numero[i] = numero[j]
      numero[j] = x
    end
  end
end

resp = "SIM"
while (resp == "SIM") do
  print()
  io.write("Entre o numero a ser pesquisado: ")
  pesq = io.read()

  comeco = 1
  final = 10
  acha = false
  while (comeco <= final and acha == false) do
    meio = math.floor((comeco + final) / 2)
    if (pesq == numero[meio]) then
      acha = true
    elseif (pesq < numero[meio]) then
      final = meio - 1
    else
      comeco = meio + 1
    end
  end

  if (acha == true) then
    print()
    io.write(sf("%s foi localizado na posicao %d\n", pesq, meio))
  else
    print()
    io.write(sf("%s nao foi localizado\n", pesq))
  end

  print()
  while true do
    io.write("Deseja continuar? (SIM/NAO): ")
    local resposta = io.read():upper()
    if resposta == "SIM" or resposta == "NAO" then
      resp = resposta
      break
    else
      print("Informe apenas SIM ou NAO.")
      print()
    end
  end
end

print()
io.write("Pressione <Enter> para encerrar... ")
io.read()
