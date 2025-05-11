/* c07ex07.rex */

call charout, "Informe o 1o. valor: "
pull X

call charout, "Informe o 2o. valor: "
pull Y

if (IGUAL(X, Y) == '.V.') then
  say "Valores sao iguais"
else
  say "Valores sao diferentes"
   
say
call charout, "Tecle <Enter> para encerrar... "
pull

exit  

IGUAL: procedure
  arg A, B
  if (A == B) then
    RESULT = '.V.'
  else
    RESULT = '.F.'
return RESULT
