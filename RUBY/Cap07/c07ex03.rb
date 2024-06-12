# c07ex03.rb

#!/usr/bin/env ruby

def troca
  x = $a
  $a = $b
  $b = x
end

print "Entre um valor para a variavel <A>: "
$a = gets.chomp.to_i

print "Entre um valor para a variavel <B>: "
$b = gets.chomp.to_i

troca()

puts "\nVariavel <A> com valor #{$a}"
puts "Variavel <B> com valor #{$b}"

print "\nTecle <Enter> para encerrar... "
gets
