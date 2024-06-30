-- c04ex11.lua

io.write("Entre um numero inteiro: ")
n = tonumber(io.read())

r4 = n % 4
r5 = n % 5

if (r4 == 0) and (r5 == 0) then
  print("Resultado = " .. n)
else
  print("Valor nao e divisivel por 4 e 5")
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
