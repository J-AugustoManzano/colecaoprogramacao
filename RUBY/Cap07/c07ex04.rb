# c07ex04.rb

#!/usr/bin/env ruby

def fatorial(n)
  fat = 1
  for i in 1..n
    fat = fat * i
  end
  puts "Fatorial = #{fat}"
end

print "Qual fatorial: "
limite = gets.chomp.to_i

fatorial(limite)

print "\nTecle <Enter> para encerrar... "
gets 
