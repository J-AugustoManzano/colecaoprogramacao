# c03ex07.jl

frase = "Aprendendo Julia com o Professor Manzano"

println("Frase ......: $frase")
println("              " * "-" ^ 40)
println("              0000000001111111111222222222233333333333")
println("              0123456789012345678901234567890123456789")

println()
println("Tamanho ....: $(length(frase)) caracteres")

palavras = split(frase, " ")

println()
println("Palavra 1 .............: $(palavras[1])")
println("Palavra 2 .............: $(palavras[2])")
println("Palavra 3 .............: $(palavras[3])")
println("Palavra 4 .............: $(palavras[4])")

println()
println("Letra 1 da Palavra 1 ..: $(palavras[1][1])")
println("Letra 2 da Palavra 1 ..: $(palavras[1][2])")
println("Letra 3 da Palavra 1 ..: $(palavras[1][3])")
println("Letra 4 da Palavra 1 ..: $(palavras[1][4])")

println()
posicao_julia = findfirst("Julia", frase)[1]
println("A palavra 'Julia' na posicao: $posicao_julia")

println()
print("Pressione <Enter> para encerrar... ")
readline()
