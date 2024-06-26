# c04ex10.jl

print("Entre valor para a variavel <A>: ")
a = parse(Int, readline())

print("Entre valor para a variavel <B>: ")
b = parse(Int, readline())

print("Entre valor para a variavel <X>: ")
x = parse(Int, readline())

if (!(x > 5))
  c = a + b
else
  c = a - b
end

println()
println("Resultado = $c")

println()
print("Tecle <Enter> para encerrar... ")
readline()
