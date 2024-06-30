-- c03ex07.lua

frase = "Aprendendo Lua com o Professor Manzano"

print("Frase ......: " .. frase)
print("              " .. string.rep("-", 38))
print("              00000000011111111112222222222333333333")
print("              01234567890123456789012345678901234567")

print()
print("Tamanho ....: " .. #frase .. " caracteres")

palavras = {}
for palavra in string.gmatch(frase, "%w+") do
  table.insert(palavras, palavra)
end

print()
print("Palavra 1 .............: " .. palavras[1])
print("Palavra 2 .............: " .. palavras[2])
print("Palavra 3 .............: " .. palavras[3])
print("Palavra 4 .............: " .. palavras[4])

print()
print("Letra 1 da Palavra 1 ..: " .. palavras[1]:sub(1, 1))
print("Letra 2 da Palavra 1 ..: " .. palavras[1]:sub(2, 2))
print("Letra 3 da Palavra 1 ..: " .. palavras[1]:sub(3, 3))
print("Letra 4 da Palavra 1 ..: " .. palavras[1]:sub(4, 4))

print()
print("A palavra 'Lua' na posicao: " .. string.find(frase, "Lua"))

print()
io.write("Pressione <Enter> para encerrar... ")
io.read()
