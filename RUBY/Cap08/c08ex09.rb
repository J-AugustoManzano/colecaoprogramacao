# c08ex09.rb

#!/usr/bin/env ruby

def fibonacci(n)
  if (n == 0)
    0
  elsif (n == 1)
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

for i in 0..14
  printf "%2d - %d\n", i, fibonacci(i)
end

print "\nTecle <Enter> para encerrar... "
gets
