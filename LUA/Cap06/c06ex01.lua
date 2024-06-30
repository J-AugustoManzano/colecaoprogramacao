-- c06ex01.lua

md = {}
soma = 0

for i = 1, 8 do
  io.write("Entre a media do aluno " .. i .. ": ")
  md[i] = tonumber(io.read())
  soma = soma + md[i]
end

media = soma / 8
print("\nMedia geral: " .. string.format("%.2f", media))

io.write("\nTecle <Enter> para encerrar... ")
io.read()
