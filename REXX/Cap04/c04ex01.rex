/* c04ex01.rex */

call charout, "Entre o 1o. valor numerico: "
pull A

call charout, "Entre o 2o. valor numerico: "
pull B

X = A + B

if (X > 10) then
  say "Resultado = " || X

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
