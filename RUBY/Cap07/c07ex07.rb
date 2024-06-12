# c07ex07.rb

#!/usr/bin/env ruby

def igual(a, b)
  if (a == b)
    true
  else
    false
  end
end

print "Informe o 1o. valor: "
x = gets.chomp.to_i

print "Informe o 2o. valor: "
y = gets.chomp.to_i

if igual(x, y)
  puts "Valores sao iguais"
else
  puts "Valores sao diferentes"
end

print "\nPressione <Enter> para encerrar... "
gets
