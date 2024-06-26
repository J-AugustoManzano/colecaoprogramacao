# c07ex03.jl

function troca()
  global a, b
  x = a
  a = b 
  b = x
end

print("Entre um valor para a variavel <A>: ")
a = parse(Int, readline())

print("Entre um valor para a variavel <B>: ")
b = parse(Int, readline())

troca()

println("\nVariavel <A> com valor $a")
println("Variavel <B> com valor $b")

print("\nTecle <Enter> para encerrar... ")
readline()
