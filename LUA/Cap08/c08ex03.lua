-- c08ex03.lua

print("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n")

numeros = {}

for i = 1, 5 do
  io.write("Entre o " .. i .. "o. numero: ")
  numeros[i] = tonumber(io.read("*l"))
end

for i = 1, 4 do
  for j = i + 1, 5 do
    if (numeros[i] > numeros[j]) then
      local x = numeros[i]
      numeros[i] = numeros[j]
      numeros[j] = x
    end
  end
end

print()
for i = 1, 5 do
  print(i .. "o. numero: " .. numeros[i])
end

io.write("\nPressione <Enter> para encerrar... ")
io.read("*l")
