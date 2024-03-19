/* c03ex01.rex */

call charout, "Entre o 1o. valor numerico inteiro: "
pull A

call charout, "Entre o 2o. valor numerico inteiro: "
pull B

X = trunc(A) + trunc(B)

say "Resultado = " X

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
