-- c03ex06.lua

palavra = "COMPUTADOR"

print("Palavra ........: " .. palavra)
print()
print("Lado esquerdo ..: " .. palavra:sub(1, 3))
print("Centro .........: " .. palavra:sub(4, 7))
print("Lado direito ...: " .. palavra:sub(-3))
print("Reverso ........: " .. string.reverse(palavra))
print("Copias .........: " .. palavra .. palavra .. palavra)
print("Tira pedaco ....: " .. palavra:sub(1, 7))
print("Nova palavra ...: " .. palavra:sub(1, 6) .. "O" .. palavra:sub(8))

io.write("\nPressione <Enter> para encerrar... ")
io.read()
