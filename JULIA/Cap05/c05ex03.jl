# c05ex03.jl

global i = 1
while (!(i > 5))
  print("Entre um valor numerico: ")
  n = parse(Int, readline())

  r = n * 3

  println("Resultado = $r")
  println()

  global i += 1
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
