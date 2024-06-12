# c05ex09.rb

#!/usr/bin/env ruby

i = 1
loop do
  print "Entre um valor numerico: "
  n = gets.chomp.to_i

  r = n * 3

  puts "Resultado = #{r}"
  puts

  break if (i > 4)
  i += 1
end 

puts
print "Tecle <Enter> para encerrar... "
gets
