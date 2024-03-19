/* c03ex02.rex */

PI = 3.14159265

call charout, "Entre valor do raio: "
pull R

A = PI * R ** 2

say "Resultado = " A

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
