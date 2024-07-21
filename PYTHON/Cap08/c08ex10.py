# c08ex10.py

def fibonacci_base(n, x, y):
  if (n == 0):
    return x
  elif (n == 1):
    return y
  else:
    return fibonacci_base(n - 1, y, x + y)

def fibonacci(n):
  return fibonacci_base(n, 0, 1)

for i in range(15):
  print(f"{i:2} - {fibonacci(i)}")

input("\nPressione <Enter> para encerrar... ")
