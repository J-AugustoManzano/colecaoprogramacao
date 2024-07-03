# c08ex07.py

LIMITE = 10
matriz = {}
topo = 0

def vazia():
  global topo
  if (topo == 0):
    return True
  else:
    return False

def cheia():
  global topo
  if (topo == LIMITE):
    return True
  else:
    return False

def adicionar(elemento):
  global topo
  if (cheia()):
    return False
  else:
    topo = topo + 1
    matriz[topo] = elemento
    return True

def retirar(elemento):
  global topo
  if (vazia()):
    return False
  else:
    elemento[0] = matriz[topo]
    topo = topo - 1
    return True

def empilhar():
  global topo
  x = int(input("Entre um elemento numerico: "))
  print()
  if (adicionar(x)):
    print(f"Elemento {x} inserido na posicao {topo}.")
  else:
    print(f"Impossivel adicionar {x} - pilha cheia.")
  print()

def desempilhar():
  global topo
  if (vazia()):
    print("Impossivel retirar elemento - pilha vazia.")
  else:
    elemento = [0]
    if retirar(elemento):
      print(f"Elemento {elemento[0]} removido do topo da pilha.")
  print()

def mostrar():
  global topo
  if not (vazia()):
    for i in range(topo, 0, -1):
      print(f"Posicao {i:2}: {matriz[i]}")
  else:
    print("Impossivel mostrar - pilha vazia.")
  print()

def criar():
  global topo
  topo = 0
  for i in range(1, LIMITE+1):
    matriz[i] = 0

criar()
opcao = 0
while (opcao != 5):
  print("PROGRAMA: PILHA\n")
  print("[1] - Empilhar")
  print("[2] - Desempilhar")
  print("[3] - Mostrar")
  print("[4] - Criar pilha")
  print("[5] - Sair\n")

  opcao = int(input("Escolha uma opcao: "))
  print()

  if (opcao != 5):
    if (opcao == 1):
      empilhar()
    elif (opcao == 2):
      desempilhar()
    elif (opcao == 3):
      mostrar()
    elif (opcao == 4):
      criar()
