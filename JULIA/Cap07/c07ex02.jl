# c07ex02.jl

print("Entre um valor para a variavel <A>: ")
a = parse(Int, readline())

print("Entre um valor para a variavel <B>: ")
b = parse(Int, readline())

x = a
a = b 
b = x

println()
println("Variavel <A> com valor $a")
println("Variavel <B> com valor $b")

print("\nTecle <Enter> para encerrar... ")
readline()
