-- c08ex04.lua

print("CLASSIFICACAO DE NOMES (DECRESCENTE)\n")

local nomes = {}

for i = 1, 5 do
  io.write("Entre o " .. i .. "o. nome: ")
  nomes[i] = io.read("*l")
end

for i = 1, 4 do
  for j = i + 1, 5 do
    if nomes[i] < nomes[j] then
      local x = nomes[i]
      nomes[i] = nomes[j]
      nomes[j] = x
    end
  end
end

print()
for i = 1, 5 do
  print(i .. "o. nome: " .. nomes[i])
end

io.write("\nPressione <Enter> para encerrar... ")
io.read("*l")
