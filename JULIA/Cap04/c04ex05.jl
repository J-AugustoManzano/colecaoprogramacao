# c04ex05.jl

print("Entre com um numero equivalente a um mes: ")
mes = parse(Int, readline())

println()

if (mes == 1)
  resultado = "Janeiro"
elseif (mes == 2)
  resultado = "Fevereiro" 
elseif (mes == 3)
  resultado = "Marco"
elseif (mes == 4)
  resultado = "Abril"
elseif (mes == 5)
  resultado = "Maio"
elseif (mes == 6)
  resultado = "Junho"
elseif (mes == 7)
  resultado = "Julho"
elseif (mes == 8)
  resultado = "Agosto"
elseif (mes == 9)
  resultado = "Setembro"
elseif (mes == 10)
  resultado = "Outubro"
elseif (mes == 11)
  resultado = "Novembro"
elseif (mes == 12)
  resultado = "Dezembro"
else
  resultado = "Valor invalido"
end

println(resultado)

println()
print("Tecle <Enter> para encerrar... ")
readline()
