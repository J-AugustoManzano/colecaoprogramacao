/* c08ex11.rex */

call charout, "Qual fatorial: "
pull Limite

call FATORIAL Limite Resp
say "Fatorial = " || Resp

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit

FATORIAL: procedure expose Resp
  arg N Resp
  Fat = 1
  do I = 1 to N
    Fat = Fat * I
  end
  Resp = Fat
  return
