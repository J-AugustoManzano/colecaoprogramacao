# c05ex11.rb

#!/usr/bin/env ruby

for i in 1.step(by: 1, to: 5)
  print "Entre um valor numerico: "
  n = gets.chomp.to_i

  r = n * 3

  puts "Resultado = #{r}"
  puts
end

puts
print "Tecle <Enter> para encerrar... "
gets
