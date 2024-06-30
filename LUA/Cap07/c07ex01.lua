-- c07ex01.lua

sf = string.format

function rotsoma()
  print()
  print("Rotina de Adicao")
  print()
  io.write("Entre o 1o. valor: ")
  a1 = tonumber(io.read())
  io.write("Entre o 2o. valor: ")
  b1 = tonumber(io.read())
  print()
  r1 = a1 + b1
  io.write(sf("O resultado da operacao equivale a: %.2f\n", r1))
  print()
end

function rotsubtracao()
  print()
  print("Rotina de Subtracao")
  print()
  io.write("Entre o 1o. valor: ")
  a2 = tonumber(io.read())
  io.write("Entre o 2o. valor: ")
  b2 = tonumber(io.read())
  print()
  r2 = a2 - b2
  io.write(sf("O resultado da operacao equivale a: %.2f\n", r2))
  print()
end

function rotmultiplicacao()
  print()
  print("Rotina de Multiplicacao")
  print()
  io.write("Entre o 1o. valor: ")
  a3 = tonumber(io.read())
  io.write("Entre o 2o. valor: ")
  b3 = tonumber(io.read())
  print()
  r3 = a3 * b3
  io.write(sf("O resultado da operacao equivale a: %.2f\n", r3))
  print()
end

function rotdivisao()
  print()
  print("Rotina de Divisao")
  print()
  io.write("Entre o 1o. valor: ")
  a4 = tonumber(io.read())
  io.write("Entre o 2o. valor: ")
  b4 = tonumber(io.read())
  print()
  if (b4 == 0) then
    print("O resultado da operacao equivale a: ERRO")
  else
    r4 = a4 / b4
    io.write(sf("O resultado da operacao equivale a: %.2f\n", r4))
  end
  print()
end

opcao = 0
while (opcao ~= 5) do
  print("CALCULADORA - V1")
  print()
  print("[1] - Adicao")
  print("[2] - Subtracao")
  print("[3] - Multiplicacao")
  print("[4] - Divisao")
  print("[5] - Fim de Programa")
  print()
  io.write("Escolha uma opcao: ")
  opcao = tonumber(io.read())
  if (opcao ~= 5) then
    if (opcao == 1) then
      rotsoma()
    elseif (opcao == 2) then
      rotsubtracao()
    elseif (opcao == 3) then
      rotmultiplicacao()
    elseif (opcao == 4) then
      rotdivisao()
    else
      print()
      print("Opcao invalida - Tente novamente")
      print()
    end
  end
end
