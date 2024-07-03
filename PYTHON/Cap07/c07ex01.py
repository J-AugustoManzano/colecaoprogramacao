# c07ex01.py

def rotsoma():
  print()
  print("Rotina de Adicao")
  print()
  a1 = float(input("Entre o 1o. valor: "))
  b1 = float(input("Entre o 2o. valor: "))
  print()
  r1 = a1 + b1
  print(f"O resultado da operacao equivale a: {r1:.2f}")
  print()

def rotsubtracao():
  print()
  print("Rotina de Subtracao")
  print()
  a2 = float(input("Entre o 1o. valor: "))
  b2 = float(input("Entre o 2o. valor: "))
  print()
  r2 = a2 - b2
  print(f"O resultado da operacao equivale a: {r2:.2f}")
  print()

def rotmultiplicacao():
  print()
  print("Rotina de Multiplicacao")
  print()
  a3 = float(input("Entre o 1o. valor: "))
  b3 = float(input("Entre o 2o. valor: "))
  print()
  r3 = a3 * b3
  print(f"O resultado da operacao equivale a: {r3:.2f}")
  print()

def rotdivisao():
  print()
  print("Rotina de Divisao")
  print()
  a4 = float(input("Entre o 1o. valor: "))
  b4 = float(input("Entre o 2o. valor: "))
  print()
  if (b4 == 0):
    print("O resultado da operacao equivale a: ERRO")
  else:
    r4 = a4 / b4
    print(f"O resultado da operacao equivale a: {r4:.2f}")
  print()

opcao = 0
while (opcao != 5):
  print("CALCULADORA - V1")
  print()
  print("[1] - Adicao")
  print("[2] - Subtracao")
  print("[3] - Multiplicacao")
  print("[4] - Divisao")
  print("[5] - Fim de Programa")
  print()
  opcao = int(input("Escolha uma opcao: "))
  if (opcao != 5):
    if (opcao == 1):
      rotsoma()
    elif (opcao == 2):
      rotsubtracao()
    elif (opcao == 3):
      rotmultiplicacao()
    elif (opcao == 4):
      rotdivisao()
    else:
      print()
      print("Opcao invalida - Tente novamente")
      print()
