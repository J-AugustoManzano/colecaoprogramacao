-- c05ex10.lua

i = 1
::laco::
  io.write("Entre um valor numerico: ")
  n = tonumber(io.read())

  r = n * 3
  print("Resultado = " .. r)
  print()

  if (i > 4) then
    goto fim_laco
  end

  i = i + 1
  goto laco
::fim_laco::

print()
io.write("Tecle <Enter> para encerrar... ")
io.read()
