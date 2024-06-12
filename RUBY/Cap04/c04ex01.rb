# c04ex01.rb

#!/usr/bin/env ruby

print "Entre o 1o. valor numerico: "
a = gets.chomp.to_i

print "Entre o 2o. valor numerico: "
b = gets.chomp.to_i

x = a + b

if (x > 10)
  puts "Resultado = #{x}"
end

puts
print "Tecle <Enter> para encerrar... "
gets
