# c03ex05.jl

using Printf

print("Entre seu nome: ")
nome = readline()

@printf("Olá, %s! Bem-vindo ao estudo de Julia.\n", nome)

println()
print("Pressione <Enter> para encerrar... ")
readline()
