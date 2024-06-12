# c05ex07.rb

#!/usr/bin/env ruby

i = 1
begin
  print "Entre um valor numerico: "
  n = gets.chomp.to_i

  r = n * 3

  puts "Resultado = #{r}"
  puts

  i += 1
end while (i <= 5)

puts
print "Tecle <Enter> para encerrar... "
gets
