# c05ex10.jl

global resp = "S"
while (true)
  print("Entre um valor numerico: ")
  n = parse(Int, readline())

  r = n * 3

  println("Resultado = $r")
  println()

  print("Deseja continuar? (S/N): ")
  global resp = readline()

  if (uppercase(resp) != "S") break end
  println()
end

println("\n")
print("Tecle <Enter> para encerrar... ")
readline()
