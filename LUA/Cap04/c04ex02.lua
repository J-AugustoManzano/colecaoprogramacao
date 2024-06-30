-- c04ex02.lua

io.write("Entre o 1o. valor numerico: ")
a = tonumber(io.read())

io.write("Entre o 2o. valor numerico: ")
b = tonumber(io.read())

if (a > b) then
  x = a
  a = b
  b = x
end

print("Os valores sao: " .. a .. " e " .. b .. ".")

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
