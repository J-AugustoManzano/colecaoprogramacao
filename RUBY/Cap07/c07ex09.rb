# c07ex09.rb

#!/usr/bin/env ruby

def fatorial_base(n, p)
  if (n == 0)
    return p
  else
    return fatorial_base(n - 1, n * p)
  end
end


def fatorial(n)
  fatorial_base(n, 1)
end

print "Qual fatorial: "
limite = gets.chomp.to_i

puts "Fatorial = #{fatorial(limite)}"

print "\nPressione <Enter> para encerrar... "
gets
