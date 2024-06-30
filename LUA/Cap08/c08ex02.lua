-- c08ex02.lua

tn = tonumber

function caractere_especial(entra)
  local caractere_especial = "!@#$%^&*()-_=+[]{}|;:',<>/?`~\""
  for i = 1, #caractere_especial do
    if string.find(entra, "%"..caractere_especial:sub(i,i)) then
      return true
    end
  end
  return false
end

function valida_numero(entra)
  local valor = tn(entra)
  return valor ~= nil
end

while true do
  io.write("Entre um valor numerico: ")
  local numero = io.read()
  print()

  if (numero == "") then
    print("Erro: Tecla <Enter> acionada acidentalmente.\n")
  else
    if (caractere_especial(numero)) then
      print("Erro: Caractere especial nao permitido.\n")
    elseif (valida_numero(numero)) then
      print("Entrada valida fornecida: " .. numero .. "\n")
      break
    else
      print("Erro: Entre um numero valido (inteiro ou ponto flutuante).\n")
    end
  end
end

io.write("\nTecle <Enter> para encerrar... ")
io.read()
