/* c07ex02.rex */

call charout, "Entre um valor para a variavel <A>: "
pull A

call charout, "Entre um valor para a variavel <B>: "
pull B

X = A
A = B
B = X

say
say "Variavel <A> com valor " || A
say "Variavel <B> com valor " || B

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
