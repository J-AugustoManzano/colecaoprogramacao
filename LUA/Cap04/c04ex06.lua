-- c04ex06.lua

io.write("Entre o 1o. valor numerico: ")
a = tonumber(io.read())

io.write("Entre o 2o. valor numerico: ")
b = tonumber(io.read())

print()
print("Escolha uma OPCAO de menu:")
print()
print("[1] - Adicao")
print("[2] - Subtracao")
print("[3] - Multiplicacao")
print("[4] - Divisao")
print()

io.write("==> ")
opcao = tonumber(io.read())

print()

if opcao == 1 then
  print("Calculo de adicao")
  print("Resultado: " .. (a + b))
elseif opcao == 2 then
  print("Calculo de subtracao")
  print("Resultado: " .. (a - b))
elseif opcao == 3 then
  print("Calculo de multiplicacao")
  print("Resultado: " .. (a * b))
elseif opcao == 4 then
  print("Calculo de divisao")
  if b == 0 then
    print("Resultado: ERRO")
  else
    print("Resultado: " .. (a / b))
  end
else
  print("Entrada invalida")
  print("Tente novamente em outro momento")
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
