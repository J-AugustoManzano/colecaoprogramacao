# c07ex04.jl

function fatorial(n::Int)
  fat = 1
  for i in 1:n
    fat *= i
  end
  println("Fatorial = $fat")
end

print("Qual fatorial: ")
limite = parse(Int, readline())

fatorial(limite)

print("\nTecle <Enter> para encerrar... ")
readline()
