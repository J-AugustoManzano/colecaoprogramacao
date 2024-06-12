# c07ex05.rb

#!/usr/bin/env ruby

def fatorial(n, fat)
  for i in 1..n
    fat[0] *= i
  end
end

resp = [1]

print "Qual fatorial: "
limite = gets.chomp.to_i

fatorial(limite, resp)

puts "Fatorial = #{resp[0]}"

print "\nTecle <Enter> para encerrar... "
gets
