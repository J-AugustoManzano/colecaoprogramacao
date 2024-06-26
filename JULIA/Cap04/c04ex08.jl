# c04ex08.jl

println("Escolha o tipo de transporte:")
println()
println("[M] - Motocicleta")
println("[S] - Scooter")
println()

print("==> ")
transp = uppercase(readline())

println()

if (transp == "M") || (transp == "S")
  println("Transporte valido.")
else
  println("Transporte invalido.")
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
