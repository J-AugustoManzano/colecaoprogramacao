# c05ex06.jl

global resp = "S"
while (true)
  print("Entre um valor numerico: ")
  n = parse(Int, readline())

  r = n * 3

  println("Resultado = $r")
  println()

  print("Deseja continuar? (S/N): ")
  global resp = readline()
  println()

  if (uppercase(resp) != "S") break end
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
