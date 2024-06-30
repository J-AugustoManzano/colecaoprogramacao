-- c04ex10.lua

io.write("Entre valor para a variavel <A>: ")
a = tonumber(io.read())

io.write("Entre valor para a variavel <B>: ")
b = tonumber(io.read())

io.write("Entre valor para a variavel <X>: ")
x = tonumber(io.read())

if not (x > 5) then
  c = a + b
else
  c = a - b
end

print()
print("Resultado = " .. c)

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
