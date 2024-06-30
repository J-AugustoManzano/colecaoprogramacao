-- c03ex03.lua

io.write("Entre quantidade de horas trabalhadas ..: ")
ht = tonumber(io.read())

io.write("Entre valor do salario-hora ............: ")
vh = tonumber(io.read())

io.write("Entre valor do percentual de desconto ..: ")
pd = tonumber(io.read())

sb = ht * vh
td = (pd / 100) * sb
sl = sb - td

print("\nSalario Bruto ....: " .. string.format("%.2f", sb))
print("Salario Liquido ..: " .. string.format("%.2f", sl))

io.write("\nTecle <Enter> para encerrar... ")
io.read()
