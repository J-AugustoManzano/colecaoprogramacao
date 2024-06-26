# c03ex08.jl

"""
Programa exemplo para operações de duas entradas
com cálculo de adição e apresentação de resultado
"""

println("ADICAO DE NUMEROS")
println()

# Entrada de dados
print("Entre o 1o. valor numerico inteiro: ")
a = parse(Int, readline())

print("Entre o 2o. valor numerico inteiro: ")
b = parse(Int, readline())

# Processamento de dados
x = a + b # Cálculo da adição

# Saída de dados
println("Resultado = $x")

println()
print("Tecle <Enter> para encerrar... ")
readline()
