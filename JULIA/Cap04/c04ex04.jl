# c04ex04.jl

print("Entre a 1a. nota .......: ")
n1 = parse(Float64, readline())

print("Entre a 2a. nota .......: ")
n2 = parse(Float64, readline())

print("Entre a 3a. nota .......: ")
n3 = parse(Float64, readline())

print("Entre a 4a. nota .......: ")
n4 = parse(Float64, readline())

md1 = (n1 + n2 + n3 + n4) / 4.0

if (md1 >= 7)
  println()
  println("Aprovado")
  println("Media: $(round(md1, digits=2))")
else
  print("Entre a nota de exame ..: ")
  ne = parse(Float64, readline())
  md2 = (md1 + ne) / 2.0
  if (md2 >= 5)
    println()
    println("Aprovado em exame")
  else
    println()
    println("Reprovado")
  end
  println("Media: $(round(md2, digits=2))")
end

println()
print("Tecle <Enter> para encerrar... ")
readline()
