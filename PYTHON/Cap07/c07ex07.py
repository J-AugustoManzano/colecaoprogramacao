# c07ex07.py

def igual(a, b):
  if (a == b):
    return True
  else:
    return False

print("Informe o 1o. valor: ", end="")
x = float(input())

print("Informe o 2o. valor: ", end="")
y = float(input())

if (igual(x, y)):
  print("Valores sao iguais")
else:
  print("Valores sao diferentes")

input("\nPressione <Enter> para encerrar... ")
