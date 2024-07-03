# c07ex08.py

def fatorial(n):
  if (n == 0):
    return 1
  else:
    return n * fatorial(n - 1)

print("Qual fatorial: ", end="")
limite = int(input())

print(f"Fatorial = {fatorial(limite)}")

input("\nPressione <Enter> para encerrar... ")
