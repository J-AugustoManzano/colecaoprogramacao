# c04ex03.jl

print("Entre o 1o. valor numerico: ")
a = parse(Int, readline())

print("Entre o 2o. valor numerico: ")
b = parse(Int, readline())

x = a + b

if (x >= 10)
  r = x + 5
else
  r = x - 7
end

println("Resultado = $r")

println()
print("Tecle <Enter> para encerrar... ")
readline()
