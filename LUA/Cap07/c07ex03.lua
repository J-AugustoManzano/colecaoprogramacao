-- c07ex03.lua

function troca()
  local x = a
  a = b
  b = x
end

io.write("Entre um valor para a variavel <A>: ")
a = tonumber(io.read())

io.write("Entre um valor para a variavel <B>: ")
b = tonumber(io.read())

troca()

print("\nVariavel <A> com valor " .. a)
print("Variavel <B> com valor " .. b)

io.write("\nTecle <Enter> para encerrar... ")
io.read()
