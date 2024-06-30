-- c03ex01.lua

io.write("Entre o 1o. valor numerico inteiro: ")
a = tonumber(io.read())

io.write("Entre o 2o. valor numerico inteiro: ")
b = tonumber(io.read())

x = a + b

print("Resultado = " .. x)

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
