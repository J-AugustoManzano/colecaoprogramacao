/* c04ex03.rex */

call charout, "Entre o 1o. valor numerico: "
pull A

call charout, "Entre o 2o. valor numerico: "
pull B

X = A + B

if (X >= 10) then
  R = X + 5
else
  R = X - 7

say "Resultado = " || R

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
