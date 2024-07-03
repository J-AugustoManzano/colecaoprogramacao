# c03ex06.py

palavra = "COMPUTADOR"

print("Palavra ........:", palavra)
print()

print("Lado esquerdo .:", palavra[:3])
print("Centro ........:", palavra[3:7])
print("Lado direito ..:", palavra[-3:])
print("Reverso .......:", palavra[::-1])
print("Copias ........:", palavra * 3)
print("Tira pedaco ...:", palavra[:7])
print("Nova palavra ..:", palavra[:6] + "O" + palavra[7:])

input("\nPressione <Enter> para encerrar...")
