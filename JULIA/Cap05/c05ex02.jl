# c05ex02.jl

global resp = "S"
while (uppercase(resp) == "S")
  print("Entre um valor numerico: ")
  n = parse(Int, readline())

  r = n * 3

  println("Resultado = $r")
  println()

  print("Deseja continuar? (S/N): ")
  global resp = readline()

  println()
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
