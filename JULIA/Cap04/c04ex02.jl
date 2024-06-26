# c04ex02.jl

print("Entre o 1o. valor numerico: ")
a = parse(Int, readline())

print("Entre o 2o. valor numerico: ")
b = parse(Int, readline())

if (a > b)
  x = a
  a = b
  b = x
end

println("Os valores sao: $a e $b.")

println()
print("Tecle <Enter> para encerrar... ")
readline()
