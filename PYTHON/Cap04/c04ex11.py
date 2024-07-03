# c04ex11.py

n = int(input("Entre um numero inteiro: "))

r4 = n % 4
r5 = n % 5

if (r4 == 0) and (r5 == 0):
  print("Resultado =", n)
else:
  print("Valor nao e divisivel por 4 e 5")

input("\nTecle <Enter> para encerrar... ")
