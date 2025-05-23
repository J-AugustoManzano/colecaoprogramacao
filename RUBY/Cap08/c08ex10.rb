# c08ex10.rb

#!/usr/bin/env ruby

def fibonacci_base(n, x, y)
  if (n == 0)
    return x
  end
  if (n == 1)
    return y
  end
  if (n >= 2)
    return fibonacci_base(n - 1, y, x + y)
  end
end

def fibonacci(n)
  fibonacci_base(n, 0, 1)
end

for i in 0..14
  printf "%2d - %d\n", i, fibonacci(i)
end

print "\nTecle <Enter> para encerrar... "
gets
