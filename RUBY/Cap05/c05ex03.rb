# c05ex03.rb

#!/usr/bin/env ruby

i = 1
until (i > 5)
  print "Entre um valor numerico: "
  n = gets.chomp.to_i

  r = n * 3

  puts "Resultado = #{r}"
  puts

  i += 1
end

puts
print "Tecle <Enter> para encerrar... "
gets
