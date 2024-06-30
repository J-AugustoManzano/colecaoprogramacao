-- c05ex12.lua

resp = "S"
::laco::
  io.write("Entre um valor numerico: ")
  n = tonumber(io.read())

  r = n * 3

  print("Resultado = " .. r)
  print()

  io.write("Deseja continuar? (S/N): ")
  resp = io.read():sub(1, 1):upper()

  if (resp:upper() ~= "S") then
    goto fim_laco
  end
  
  print()
  goto laco
::fim_laco::

print("\n")
io.write("Tecle <Enter> para encerrar... ")
io.read()
