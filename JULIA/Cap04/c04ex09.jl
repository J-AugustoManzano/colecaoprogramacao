# c04ex09.jl

println("Classificacao esportiva")
println()
println("Entre '1' se atleta pontuou na 1a. prova")
println("Entre '1' se atleta pontuou na 2a. prova")
println("Qualquer outro valor se nao pontuou nas provas")
println()

print("Prova 1: ")
p1 = readline()

print("Prova 2: ")
p2 = readline()

if (p1 == "1") ⊻ (p2 == "1")
  println("Atleta participa da terceira prova.")
else
  println("Atleta nao participa da terceira prova.")
  if (p1 == "1") && (p2 == "1")
    println("Classificado para a final.")
  else
    println("Desclassificado da competicao.")
  end
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
