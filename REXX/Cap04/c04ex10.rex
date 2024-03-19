/* c04ex10.rex */

call charout, "Entre valor para a variavel <A>: "
pull A
call charout, "Entre valor para a variavel <B>: "
pull B
call charout, "Entre valor para a variavel <X>: "
pull X

if \ (X > 5) then
  C = A + B
else
  C = A - B

say
say "Resultado = " || C

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
