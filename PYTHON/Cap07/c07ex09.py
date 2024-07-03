# c07ex09.py

def fatorial_base(n, p):
  if (n == 0):
    return p
  else:
    return fatorial_base(n - 1, n * p)

def fatorial(n):
  return fatorial_base(n, 1)

print("Qual fatorial: ", end="")
limite = int(input())

print(f"Fatorial = {fatorial(limite)}")

input("\nPressione <Enter> para encerrar... ")
