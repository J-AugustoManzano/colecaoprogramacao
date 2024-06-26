# c05ex09.jl

global i = 1
while (true)
  print("Entre um valor numerico: ")
  n = parse(Int, readline())

  r = n * 3

  println("Resultado = $r")
  println()

  if (i > 4) break end
  global i += 1
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
