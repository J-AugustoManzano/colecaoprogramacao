# c07ex05.py

def fatorial(n, fat):
  for i in range(1, n+1):
    fat[0] = fat[0] * i

resp = [1]

print("Qual fatorial: ", end="")
limite = int(input())

fatorial(limite, resp)

print(f"Fatorial = {resp[0]}")

input("\nTecle <Enter> para encerrar... ")
