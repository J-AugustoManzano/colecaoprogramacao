# c03ex04.jl

using Printf

print("Entre quantidade de horas trabalhadas ..: ")
ht = parse(Float64, readline())

print("Entre valor do salario-hora ............: ")
vh = parse(Float64, readline())

print("Entre valor do percentual de desconto ..: ")
pd = parse(Float64, readline())

sb = ht * vh
td = (pd / 100.0) * sb
sl = sb - td

@printf("\nSalario Bruto ....: %8.2f\n", sb)
@printf("Salario Liquido ..: %8.2f\n", sl)

print("\nTecle <Enter> para encerrar... ")
readline()
