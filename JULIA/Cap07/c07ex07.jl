# c07ex07.jl

function igual(a::Int, b::Int)::Bool
  if (a == b)
    return true
  else
    return false
  end
end

print("Informe o 1o. valor: ")
x = parse(Int, readline())

print("Informe o 2o. valor: ")
y = parse(Int, readline())

if igual(x, y)
  println("Valores sao iguais")
else
  println("Valores sao diferentes")
end

print("\nPressione <Enter> para encerrar... ")
readline()
