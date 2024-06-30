-- c07ex02.lua

io.write("Entre um valor para a variavel <A>: ")
a = tonumber(io.read())

io.write("Entre um valor para a variavel <B>: ")
b = tonumber(io.read())

x = a
a = b
b = x

print("\nVariavel <A> com valor " .. a)
print("Variavel <B> com valor " .. b)

io.write("\nTecle <Enter> para encerrar... ")
io.read()
