# c08ex06.py

print("PESQUISA BINARIA DE numero\n")

numero = {}

for i in range(1, 11):
  numero[i] = int(input(f"Entre o {i:2}o. numero: "))

for i in range(1, 10):
  for j in range(i + 1, 11):
    if (numero[i] > numero[j]):
      x = numero[i]
      numero[i] = numero[j]
      numero[j] = x

resp = "SIM"
while (resp == "SIM"):
  print()
  pesq = int(input("Entre o numero a ser pesquisado: "))

  comeco = 1
  final = 10
  acha = False
  while (comeco <= final) and (acha  == False):
    meio = (comeco + final) // 2
    if (pesq == numero[meio]):
      acha = True
    elif (pesq < numero[meio]):
      final = meio - 1
    else:
      comeco = meio + 1

  if (acha == True):
    print()
    print(f"{pesq} foi localizado na posicao {meio}")
  else:
    print()
    print(f"{pesq} nao foi localizado")

  print()
  while True:
    resposta = input("Deseja continuar? (SIM/NAO): ").upper()
    if resposta in ("SIM", "NAO"):
      resp = resposta
      break
    else:
      print("Informe apenas SIM ou NAO.")
      print()

print()
input("Pressione <Enter> para encerrar... ")
