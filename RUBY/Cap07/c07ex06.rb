# c07ex06.rb

#!/usr/bin/env ruby

def fatorial(n)
  fat = 1
  for i in 1..n
    fat *= i
  end
  return fat
end

print "Qual fatorial: "
limite = gets.chomp.to_i

print "Fatorial = ", fatorial(limite), "\n"

print "\nPressione <Enter> para encerrar... "
gets
