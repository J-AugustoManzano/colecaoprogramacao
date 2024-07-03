# c04ex06.py

a = float(input("Entre o 1o. valor numerico: "))
b = float(input("Entre o 2o. valor numerico: "))

print()
print("Escolha uma OPCAO de menu:")
print()
print("[1] - Adicao")
print("[2] - Subtracao")
print("[3] - Multiplicacao")
print("[4] - Divisao")
print()

opcao = int(input("==> "))

print()

if (opcao == 1):
  print("Calculo de adicao")
  print("Resultado:", (a + b))
elif (opcao == 2):
  print("Calculo de subtracao")
  print("Resultado:", (a - b))
elif (opcao == 3):
  print("Calculo de multiplicacao")
  print("Resultado:", (a * b))
elif (opcao == 4):
  print("Calculo de divisao")
  if (b == 0):
    print("Resultado: ERRO")
  else:
    print("Resultado:", (a / b))
else:
  print("Entrada invalida")
  print("Tente novamente em outro momento")

input("\nTecle <Enter> para encerrar... ")
