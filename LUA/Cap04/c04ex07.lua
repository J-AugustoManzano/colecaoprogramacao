-- c04ex07.lua

io.write("Entre um numero inteiro: ")
numero = tonumber(io.read())

if (numero >= 20) and (numero <= 90) then
  print("O numero esta na faixa de 20 a 90.")
else
  print("O numero esta fora da faixa de 20 a 90.")
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
