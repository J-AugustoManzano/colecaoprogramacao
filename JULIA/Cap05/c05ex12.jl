# c05ex12.jl

for i in 1:5  # O incremento é opcional caso seja 1
  print("Entre um valor numerico: ")
  n = parse(Int, readline())

  r = n * 3

  println("Resultado = $r")
  println()
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
