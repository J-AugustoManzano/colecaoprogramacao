-- c03ex08.lua

--[[
Programa exemplo para operações de duas entradas
com cálculo de adição e apresentação de resultado
--]]

print("ADICAO DE NUMEROS")
print()

-- Entrada de dados
io.write("Entre o 1o. valor numerico inteiro: ")
a = tonumber(io.read())

io.write("Entre o 2o. valor numerico inteiro: ")
b = tonumber(io.read())

-- Processamento de dados
x = a + b -- Cálculo da adição

-- Saída de dados
print("Resultado = " .. x)

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
