-- c04ex05.lua

io.write("Entre com um numero equivalente a um (mes: ")
mes = tonumber(io.read())

if (mes == 1) then
    print("Janeiro")
elseif (mes == 2) then
    print("Fevereiro")
elseif (mes == 3) then
    print("Marco")
elseif (mes == 4) then
    print("Abril")
elseif (mes == 5) then
    print("Maio")
elseif (mes == 6) then
    print("Junho")
elseif (mes == 7) then
    print("Julho")
elseif (mes == 8) then
    print("Agosto")
elseif (mes == 9) then
    print("Setembro")
elseif (mes == 10) then
    print("Outubro")
elseif (mes == 11) then
    print("Novembro")
elseif (mes == 12) then
    print("Dezembro")
else
    print("Valor invalido")
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
