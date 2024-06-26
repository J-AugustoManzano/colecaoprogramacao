# c03ex03.jl

print("Entre quantidade de horas trabalhadas ..: ")
ht = parse(Float64, readline())

print("Entre valor do salario-hora ............: ")
vh = parse(Float64, readline())

print("Entre valor do percentual de desconto ..: ")
pd = parse(Float64, readline())

sb = ht * vh
td = (pd / 100.0) * sb

sl = sb - td

println("\nSalario Bruto ....: $(round(sb, digits=2))")
println("Salario Liquido ..: $(round(sl, digits=2))")

print("\nTecle <Enter> para encerrar... ")
readline()
