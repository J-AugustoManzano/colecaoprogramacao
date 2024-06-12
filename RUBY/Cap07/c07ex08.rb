# c07ex08.rb

#!/usr/bin/env ruby

def fatorial(n)
  if (n == 0)
    1
  else
    n * fatorial(n - 1)
  end
end

print "Qual fatorial: "
limite = gets.chomp.to_i

puts "Fatorial = #{fatorial(limite)}"

print "\nPressione <Enter> para encerrar... "
gets
