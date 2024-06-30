-- c03ex02.lua

io.write("Entre valor do raio: ")
r = tonumber(io.read())

a = math.pi * r ^ 2

print("Resultado = " .. string.format("%.2f", a))

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
