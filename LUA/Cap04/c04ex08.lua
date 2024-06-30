-- c04ex08.lua

print("Escolha o tipo de transporte:\n")
print("[M] - Motocicleta")
print("[S] - Scooter")
print()

io.write("==> ")
transp = string.upper(io.read())

print()

if (transp == "M") or (transp == "S") then
  print("Transporte valido.")
else
  print("Transporte invalido.")
end

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
