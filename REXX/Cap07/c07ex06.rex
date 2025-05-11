/* c07ex06.rex */

call charout, "Qual fatorial: "
pull Limite

Resp = FATORIAL(Limite)

say "Fatorial = " || RESP

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit

FATORIAL:
  arg N
  FAT = 1
  do I = 1 to N
    FAT = FAT * I
  end
return FAT
