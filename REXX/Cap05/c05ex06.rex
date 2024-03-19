/* c05ex06.rex */

Resp = "S"
loop

  call charout, "Entre um valor numerico: "
  pull N

  R = N * 3

  say "Resultado = " || R
  say
  call charout, "Deseja continuar? (S/N): "
  pull Resp
  say
  if (upper(Resp) \= "S") then leave
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
