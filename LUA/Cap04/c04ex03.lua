-- c04ex03.lua

io.write("Entre o 1o. valor numerico: ")
a = tonumber(io.read())

io.write("Entre o 2o. valor numerico: ")
b = tonumber(io.read())

x = a + b

if (x >= 10) then
  r = x + 5
else
  r = x - 7
end

print("Resultado = " .. r)

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
