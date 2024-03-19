/* c07ex04.rex */

call charout, "Qual fatorial: "
pull Limite

call FATORIAL Limite

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
  say "Fatorial = " || FAT
return
