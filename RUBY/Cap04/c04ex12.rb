# c04ex12.rb

#!/usr/bin/env ruby

print "Entre um numero inteiro: "
n = gets.chomp.to_i

r4 = n % 4
r5 = n % 5

if (r4 == 0) && (r5 == 0)
  puts "Resultado = #{n}"
else
  puts "Valor nao e divisivel por 4 e 5"
end

puts
print "Tecle <Enter> para encerrar... "
gets
