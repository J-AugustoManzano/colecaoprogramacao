# c03ex02.jl

print("Entre valor do raio: ")
r = parse(Float64, readline())

a = π * r ^ 2

println("Resultado = $(round(a, digits=2))")

println()
print("Tecle <Enter> para encerrar... ")
readline()
