/* c05ex04.rex */

Resp = "S"
do until (upper(Resp) \= "S")

  call charout, "Entre um valor numerico: "
  pull N

  R = N * 3

  say "Resultado = " || R
  say
  call charout, "Deseja continuar? (S/N): "
  pull Resp
  say
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
