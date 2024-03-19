/* c07ex05.rex */

call charout, "Qual fatorial: "
pull Limite

Resp = FATORIAL(Limite)

say "Fatorial = " || RESP

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit

FATORIAL: procedure
  arg N
  FAT = 1
  do I = 1 to N
    FAT = FAT * I
  end
return FAT
