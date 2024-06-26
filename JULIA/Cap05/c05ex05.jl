# c05ex05.jl

global i = 1
while (true)
  print("Entre um valor numerico: ")
  n = parse(Int, readline())

  r = n * 3

  println("Resultado = $r")
  println()

  global i += 1
  if (i > 5) break end
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
