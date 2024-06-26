# c04ex01.jl

print("Entre o 1o. valor numerico: ")
a = parse(Int, readline())

print("Entre o 2o. valor numerico: ")
b = parse(Int, readline())

x = a + b

if (x > 10)
  println("Resultado = $x")
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
