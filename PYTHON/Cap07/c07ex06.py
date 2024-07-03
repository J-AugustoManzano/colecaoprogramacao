# c07ex06.py

def fatorial(n):
  fat = 1
  for i in range(1, n+1):
    fat = fat * i
  return fat

print("Qual fatorial: ", end="")
limite = int(input())

print(f"Fatorial = {fatorial(limite)}")

input("\nTecle <Enter> para encerrar... ")
