# c08ex09.py

def fibonacci(n):
  if (n == 0):
    return 0
  elif (n == 1):
    return 1
  else:
    return fibonacci(n - 1) + fibonacci(n - 2)

for i in range(15):
  print(f"{i:2} - {fibonacci(i)}")

input("\nPressione <Enter> para encerrar... ")
