-- c04ex01.lua

io.write("Entre o 1o. valor numerico: ")
a = tonumber(io.read())

io.write("Entre o 2o. valor numerico: ")
b = tonumber(io.read())

x = a + b

if (x > 10) then
  print("Resultado = " .. x)
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
