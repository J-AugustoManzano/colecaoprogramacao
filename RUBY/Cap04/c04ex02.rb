# c04ex02.rb

#!/usr/bin/env ruby

print "Entre o 1o. valor numerico: "
a = gets.chomp.to_i

print "Entre o 2o. valor numerico: "
b = gets.chomp.to_i

if (a > b)
  x = a
  a = b
  b = x
end

printf "Os valores sao: %d e %d.\n", a, b

puts
print "Tecle <Enter> para encerrar... "
gets
