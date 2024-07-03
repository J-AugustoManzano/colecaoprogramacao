# c04ex10.py

a = float(input("Entre valor para a variavel <A>: "))
b = float(input("Entre valor para a variavel <B>: "))
x = float(input("Entre valor para a variavel <X>: "))

if not (x > 5):
  c = a + b
else:
  c = a - b

print()
print("Resultado =", c)

input("\nTecle <Enter> para encerrar... ")
