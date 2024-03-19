/* c07ex03.rex */

call charout, "Entre um valor para a variavel <A>: "
pull A

call charout, "Entre um valor para a variavel <B>: "
pull B

call TROCA

say
say "Variavel <A> com valor " || A
say "Variavel <B> com valor " || B

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit

TROCA:
  X = A
  A = B
  B = X
return
