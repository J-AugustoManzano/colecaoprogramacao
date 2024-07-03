# c03ex07.py

frase = "Aprendendo Python com o Professor Manzano"

print("Frase ......:", frase)
print("              " + "-" * 41)
print("              00000000011111111112222222222333333333334")
print("              01234567890123456789012345678901234567890")

print()
print("Tamanho ...:", len(frase), "caracteres")

palavras = frase.split()

print()
print("Palavra 1 ............:", palavras[0])
print("Palavra 2 ............:", palavras[1])
print("Palavra 3 ............:", palavras[2])
print("Palavra 4 ............:", palavras[3])

print()
print("Letra 1 da Palavra 1 .:", palavras[0][0])
print("Letra 2 da Palavra 1 .:", palavras[0][1])
print("Letra 3 da Palavra 1 .:", palavras[0][2])
print("Letra 4 da Palavra 1 .:", palavras[0][3])

print()
print("A palavra 'Python' na posicao:", frase.find("Python") + 1)

input("\nPressione <Enter> para encerrar... ")
