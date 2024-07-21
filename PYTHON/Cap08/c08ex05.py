# c08ex05.py

print("PESQUISA SEQUENCIAL DE NOME\n")

nomes = {}

for i in range(1, 11):
  nomes[i] = input(f"Entre o {i:2}o. nome: ")

resp = "SIM"
while (resp == "SIM"):
  print()
  pesq = input("Entre o nome a ser pesqdo: ")

  i = 1
  acha = False
  while (i <= 10) and (acha == False):
    if (pesq == nomes[i]):
      acha = True
    else:
      i += 1

  if (acha == True):
    print()
    print(f"{pesq} foi localizado na posicao {i}")
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
