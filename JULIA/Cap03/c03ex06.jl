# c03ex06.jl

palavra = "COMPUTADOR"

println("Palavra ........: $palavra")
println()
println("Lado esquerdo ..: $(palavra[1:3])")
println("Centro .........: $(palavra[4:7])")
println("Lado direito ...: $(palavra[end-2:end])")
println("Reverso ........: $(reverse(palavra))")
println("Copias .........: $(palavra ^ 3)")
println("Tira pedaco ....: $(palavra[1:7])")
println("Nova palavra ...: $(palavra[1:6])O$(palavra[8:end])")

print("\nPressione <Enter> para encerrar...")
readline()
