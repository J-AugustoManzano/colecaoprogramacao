-- c08ex05.lua

sf = string.format

print("PESQUISA SEQUENCIAL DE nome\n")

nome = {}

for i = 1, 10 do
  io.write(sf("Entre o %2do. nome: ", i))
  nome[i] = io.read()
end

resp = "SIM"
while (resp == "SIM") do
  print()
  io.write("Entre o nome a ser pesquisado: ")
  local pesquisa = io.read()

  local i = 1
  local acha = false
  while (i <= 10 and acha == false) do
    if (pesquisa == nome[i]) then
      acha = true
    else
      i = i + 1
    end
  end

  if (acha == true) then
    print()
    io.write(sf("%s foi localizado na posicao %d\n", pesquisa, i))
  else
    print()
    io.write(sf("%s nao foi localizado\n", pesquisa))
  end

  print()
  while true do
    io.write("Deseja continuar? (SIM/NAO): ")
    local resposta = io.read("*l"):upper()
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
io.read("*l")
