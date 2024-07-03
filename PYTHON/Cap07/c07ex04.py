# c07ex04.py

def fatorial(n):
  fat = 1
  for i in range(1, n+1):
    fat = fat * i
  print(f"Fatorial = {fat}")

print("Qual fatorial: ", end="")
limite = int(input())

fatorial(limite)

input("\nTecle <Enter> para encerrar... ")
